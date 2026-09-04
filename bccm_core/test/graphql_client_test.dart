import 'dart:async';
import 'dart:convert';

import 'package:bccm_core/platform.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart' as http;

const _endpoint = 'https://api.example.invalid/query';

/// Production-shaped deadlines, usable because fake time costs nothing.
const _connect = Duration(seconds: 10);
const _body = Duration(seconds: 30);

/// Long enough that both deadlines have expired and the late response has
/// landed, so the test has given the race every chance to happen.
const _wellPastEveryDeadline = Duration(minutes: 2);

/// Deadlines for the tests that cannot use fake time (see the group comment).
/// Kept an order of magnitude apart so ordering never depends on machine load.
const _realConnect = Duration(milliseconds: 100);
const _realBody = Duration(seconds: 2);

final _helloQuery = gql('query Hello { hello }');

void main() {
  // These use fake time: the response never arrives, so nothing in the chain
  // needs a real timer to settle.
  group('createBccmGraphQLClient, in fake time', () {
    test('a response arriving after the connect deadline does not surface as an unhandled error', () {
      fakeAsync((async) {
        QueryResult<Object?>? result;
        final unhandled = <Object>[];

        runZonedGuarded(
          () {
            final client = _client(inner: _SlowSendClient(const Duration(minutes: 1)));
            client.query(QueryOptions(document: _helloQuery)).then((r) => result = r);
          },
          (error, stack) => unhandled.add(error),
        );

        // The crash never happened when the query completed. graphql's
        // Stream.timeout completed the completer with an error at the deadline
        // and the query returned normally; it was the real response landing
        // afterwards that completed the same completer a second time. So
        // elapsing past the response is the assertion, not the query itself.
        async.elapse(_wellPastEveryDeadline);

        expect(unhandled, isEmpty, reason: 'a late response must not throw "Future already completed"');
        expect(result?.hasException, isTrue);
        expect(result?.exception?.linkException?.originalException, isA<TimeoutException>());
      });
    });

    test('the link emits exactly one event when a request times out', () {
      fakeAsync((async) {
        final client = _client(inner: _SlowSendClient(const Duration(minutes: 1)));

        final events = <String>[];
        client.link.request(Request(operation: Operation(document: _helloQuery))).listen(
              (_) => events.add('data'),
              onError: (Object _) => events.add('error'),
              onDone: () => events.add('done'),
            );
        async.elapse(_wellPastEveryDeadline);

        // An error followed by a late data event is precisely what
        // double-completed QueryManager's completer. One terminal event is the
        // invariant that makes that impossible, so assert on the count and not
        // just the outcome.
        expect(events.where((e) => e != 'done'), ['error']);
      });
    });
  });

  // These need real timers. Anything that reaches `http.Response.fromStream`
  // goes through `ByteStream.toBytes`, which listens with `cancelOnError: true`;
  // under `fakeAsync` the resulting error settles only after the `fakeAsync`
  // body returns, so no amount of `elapse`/`flushMicrotasks` makes it
  // observable. Deadlines here are tiny and an order of magnitude apart, so
  // relative timer order — which is all these assert on — holds under load.
  group('createBccmGraphQLClient, in real time', () {
    test('a stalled response body is bounded by the body timeout', () {
      // HttpLink drains the body only after send() resolves, so the connect
      // deadline alone would let a response that stalls mid-body hang forever.
      //
      // Asserting on the root cause rather than the wrapper: HttpLink wraps a
      // failed send in ServerException but not a failed body read, because
      // `_executeRequest` does `return http.Response.fromStream(...)` inside
      // its try — a returned future is awaited outside the try, so the error
      // skips the catch and reaches graphql as UnknownException instead.
      return _realTimeTest(
        inner: _StalledBodyClient(_realBody * 3),
        expectation: (result) {
          expect(result.hasException, isTrue);
          expect(result.exception?.linkException?.originalException, isA<TimeoutException>());
        },
      );
    });

    test('a slow body that keeps arriving is not cut off at the connect deadline', () {
      // The point of splitting the deadlines: the body takes five times the
      // connect budget here and still succeeds, because once the server has
      // answered a slow transfer gets the generous budget rather than the tight
      // one.
      return _realTimeTest(
        inner: _SlowSendClient(Duration.zero, bodyDelay: _realConnect * 5),
        expectation: (result) {
          expect(result.hasException, isFalse, reason: '${result.exception}');
          expect(result.data, {'__typename': 'Query', 'hello': 'world'});
        },
      );
    });

    test('a prompt response resolves normally', () {
      return _realTimeTest(
        inner: _SlowSendClient(Duration.zero),
        expectation: (result) {
          expect(result.hasException, isFalse, reason: '${result.exception}');
          expect(result.data, {'__typename': 'Query', 'hello': 'world'});
        },
      );
    });
  });

  // No delays involved, so neither fake nor real time matters here.
  group('createBccmGraphQLClient, per-request wiring', () {
    test('headers are rebuilt for every request rather than captured once', () async {
      // Header values must not be baked into the client, or changing one
      // becomes a reason to rebuild it and discard the cache.
      var flags = 'first';
      final inner = _SlowSendClient(Duration.zero);
      final client = _client(inner: inner, buildHeaders: () => {'X-Feature-Flags': flags});

      await client.query(QueryOptions(document: _helloQuery));
      flags = 'second';
      await client.query(QueryOptions(document: _helloQuery));

      expect(inner.requests.map((r) => r.headers['X-Feature-Flags']), ['first', 'second']);
    });

    test('the auth token is fetched per request', () async {
      var token = 'Bearer one';
      final inner = _SlowSendClient(Duration.zero);
      final client = _client(inner: inner, getToken: () async => token);

      await client.query(QueryOptions(document: _helloQuery));
      token = 'Bearer two';
      await client.query(QueryOptions(document: _helloQuery));

      expect(inner.requests.map((r) => r.headers['Authorization']), ['Bearer one', 'Bearer two']);
    });

    test('a null token leaves the request unauthenticated', () async {
      final inner = _SlowSendClient(Duration.zero);
      final client = _client(inner: inner, getToken: () async => null);

      await client.query(QueryOptions(document: _helloQuery));

      expect(inner.requests.single.headers.containsKey('Authorization'), isFalse);
    });

    test('disposing closes the http client through the whole chain', () async {
      // Every provider rebuild builds a fresh client, so the old one has to go.
      // The chain is _TimeoutClient -> RetryClient -> _HeaderClient -> inner,
      // and BaseClient.close() is a no-op, so every wrapper must forward it.
      final inner = _SlowSendClient(Duration.zero);
      final disposers = <void Function()>[];
      _client(inner: inner, registerDispose: disposers.add);

      expect(inner.closed, 0, reason: 'nothing should close before disposal');
      expect(disposers, hasLength(1), reason: 'the factory must register a disposer');
      for (final dispose in disposers) {
        dispose();
      }
      await Future<void>.delayed(Duration.zero);

      expect(inner.closed, 1);
    });
  });
}

/// Runs one query against [inner] with the short real-time deadlines.
Future<void> _realTimeTest({
  required http.Client inner,
  required void Function(QueryResult<Object?> result) expectation,
}) async {
  final client = _client(inner: inner, connectTimeout: _realConnect, bodyTimeout: _realBody);
  expectation(await client.query(QueryOptions(document: _helloQuery)));
}

GraphQLClient _client({
  required http.Client inner,
  Future<String?> Function()? getToken,
  Map<String, String> Function()? buildHeaders,
  void Function(void Function() callback)? registerDispose,
  Duration connectTimeout = _connect,
  Duration bodyTimeout = _body,
}) =>
    createBccmGraphQLClient(
      endpoint: _endpoint,
      getToken: getToken ?? () async => null,
      buildHeaders: buildHeaders ?? () => const {},
      registerDispose: registerDispose ?? (_) {},
      connectTimeout: connectTimeout,
      bodyTimeout: bodyTimeout,
      inner: inner,
    );

// graphql adds __typename to every selection set, and cache normalization
// rejects a response that omits it.
const _responseBody = '{"data":{"__typename":"Query","hello":"world"}}';

/// Resolves `send()` only after [delay], then emits the body after [bodyDelay].
class _SlowSendClient extends http.BaseClient {
  _SlowSendClient(this.delay, {this.bodyDelay = Duration.zero});

  final Duration delay;
  final Duration bodyDelay;
  final requests = <http.BaseRequest>[];
  int closed = 0;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    requests.add(request);
    await Future<void>.delayed(delay);
    final bytes = utf8.encode(_responseBody);
    return http.StreamedResponse(
      bodyDelay == Duration.zero
          ? Stream.value(bytes)
          : Stream.fromFuture(Future.delayed(bodyDelay, () => bytes)),
      200,
      contentLength: bytes.length,
      request: request,
      headers: const {'content-type': 'application/json'},
    );
  }

  @override
  void close() => closed++;
}

/// Resolves `send()` immediately but withholds the body for [delay].
class _StalledBodyClient extends http.BaseClient {
  _StalledBodyClient(this.delay);

  final Duration delay;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async => http.StreamedResponse(
        Stream.fromFuture(Future.delayed(delay, () => utf8.encode(_responseBody))),
        200,
        request: request,
        headers: const {'content-type': 'application/json'},
      );
}
