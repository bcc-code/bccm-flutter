import 'dart:async';
import 'dart:convert';

import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:bccm_core/src/models/user_profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:synchronized/synchronized.dart';
import 'package:unleash_proxy_client_flutter/id_generator.dart';

import '../../../utils/constants.dart';

AndroidOptions _getAndroidSecureStorageOptions() => const AndroidOptions(
      encryptedSharedPreferences: true, // https://github.com/juliansteenbakker/flutter_secure_storage/issues/354
      sharedPreferencesName: 'auth',
    );

/// Deliberately *not* `synchronizable`.
///
/// flutter_secure_storage's iOS read ignores these options entirely: it always
/// looks for the non-synchronizable keychain item first and only falls back to
/// the iCloud one. Write and delete, on the other hand, pin whatever is set
/// here. So with `synchronizable: true`, any device that still held a
/// non-synchronizable item — every device whose tokens were last written by the
/// legacy storage that was removed in April 2025 — read that stale copy on every
/// launch: writes landed on the iCloud item, and delete could never reach the
/// stale one. Those users had to log in again every single launch.
IOSOptions _getIOSSecureStorageOptions() => const IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device, // https://github.com/juliansteenbakker/flutter_secure_storage/issues/743
    );

/// Every keychain variant this app has written credentials under.
///
/// Deletes only. `synchronizable` and `accessibility` are part of the delete
/// query, so a delete that doesn't match the stored item silently leaves it
/// behind — and because reads prefer the non-synchronizable item, whatever is
/// left behind resurfaces on the next launch instead of the fresh credentials.
const _iosCredentialVariants = [
  IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device),
  IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device, synchronizable: true),
  IOSOptions(), // the pre-April-2025 legacy storage used the plugin defaults
];

// Careful. The function naming here is very important,
// but because it's conditionally imported (see auth_state_notifier_interface.dart)
// IDEs don't show any errors when you remove/change it..
AuthStateNotifier getPlatformSpecificAuthStateNotifier(AuthConfig config, Ref ref) {
  return AuthStateNotifierMobile(
    appAuth: const FlutterAppAuth(),
    secureStorage: FlutterSecureStorage(
      aOptions: _getAndroidSecureStorageOptions(),
      iOptions: _getIOSSecureStorageOptions(),
    ),
    config: config,
    ref: ref,
  );
}

const kMinimumCredentialsTTL = Duration(hours: 1);

/// Past this, stored credentials can't be revived: no refresh token outlives it,
/// so a renewal that fails against credentials this old is not a temporary
/// problem and they may be thrown away. Seen in the wild: a keychain item from
/// 2024 that the app could read but never overwrite, leaving the user with a
/// permanently dead token and no way back except a fresh login every launch.
const kUnrecoverableCredentialsAge = Duration(days: 180);

/// Why a renewal ended the way it did. The distinction matters because only a
/// definitive rejection may clear credentials: on a transient failure the stored
/// refresh token is still the user's way back in.
enum _RefreshResult {
  /// Renewed, or someone else renewed while we waited.
  success,

  /// Auth0 will not accept this refresh token again. A login is required.
  rejected,

  /// Network, timeout, or anything else worth retrying later.
  failed,
}

class AuthStateNotifierMobile extends StateNotifier<AuthState> implements AuthStateNotifier {
  AuthStateNotifierMobile({
    required FlutterAppAuth appAuth,
    required FlutterSecureStorage secureStorage,
    required this.config,
    required this.ref,
  })  : _appAuth = appAuth,
        _secureStorage = secureStorage,
        _auth0Api = Auth0Api(
          audience: config.auth0Audience,
          domain: config.auth0Domain,
          clientId: config.auth0ClientId,
        ),
        super(const AuthState());

  final appAuthLock = Lock();
  final FlutterAppAuth _appAuth;
  final FlutterSecureStorage _secureStorage;
  final AuthConfig config;
  final Auth0Api _auth0Api;
  final Ref ref;

  Future<_RefreshResult>? _refreshInFlight;

  /// The timeout is on acquiring the lock, not on the work itself, so a slow
  /// token request won't trip it.
  Future<T> _syncAppAuth<T>(Future<T> Function() call) {
    return appAuthLock.synchronized(
      () => call(),
      timeout: const Duration(seconds: 10),
    );
  }

  @override
  Future<AuthState?> getExistingAndEnsureNotExpired() async {
    final expiresAt = state.expiresAt;
    if (expiresAt == null || state.auth0AccessToken == null) {
      debugPrint('auth: Either auth0AccessToken or expiresAt is null');
      return null;
    }
    if (expiresAt.difference(DateTime.now().toUtc()) < kMinimumCredentialsTTL) {
      debugPrint('auth: Auth state is close to expiry. Trying to renew.');
      final result = await _refresh();
      if (_shouldSignOut(result, expiresAt)) {
        debugPrint('auth: Refresh token is not usable anymore. Signing out.');
        await logout(manual: false);
        return null;
      }
    }

    // Only give up if the token is genuinely unusable. Being inside the renewal window is not
    // enough on its own: a token with e.g. 30 minutes left still works, and signing the user out
    // because the renewal failed (offline, flaky network) is worse than using what we have.
    if (state.expiresAt == null || !state.expiresAt!.isAfter(DateTime.now().toUtc())) {
      ref.read(analyticsProvider).log(LogEvent(
            name: 'auth state is expired',
            message: 'auth state is expired after attempting to renew',
            meta: {
              'expiresAt': state.expiresAt.toString(),
              'now': DateTime.now().toString(),
              'diff': state.expiresAt?.difference(DateTime.now().toUtc()).toString(),
            },
          ));
      // Deliberately no logout: the renewal failed for a reason we expect to go
      // away (Auth0 rejections are handled above). Requests go out unauthorized
      // until the next attempt succeeds, which beats destroying a refresh token
      // that still works the moment the network comes back.
      debugPrint('auth: Auth state is still expired after attempting to renew. Keeping credentials for a later retry.');
      return null;
    }
    return state;
  }

  /// Whether a failed renewal means the user is signed out for good.
  bool _shouldSignOut(_RefreshResult result, DateTime? expiresAt) {
    switch (result) {
      case _RefreshResult.success:
        return false;
      case _RefreshResult.rejected:
        return true;
      case _RefreshResult.failed:
        return expiresAt != null && DateTime.now().toUtc().difference(expiresAt) > kUnrecoverableCredentialsAge;
    }
  }

  @override
  Future<void> initialize() async {
    try {
      await _initialize();
    } catch (e, st) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: st,
        library: 'bccm_core',
        context: ErrorDescription('during init/login'),
      ));
      rethrow;
    }
  }

  Future<void> _initialize() async {
    final [accessToken, idToken, userProfileRaw] = await Future.wait([
      _readFromSecureStorage(key: SecureStorageKeys.accessToken),
      _readFromSecureStorage(key: SecureStorageKeys.idToken),
      _readFromSecureStorage(key: SecureStorageKeys.userProfile)
    ]);

    if (accessToken == null || idToken == null || userProfileRaw == null) {
      return;
    }

    final userProfile = UserProfile.fromJson(jsonDecode(userProfileRaw));

    final DateTime expiry = _getAccessTokenExpiry(accessToken);
    if (expiry.difference(DateTime.now().toUtc()) < kMinimumCredentialsTTL) {
      debugPrint('auth: Access token is expired. Trying to renew. $expiry');
      final result = await _refresh();
      if (result == _RefreshResult.success) return;
      if (_shouldSignOut(result, expiry)) {
        debugPrint('auth: Stored credentials are not usable anymore. Signing out.');
        await logout(manual: false);
        return;
      }
      // Otherwise keep what we have: the renewal may just have hit a flaky
      // network, and the token can still have enough life left to be useful.
    }
    state = state.copyWith(
      user: userProfile,
      auth0AccessToken: accessToken,
      idToken: idToken,
      expiresAt: expiry,
      signedOutManually: null,
    );
    return;
  }

  @override
  Future<bool> forceRefresh() async {
    return (await _refresh()) == _RefreshResult.success;
  }

  /// Renews the access token, joining an already running renewal instead of
  /// starting a second one.
  ///
  /// Auth0 rotates refresh tokens and a rotated token can only be exchanged
  /// once. Every GraphQL request goes through [getExistingAndEnsureNotExpired],
  /// so several callers entering the renewal window at the same time is the
  /// normal case rather than an edge case — and if they each exchanged the token
  /// they read, every request after the first would look like a replay to Auth0,
  /// which then revokes the whole grant family and signs the user out for good.
  Future<_RefreshResult> _refresh() {
    return _refreshInFlight ??= _exchangeRefreshToken().whenComplete(() => _refreshInFlight = null);
  }

  Future<_RefreshResult> _exchangeRefreshToken() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    try {
      return await _syncAppAuth(() async {
        // Read inside the lock: an exchange (or a login) that finished while we
        // were queued has already rotated the stored token, which makes the one
        // we would have read before queueing a replay.
        final refreshToken = await _readFromSecureStorage(key: SecureStorageKeys.refreshToken);
        if (refreshToken == null) {
          // Null means either "the item is gone" or "the keychain refused us",
          // because reads swallow their errors. Only the first one means the user
          // has to log in again; clearing credentials over a storage hiccup can't
          // be undone.
          final absent = await _refreshTokenIsAbsent();
          debugPrint('auth: Refresh token is null. absent: $absent');
          return absent ? _RefreshResult.rejected : _RefreshResult.failed;
        }
        if (_hasUsableAccessToken()) {
          debugPrint('auth: Token was renewed while waiting. Skipping.');
          return _RefreshResult.success;
        }

        final TokenResponse result;
        try {
          result = await _appAuth.token(
            TokenRequest(
              config.auth0ClientId,
              '${info.packageName}://login-callback',
              issuer: 'https://${config.auth0Domain}',
              refreshToken: refreshToken,
              additionalParameters: {'audience': config.auth0Audience, 'custom_scope': config.scopes.join(' ')},
            ),
          );
        } on FlutterAppAuthPlatformException catch (e) {
          final details = e.platformErrorDetails;
          // invalid_grant is Auth0 saying this refresh token is gone for good:
          // expired, revoked, or already rotated. Anything else (no network,
          // captive portal, 5xx, rate limit) is worth another attempt later.
          final rejected = details.error == FlutterAppAuthOAuthError.invalidGrant;
          debugPrint('auth: Refresh request failed. error: ${details.error}, rejected: $rejected');
          ref.read(analyticsProvider).log(LogEvent(
                name: 'refresh request for access token failed',
                message: e.toString(),
                meta: {
                  'oauthError': details.error,
                  'errorDescription': details.errorDescription,
                  'code': details.code,
                  'type': details.type,
                  'rejected': rejected,
                },
              ));
          return rejected ? _RefreshResult.rejected : _RefreshResult.failed;
        }

        try {
          await _setStateBasedOnResponse(result);
        } catch (e, st) {
          FlutterError.reportError(FlutterErrorDetails(
            exception: e,
            stack: st,
            library: 'bccm_core',
            context: ErrorDescription('while applying a refreshed access token'),
          ));
          ref.read(analyticsProvider).log(LogEvent(
                name: 'failed to set auth state based on refresh request response',
                message: e.toString(),
              ));
          return _RefreshResult.failed;
        }
        return _RefreshResult.success;
      });
    } catch (e, st) {
      // Includes the lock timeout, which only means an interactive login is
      // holding it. Never clear credentials here: an unrecognized failure is not
      // evidence that the refresh token is dead.
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: st,
        library: 'bccm_core',
        context: ErrorDescription('while attempting to refresh access token'),
      ));
      ref.read(analyticsProvider).log(LogEvent(
            name: 'refresh request for access token failed',
            message: e.toString(),
          ));
      return _RefreshResult.failed;
    }
  }

  /// Whether the refresh token is really gone, as opposed to unreadable. Errs
  /// towards "still there": that only costs a retry, the other way costs a login.
  Future<bool> _refreshTokenIsAbsent() {
    return _secureStorage
        .containsKey(
          key: SecureStorageKeys.refreshToken,
          iOptions: _getIOSSecureStorageOptions(),
          aOptions: _getAndroidSecureStorageOptions(),
        )
        .then((exists) => !exists)
        .catchError((_) => false);
  }

  bool _hasUsableAccessToken() {
    final expiresAt = state.expiresAt;
    return state.auth0AccessToken != null && expiresAt != null && expiresAt.difference(DateTime.now().toUtc()) >= kMinimumCredentialsTTL;
  }

  Future _clearCredentials() async {
    await Future.wait(
      [
        _deleteFromSecureStorage(key: SecureStorageKeys.refreshToken),
        _deleteFromSecureStorage(key: SecureStorageKeys.accessToken),
        _deleteFromSecureStorage(key: SecureStorageKeys.idToken),
        _deleteFromSecureStorage(key: SecureStorageKeys.userProfile),
      ],
    );
  }

  @override
  Future logout({bool manual = true}) async {
    await _clearCredentials();
    state = AuthState(signedOutManually: manual);
    config.onSignout?.call();

    return;
  }

  @override
  Future<void> loginViaDeviceCode(DeviceTokenRequestResponse deviceCode) async {
    try {
      final credentials = await _auth0Api.listenToResolve(deviceCode);
      await _setStateBasedOnResponse(TokenResponse(
        credentials.accessToken,
        credentials.refreshToken,
        DateTime.now().add(Duration(seconds: credentials.expiresIn)),
        credentials.idToken,
        credentials.tokenType,
        credentials.scope.split(','),
        null,
      ));
    } catch (e) {
      logout(manual: false);
      rethrow;
    }
  }

  @override
  Future<bool> login({String? connection}) async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    try {
      var additionalParameters = {'audience': config.auth0Audience};
      if (connection != null) {
        additionalParameters['connection'] = connection;
      }
      final authorizationTokenRequest = AuthorizationTokenRequest(
        config.auth0ClientId,
        '${info.packageName}://login-callback',
        issuer: 'https://${config.auth0Domain}',
        scopes: config.scopes,
        promptValues: state.signedOutManually == true ? ['login'] : null,
        additionalParameters: additionalParameters,
      );

      final AuthorizationTokenResponse result = await _syncAppAuth(
        () => _appAuth.authorizeAndExchangeCode(authorizationTokenRequest),
      ).catchError((e) {
        ref.read(analyticsProvider).log(LogEvent(
              name: 'authorization and token exchange request failed',
              message: e.toString(),
            ));
        return AuthorizationTokenResponse(null, null, null, null, null, null, null, null);
      });

      await _setStateBasedOnResponse(result, isLogin: true).catchError((e) {
        ref.read(analyticsProvider).log(LogEvent(
              name: 'failed to set auth state based on response from token exchange request',
              message: e.toString(),
            ));
      });
      config.onSignIn?.call();
    } on FlutterAppAuthUserCancelledException catch (e) {
      logout(manual: false);
      final details = e.platformErrorDetails;
      ref.read(analyticsProvider).log(LogEvent(
            name: 'login cancelled by user',
            message: e.message,
            meta: {
              'code': details.code,
              'type': details.type,
              'error': details.error,
              'debugDescription': details.errorDebugDescription,
            },
          ));
      return false;
    } on FlutterAppAuthPlatformException catch (e) {
      logout(manual: false);
      final details = e.platformErrorDetails;
      ref.read(analyticsProvider).log(LogEvent(
            name: 'login failed because of flutter_appauth platform exception',
            message: e.message,
            meta: {
              'code': details.code,
              'type': details.type,
              'error': details.error,
              'debugDescription': details.errorDebugDescription,
            },
          ));
      return false;
    } catch (e, st) {
      logout(manual: false);
      ref.read(analyticsProvider).log(LogEvent(
            name: 'login failed',
            message: e.toString(),
          ));
      debugPrint(e.toString());
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: st,
        library: 'bccm_core',
        context: ErrorDescription('during login'),
      ));
      return false;
    }
    return true;
  }

  Future<void> _setStateBasedOnResponse(TokenResponse result, {bool isLogin = false}) async {
    final accessToken = result.accessToken;
    final idToken = result.idToken;
    final refreshToken = result.refreshToken;
    if (accessToken == null || idToken == null) {
      throw Exception([
        'Invalid token response',
        'accessToken null: ${accessToken == null}',
        'idToken null: ${idToken == null}',
        'refreshToken null: ${refreshToken == null}'
      ]);
    }
    if (isLogin && refreshToken == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception('auth: Refresh token missing on login'),
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('during login'),
      ));
    }

    final userProfile = UserProfile.mergeWithIdToken(_parseIdToken(idToken), state.user);

    try {
      await Future.wait([
        _writeToSecureStorage(
          key: SecureStorageKeys.idToken,
          value: idToken,
        ),
        _writeToSecureStorage(
          key: SecureStorageKeys.userProfile,
          value: jsonEncode(userProfile.toJson()),
        ),
        _writeToSecureStorage(
          key: SecureStorageKeys.accessToken,
          value: accessToken,
        ),
        if (refreshToken != null)
          _writeToSecureStorage(
            key: SecureStorageKeys.refreshToken,
            value: refreshToken,
          ),
      ]);
    } catch (e, st) {
      // Reported, not swallowed: the session still works in memory, but nothing
      // was persisted, so the user is silently facing a fresh login on the next
      // launch. That silence is what made this hard to track down before.
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: st,
        library: 'bccm_core',
        context: ErrorDescription('while writing credentials to secure storage'),
      ));
      ref.read(analyticsProvider).log(LogEvent(
            name: 'writing credentials to storage failed',
            message: e.toString(),
            meta: {'stack': st.toString()},
          ));
    }

    state = state.copyWith(
      auth0AccessToken: accessToken,
      idToken: idToken,
      user: userProfile,
      expiresAt: _getAccessTokenExpiry(accessToken),
      signedOutManually: false,
    );
  }

  Future<String?> _readFromSecureStorage({required String key}) async {
    final callId = generateId();

    debugPrint('read from secure storage: $key');

    await checkIfSecureStorageIsAvailableAndHasKey('_secureStorage', _secureStorage, key, callId);
    var result = await _secureStorage
        .read(
      key: key,
      iOptions: _getIOSSecureStorageOptions(),
      aOptions: _getAndroidSecureStorageOptions(),
    )
        .then((value) {
      debugPrint('reading $key from secure storage');
      return value;
    }).catchError((e) {
      ref.read(analyticsProvider).log(
            LogEvent(
              name: 'failed reading $key from secure storage',
              message: e.toString(),
              meta: {'callId': callId},
            ),
          );
      return null;
    });

    return result;
  }

  Future<void> _writeToSecureStorage({required String key, required String value}) async {
    debugPrint('writing $key to secure storage');
    await _secureStorage.write(
      key: key,
      value: value,
      iOptions: _getIOSSecureStorageOptions(),
      aOptions: _getAndroidSecureStorageOptions(),
    );
  }

  /// Deletes the key under every variant it may have been written with, see
  /// [_iosCredentialVariants].
  Future<void> _deleteFromSecureStorage({required String key}) async {
    debugPrint('delete from secure storage: $key');
    final variants = defaultTargetPlatform == TargetPlatform.iOS ? _iosCredentialVariants : [_getIOSSecureStorageOptions()];
    for (final iOptions in variants) {
      await _secureStorage.delete(
        key: key,
        iOptions: iOptions,
        aOptions: _getAndroidSecureStorageOptions(),
      );
    }
  }

  Future<void> checkIfSecureStorageIsAvailableAndHasKey(String storageName, FlutterSecureStorage storage, String key, String uid) async {
    final [hasKey, value] = await Future.wait([
      storage.containsKey(key: key),
      storage.read(key: key),
    ]);

    if (hasKey == false) {
      ref.read(analyticsProvider).log(LogEvent(
            name: 'secure storage does not contain key $key in $storageName',
            message: 'in checkIfSecureStorageIsAvailableAndHasKey',
            meta: {'callId': uid},
          ));
    }
    if (hasKey == true && value == null) {
      ref.read(analyticsProvider).log(LogEvent(
            name: 'secure storage data for key $key is null in $storageName',
            message: 'in checkIfSecureStorageIsAvailableAndHasKey',
            meta: {'callId': uid},
          ));
    }
  }
}

Auth0IdToken _parseIdToken(String idToken) {
  final parts = idToken.split(r'.');
  assert(parts.length == 3);

  final Map<String, dynamic> json = jsonDecode(
    utf8.decode(
      base64Url.decode(
        base64Url.normalize(parts[1]),
      ),
    ),
  );

  return Auth0IdToken.fromJson(json);
}

DateTime _getAccessTokenExpiry(String accessToken) {
  final accessTokenExpiry = (JwtDecoder.decode(accessToken)['exp'] as Object?).asOrNull<int>();
  if (accessTokenExpiry == null) {
    throw Exception('AuthState: expiry is null: $accessTokenExpiry');
  }
  final expiry = DateTime.fromMillisecondsSinceEpoch(accessTokenExpiry * 1000, isUtc: true);
  return expiry;
}
