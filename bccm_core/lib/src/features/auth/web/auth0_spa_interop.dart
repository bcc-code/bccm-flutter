// JS interop bindings for the Auth0 SPA SDK v2 (auth0-spa-js).
//
// The SDK is loaded via a <script> tag in the host app's web/index.html and
// exposes a global factory `createAuth0Client`. We bind that and a small
// surface of the returned client.
//
// See: https://auth0.github.io/auth0-spa-js/

import 'dart:js_interop';

// In auth0-spa-js v2 the global is namespaced under `window.auth0`.
@JS('auth0.createAuth0Client')
external JSPromise<Auth0Client> _createAuth0Client(Auth0ClientOptions options);

/// Construct an Auth0 SPA SDK client.
Future<Auth0Client> createAuth0Client(Auth0ClientOptions options) =>
    _createAuth0Client(options).toDart;

extension type Auth0Client._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> loginWithPopup([PopupLoginOptions? options]);
  external JSPromise<JSAny?> logout([LogoutOptions? options]);
  external JSPromise<JSBoolean> isAuthenticated();
  external JSPromise<JSString> getTokenSilently([
    GetTokenSilentlyOptions? options,
  ]);
  external JSPromise<JSObject?> getIdTokenClaims();
  external JSPromise<JSAny?> checkSession();
}

extension type Auth0ClientOptions._(JSObject _) implements JSObject {
  external factory Auth0ClientOptions({
    String domain,
    String clientId,
    String? cacheLocation, // 'memory' | 'localstorage'
    bool? useRefreshTokens,
    AuthorizationParams? authorizationParams,
  });
}

extension type AuthorizationParams._(JSObject _) implements JSObject {
  external factory AuthorizationParams({
    String? audience,
    String? scope,
    // ignore: non_constant_identifier_names
    String? redirect_uri,
  });
}

extension type PopupLoginOptions._(JSObject _) implements JSObject {
  external factory PopupLoginOptions({
    PopupAuthorizationParams? authorizationParams,
  });
}

extension type PopupAuthorizationParams._(JSObject _) implements JSObject {
  external factory PopupAuthorizationParams({
    String? audience,
    String? scope,
    String? connection,
    String? prompt, // e.g. 'login' to force re-auth
  });
}

extension type GetTokenSilentlyOptions._(JSObject _) implements JSObject {
  external factory GetTokenSilentlyOptions({
    String? cacheMode, // 'on' | 'off' | 'cache-only'
  });
}

extension type LogoutOptions._(JSObject _) implements JSObject {
  external factory LogoutOptions({
    bool? openUrl, // false to clear local session without IdP redirect
  });
}
