import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart';
import 'package:http/retry.dart';

/// Override this in main() to provide a GraphQLClient.
final bccmGraphQLProvider = Provider<GraphQLClient>((ref) {
  throw UnimplementedError("bccmGraphQLProvider is not overriden. Please override it in main().");
});

/// How long to wait for the API to *start* answering.
///
/// Deliberately much shorter than [_kBodyTimeout]: the API does no per-query
/// work worth waiting on, so headers that have not arrived by now are usually
/// never arriving — a stalled connection rather than a slow one. Being offline
/// outright does not depend on this at all; the socket fails immediately with
/// no route to host.
const _kConnectTimeout = Duration(seconds: 10);

/// How long to wait between chunks once the API has started answering.
///
/// Generous on purpose: by this point the server is known to be reachable, and
/// a large response over a bad connection deserves the patience.
const _kBodyTimeout = Duration(seconds: 30);

/// Builds the client used to talk to the API.
///
/// The wiring lives here rather than in each app because the order of the links
/// and where the request deadline sits relative to them is what decides whether
/// a timed-out request can corrupt the one that follows it — see
/// [_TimeoutClient]. Callers supply only what genuinely differs between them:
/// the endpoint, how to get a token, and the header values.
///
/// [registerDispose] is required rather than optional so that no caller can
/// quietly leak the connection pool: pass `ref.onDispose`. Every rebuild of the
/// owning provider builds a fresh [Client], and nothing else closes the old one.
GraphQLClient createBccmGraphQLClient({
  required String endpoint,
  required Future<String?> Function() getToken,
  required Map<String, String> Function() buildHeaders,
  required void Function(void Function() callback) registerDispose,
  Duration connectTimeout = _kConnectTimeout,
  Duration bodyTimeout = _kBodyTimeout,
  Client? inner,
}) {
  final httpLink = HttpLink(
    endpoint,
    httpClient: _TimeoutClient(
      RetryClient(
        _HeaderClient(inner ?? Client(), buildHeaders),
        retries: 1,
        when: (response) => response.statusCode == 500 || response.statusCode == 429,
      ),
      connectTimeout: connectTimeout,
      bodyTimeout: bodyTimeout,
    ),
  );

  final client = GraphQLClient(
    cache: GraphQLCache(),
    // Must stay null: the deadline belongs to _TimeoutClient. See its docs.
    queryRequestTimeout: null,
    defaultPolicies: DefaultPolicies(
      query: Policies(cacheReread: CacheRereadPolicy.ignoreAll, fetch: FetchPolicy.networkOnly),
    ),
    link: AuthLink(getToken: getToken).concat(httpLink),
  );

  // Reaches HttpLink through the link chain, which closes the http client.
  registerDispose(() => client.link.dispose());

  return client;
}

/// Owns the request deadline, in place of graphql's `queryRequestTimeout`.
///
/// That option (5s by default) wrapped the *whole link chain* in
/// `Stream.timeout`, which does not cancel its source when it fires. So a
/// response arriving after the timeout was still forwarded to `QueryManager`,
/// whose `onData` handler is a bare `completer.complete` — completing a
/// completer the timeout had already completed with an error, throwing
/// `Bad state: Future already completed` from inside stream dispatch where
/// nothing could catch it.
///
/// Timing out here cannot race that way: the link's stream ends with a single
/// error event instead of an error followed by data.
///
/// The two deadlines are separate because they answer different questions.
/// [connectTimeout] bounds `send()`, which resolves when the response headers
/// arrive — "is the server answering at all". [bodyTimeout] is an *idle*
/// timeout on the body, which `HttpLink` drains only after `send()` resolves,
/// so without it a response that stalls mid-body would hang forever.
///
/// Neither cancels the underlying request; they bound how long we wait, not
/// how long the socket lives. The platform's own timeout collects it after us.
class _TimeoutClient extends BaseClient {
  _TimeoutClient(this._inner, {required this.connectTimeout, required this.bodyTimeout});

  final Client _inner;
  final Duration connectTimeout;
  final Duration bodyTimeout;

  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final response = await _inner.send(request).timeout(connectTimeout);
    return StreamedResponse(
      response.stream.timeout(bodyTimeout),
      response.statusCode,
      contentLength: response.contentLength,
      request: response.request,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
    );
  }

  @override
  void close() => _inner.close();
}

/// Applies [BccmGraphqlHeaders] per request rather than through
/// `HttpLink.defaultHeaders`.
///
/// Header values must never be part of the client's identity. Baking them in
/// makes every change to one a reason to rebuild the client, and a rebuild
/// discards the [GraphQLCache] — so queries re-run and hand their callers fresh
/// results for what should have been an unrelated change. Anything that varies
/// while the app runs — feature flags, settings, session ids — therefore has to
/// be read at send time.
class _HeaderClient extends BaseClient {
  _HeaderClient(this._inner, this._buildHeaders);

  final Client _inner;
  final Map<String, String> Function() _buildHeaders;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers.addAll(_buildHeaders());
    return _inner.send(request);
  }

  // BaseClient.close() is a no-op, so without this the inner client outlives
  // the RetryClient/HttpLink that wraps it.
  @override
  void close() => _inner.close();
}

class BccmGraphqlHeaders {
  BccmGraphqlHeaders({
    required this.acceptLanguage,
    required this.acceptAudioLanguage,
    required this.acceptSubtitleLanguage,
    required this.application,
    required this.applicationVersion,
    required this.featureFlags,
    required this.extraUsergroups,
    required this.isTablet,
    required this.os,
    required this.osVersion,
    required this.onlyPreferredLanguagesContent,
    this.sessionId,
    this.searchSessionId,
  });

  final List<String> acceptLanguage;
  final List<String> acceptAudioLanguage;
  final List<String> acceptSubtitleLanguage;
  final String application;
  final String applicationVersion;
  final List<String>? featureFlags;
  final List<String> extraUsergroups;
  final bool isTablet;
  final String os;
  final String osVersion;
  final bool? onlyPreferredLanguagesContent;
  final String? sessionId;
  final String? searchSessionId;

  Map<String, String> toMap() {
    return {
      'Accept-Language': acceptLanguage.join(','),
      'X-Accept-Audio-Language': acceptAudioLanguage.join(','),
      'X-Accept-Subtitle-Language': acceptSubtitleLanguage.join(','),
      'X-Application': application,
      'X-Application-Version': applicationVersion,
      'X-Is-Tablet': isTablet ? 'true' : 'false',
      'X-OS': os,
      'X-OS-Version': osVersion,
      'X-Only-Preferred-Languages-Content': onlyPreferredLanguagesContent == true ? 'true' : 'false',
      if (featureFlags?.isNotEmpty == true) 'X-Feature-Flags': featureFlags!.join(','),
      if (extraUsergroups.isNotEmpty) 'x-explicit-roles': extraUsergroups.join(','),
      'X-Session-ID': ?sessionId,
      'X-Search-Session-ID': ?searchSessionId,
    };
  }
}
