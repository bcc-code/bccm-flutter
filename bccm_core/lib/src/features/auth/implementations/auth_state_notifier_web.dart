// Web implementation of AuthStateNotifier. Uses the Auth0 SPA SDK
// (auth0-spa-js v2) directly via dart:js_interop. The SDK is loaded from a
// <script> tag in the host app's web/index.html.
//
// History note: a previous implementation used the auth0_flutter_web Dart
// package and was removed in commit da0d858 ("the great package upgrade")
// due to package version conflicts. This rewrite avoids that package.
//
// TODO: the conditional import in auth_state.dart triggers on dart.library.html.
// The dart-to-wasm target uses dart.library.js_interop instead, so this file
// will not be selected once the app moves to wasm. Switch the discriminator
// when wasm support is added.

import 'dart:async';
import 'dart:js_interop';

import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:bccm_core/src/models/user_profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../web/auth0_spa_interop.dart';

// Careful. The function naming here is very important,
// but because it's conditionally imported (see auth_state.dart)
// IDEs don't show any errors when you remove/change it..
AuthStateNotifier getPlatformSpecificAuthStateNotifier(AuthConfig config, Ref ref) {
  return AuthStateNotifierWeb(config: config, ref: ref);
}

/// Margin for refreshing the access token before it expires.
const _kRefreshMargin = Duration(minutes: 1);

class AuthStateNotifierWeb extends StateNotifier<AuthState> implements AuthStateNotifier {
  AuthStateNotifierWeb({required this.config, required this.ref}) : super(const AuthState()) {
    // Eagerly start client construction so it's almost certainly resolved
    // before the user clicks a "Sign in" button. This protects the popup
    // from being blocked due to losing the user-gesture chain.
    _clientFuture = _createClient();
  }

  final AuthConfig config;
  final Ref ref;
  late final Future<Auth0Client> _clientFuture;

  Future<Auth0Client> _createClient() {
    return createAuth0Client(
      Auth0ClientOptions(
        domain: config.auth0Domain,
        clientId: config.auth0ClientId,
        // Survives page refresh; required so silent renewal works in browsers
        // with strict third-party-cookie policies (Safari ITP).
        cacheLocation: 'localstorage',
        // Pairs with localstorage cache; uses POST /oauth/token instead of
        // the iframe trick that ITP blocks.
        useRefreshTokens: true,
        authorizationParams: AuthorizationParams(
          audience: config.auth0Audience,
          scope: config.scopes.join(' '),
          redirect_uri: Uri.base.origin,
        ),
      ),
    );
  }

  @override
  Future<void> initialize() async {
    try {
      final client = await _clientFuture;
      // Silently restore session from Auth0's cookie. Routinely fails on
      // Safari ITP and on first visit; that's fine and we proceed empty.
      try {
        await client.checkSession().toDart;
      } catch (_) {
        // expected on first visit / Safari ITP
      }
      final isAuthed = (await client.isAuthenticated().toDart).toDart;
      if (isAuthed) {
        await _applyAuthenticatedState(client);
      }
    } catch (e, st) {
      _logError('auth: web initialize failed', e, st);
      // Leave state empty; AutoLoginScreen will route to Onboarding.
    }
  }

  @override
  Future<AuthState?> getExistingAndEnsureNotExpired() async {
    if (state.auth0AccessToken == null) return null;
    // Hot path: don't call into JS if we're not near expiry.
    final expiresAt = state.expiresAt;
    if (expiresAt != null && expiresAt.difference(DateTime.now().toUtc()) > _kRefreshMargin) {
      return state;
    }
    try {
      final client = await _clientFuture;
      final accessToken = (await client.getTokenSilently().toDart).toDart;
      state = state.copyWith(
        auth0AccessToken: accessToken,
        expiresAt: _getAccessTokenExpiry(accessToken),
      );
      return state;
    } catch (e, st) {
      _logError('auth: getExistingAndEnsureNotExpired failed', e, st);
      return null;
    }
  }

  @override
  Future<bool> forceRefresh() async {
    try {
      final client = await _clientFuture;
      // cacheMode 'off' bypasses the SDK cache and forces a network refresh.
      await client.getTokenSilently(GetTokenSilentlyOptions(cacheMode: 'off')).toDart;
      await _applyAuthenticatedState(client);
      return true;
    } catch (e, st) {
      _logError('auth: forceRefresh failed', e, st);
      return false;
    }
  }

  @override
  Future<bool> login({String? connection}) async {
    try {
      final client = await _clientFuture;
      await client
          .loginWithPopup(
            PopupLoginOptions(
              authorizationParams: PopupAuthorizationParams(
                audience: config.auth0Audience,
                scope: config.scopes.join(' '),
                connection: connection,
                prompt: state.signedOutManually == true ? 'login' : null,
              ),
            ),
          )
          .toDart;
      await _applyAuthenticatedState(client, isLogin: true);
      return true;
    } catch (e, st) {
      // The SDK throws a PopupCancelledError / PopupTimeoutError when the
      // user closes the popup; treat as a non-fatal cancellation.
      final msg = e.toString();
      final isCancellation =
          msg.contains('Popup closed') || msg.contains('Timeout') || msg.contains('cancelled');
      if (isCancellation) {
        await logout(manual: false);
        ref.read(analyticsProvider).log(LogEvent(
              name: 'login cancelled by user',
              message: msg,
            ));
      } else {
        _logError('auth: login failed', e, st);
        await logout(manual: false);
      }
      return false;
    }
  }

  @override
  Future logout({bool manual = true}) async {
    // Clear our state immediately so the UI reacts without waiting on JS.
    state = AuthState(signedOutManually: manual);
    try {
      final client = await _clientFuture;
      // openUrl: false clears the SDK's local cache without redirecting to
      // the Auth0 hosted logout page.
      await client.logout(LogoutOptions(openUrl: false)).toDart;
    } catch (e, st) {
      _logError('auth: logout failed', e, st);
    }
    config.onSignout?.call();
  }

  @override
  Future<void> loginViaDeviceCode(DeviceTokenRequestResponse deviceToken) {
    throw UnimplementedError('loginViaDeviceCode is not supported on web');
  }

  Future<void> _applyAuthenticatedState(Auth0Client client, {bool isLogin = false}) async {
    final accessToken = (await client.getTokenSilently().toDart).toDart;
    final claimsJs = await client.getIdTokenClaims().toDart;
    if (claimsJs == null) {
      throw StateError('auth: getIdTokenClaims returned null after authentication');
    }
    final dartified = claimsJs.dartify();
    if (dartified is! Map) {
      throw StateError('auth: getIdTokenClaims dartified to ${dartified.runtimeType}');
    }
    final claimsMap = <String, dynamic>{};
    for (final entry in dartified.entries) {
      final key = entry.key;
      if (key is String && key != '__raw') {
        claimsMap[key] = entry.value;
      }
    }
    final rawIdToken = (dartified['__raw'] as String?) ?? '';

    final idToken = Auth0IdToken.fromJson(claimsMap);
    final userProfile = UserProfile.mergeWithIdToken(idToken, state.user);

    state = state.copyWith(
      auth0AccessToken: accessToken,
      idToken: rawIdToken,
      user: userProfile,
      expiresAt: _getAccessTokenExpiry(accessToken),
      signedOutManually: false,
    );

    if (isLogin) {
      config.onSignIn?.call();
    }
  }

  void _logError(String label, Object e, StackTrace st) {
    debugPrint('$label: $e');
    FlutterError.reportError(FlutterErrorDetails(
      exception: e,
      stack: st,
      library: 'bccm_core',
      context: ErrorDescription(label),
    ));
    try {
      ref.read(analyticsProvider).log(LogEvent(
            name: label,
            message: e.toString(),
          ));
    } catch (_) {
      // analyticsProvider may not be ready during very early init
    }
  }
}

DateTime _getAccessTokenExpiry(String accessToken) {
  final exp = (JwtDecoder.decode(accessToken)['exp'] as Object?).asOrNull<int>();
  if (exp == null) {
    throw Exception('AuthState: expiry is null in access token');
  }
  return DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true);
}
