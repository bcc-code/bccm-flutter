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

// Careful. The function naming here is very important,
// but because it's conditionally imported (see auth_state_notifier_interface.dart)
// IDEs don't show any errors when you remove/change it..
AuthStateNotifier getPlatformSpecificAuthStateNotifier(AuthConfig config, Ref ref) {
  return AuthStateNotifierMobile(
    appAuth: const FlutterAppAuth(),
    secureStorage: const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true, // https://github.com/juliansteenbakker/flutter_secure_storage/issues/354
          sharedPreferencesName: 'auth',
        ),
        iOptions: IOSOptions(
          accessibility: KeychainAccessibility.first_unlock_this_device, // https://github.com/juliansteenbakker/flutter_secure_storage/issues/743
          synchronizable: true,
        )),
    legacySecureStorage: const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
        sharedPreferencesName: 'auth',
      ),
    ),
    config: config,
    ref: ref,
  );
}

const kMinimumCredentialsTTL = Duration(hours: 1);

class AuthStateNotifierMobile extends StateNotifier<AuthState> implements AuthStateNotifier {
  AuthStateNotifierMobile({
    required FlutterAppAuth appAuth,
    required FlutterSecureStorage secureStorage,
    required FlutterSecureStorage legacySecureStorage,
    required this.config,
    required this.ref,
  })  : _appAuth = appAuth,
        _secureStorage = secureStorage,
        _legacySecureStorage = legacySecureStorage,
        _auth0Api = Auth0Api(
          audience: config.auth0Audience,
          domain: config.auth0Domain,
          clientId: config.auth0ClientId,
        ),
        super(const AuthState());

  final appAuthLock = Lock();
  final FlutterAppAuth _appAuth;
  final FlutterSecureStorage _secureStorage;
  final FlutterSecureStorage _legacySecureStorage;
  final AuthConfig config;
  final Auth0Api _auth0Api;
  final Ref ref;

  Future<T> _syncAppAuth<T>(Future<T> Function() call) {
    return appAuthLock.synchronized(
      () => call(),
      timeout: const Duration(seconds: 10),
    );
  }

  @override
  Future<AuthState?> getExistingAndEnsureNotExpired() async {
    if (state.expiresAt == null || state.auth0AccessToken == null) {
      debugPrint('auth: Either auth0AccessToken or expiresAt is null');
      return null;
    }
    if (state.expiresAt!.difference(DateTime.now().toUtc()) < kMinimumCredentialsTTL) {
      await _refresh();
      debugPrint('auth: Auth state is expired. Trying to renew.');
    }
    if (state.expiresAt!.difference(DateTime.now().toUtc()) < kMinimumCredentialsTTL) {
      logout();
      ref.read(analyticsProvider).log(LogEvent(
            name: 'auth state is expired',
            message: 'auth state is expired after attempting to renew',
            meta: {
              'expiresAt': state.expiresAt.toString(),
              'now': DateTime.now().toString(),
              'diff': state.expiresAt!.difference(DateTime.now().toUtc()).toString(),
            },
          ));
      debugPrint('auth: Auth state is still expired after attempting to renew.');
    }
    return state;
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
    final accessToken = await _readFromSecureStorage(key: SecureStorageKeys.accessToken);
    final idToken = await _readFromSecureStorage(key: SecureStorageKeys.idToken);
    final userProfileRaw = await _readFromSecureStorage(key: SecureStorageKeys.userProfile);

    if (accessToken == null || idToken == null || userProfileRaw == null) {
      return;
    }

    final userProfile = UserProfile.fromJson(jsonDecode(userProfileRaw));

    DateTime? expiry = _getAccessTokenExpiry(accessToken);
    if (expiry.difference(DateTime.now().toUtc()) < kMinimumCredentialsTTL) {
      debugPrint('auth: Access token is expired. Trying to renew.');
      if (await _refresh()) return;
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
  Future<bool> forceRefresh() {
    return _refresh();
  }

  Future<bool> _refresh() async {
    final refreshToken = await _readFromSecureStorage(key: SecureStorageKeys.refreshToken);

    if (refreshToken == null) {
      debugPrint('auth: Refresh token is null');
      return false;
    }

    final PackageInfo info = await PackageInfo.fromPlatform();
    try {
      final TokenResponse result = await _syncAppAuth(
        () => _appAuth.token(
          TokenRequest(
            config.auth0ClientId,
            '${info.packageName}://login-callback',
            issuer: 'https://${config.auth0Domain}',
            refreshToken: refreshToken,
            additionalParameters: {'audience': config.auth0Audience, 'custom_scope': config.scopes.join(' ')},
          ),
        ),
      ).catchError((e) {
        ref.read(analyticsProvider).log(LogEvent(
              name: 'refresh request for access token failed',
              message: e.toString(),
            ));
        return TokenResponse(null, null, null, null, null, null, null);
      });
      await _setStateBasedOnResponse(result).catchError((e) {
        ref.read(analyticsProvider).log(LogEvent(
              name: 'failed to set auth state based on refresh request response',
              message: e.toString(),
            ));
      });
    } catch (e, s) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: s,
        library: 'bccm_core',
        context: ErrorDescription('while attempting to refresh access token'),
      ));
      debugPrint('error on Refresh Token: $e - stack: $s');
      if (kDebugMode) {
        print('bccm: auth refresh token: $refreshToken');
      }

      if (ref.read(isOfflineProvider) != true) {
        await _clearCredentials();
      }

      // logOut() possibly
      return false;
    }
    return true;
  }

  Future _clearCredentials() async {
    await Future.wait(
      [
        _secureStorage.delete(key: SecureStorageKeys.refreshToken),
        _secureStorage.delete(key: SecureStorageKeys.accessToken),
        _secureStorage.delete(key: SecureStorageKeys.idToken),
        _secureStorage.delete(key: SecureStorageKeys.userProfile),
        _legacySecureStorage.delete(key: SecureStorageKeys.refreshToken),
        _legacySecureStorage.delete(key: SecureStorageKeys.accessToken),
        _legacySecureStorage.delete(key: SecureStorageKeys.idToken),
        _legacySecureStorage.delete(key: SecureStorageKeys.userProfile),
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
        _secureStorage.write(
          key: SecureStorageKeys.idToken,
          value: idToken,
        ),
        _secureStorage.write(
          key: SecureStorageKeys.userProfile,
          value: jsonEncode(userProfile.toJson()),
        ),
        _secureStorage.write(
          key: SecureStorageKeys.accessToken,
          value: accessToken,
        ),
        if (refreshToken != null)
          _secureStorage.write(
            key: SecureStorageKeys.refreshToken,
            value: refreshToken,
          ),
      ]);
    } catch (e, st) {
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

    await checkIfSecureStorageIsAvailableAndHasKey('_secureStorage', _secureStorage, key, callId);
    var result = await _secureStorage.read(key: key).then((value) {
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

    // fallback to legacy storage
    await checkIfSecureStorageIsAvailableAndHasKey('_legacySecureStorage', _legacySecureStorage, key, callId);
    result ??= await _legacySecureStorage.read(key: key).then((value) async {
      debugPrint('reading $key from legacy secure storage');
      _secureStorage.write(key: key, value: value);
      return value;
    }).catchError((e) {
      ref.read(analyticsProvider).log(
            LogEvent(
              name: 'failed reading $key from legacy secure storage',
              message: e.toString(),
              meta: {'callId': callId},
            ),
          );
      return null;
    });

    return result;
  }

  checkIfSecureStorageIsAvailableAndHasKey(String storageName, FlutterSecureStorage storage, String key, String uid) async {
    final [available, hasKey, value] = await Future.wait([
      storage.isCupertinoProtectedDataAvailable(),
      storage.containsKey(key: key),
      storage.read(key: key),
    ]);
    if (available != true) {
      ref.read(analyticsProvider).log(LogEvent(
            name: 'secure storage data for key $key is not yet available in $storageName',
            message: 'in checkIfSecureStorageIsAvailableAndHasKey',
            meta: {'callId': uid},
          ));
    }
    if (hasKey != true) {
      ref.read(analyticsProvider).log(LogEvent(
            name: 'secure storage does not contain key $key in $storageName',
            message: 'in checkIfSecureStorageIsAvailableAndHasKey',
            meta: {'callId': uid},
          ));
    }
    if (value == null) {
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
