import 'dart:async';
import 'dart:convert';

import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/src/models/user_profile.dart';
import 'package:clock/clock.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:synchronized/synchronized.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/constants.dart';

// Careful. The function naming here is very important,
// but because it's conditionally imported (see auth_state_notifier_interface.dart)
// IDEs don't show any errors when you remove/change it..
AuthStateNotifier getPlatformSpecificAuthStateNotifier(AuthConfig config, Ref ref) {
  return AuthStateNotifierMobile(
    appAuth: const FlutterAppAuth(),
    secureStorage: const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true, // https://github.com/mogol/flutter_secure_storage/issues/354
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

  @override
  Completer<void> initializeCompleter = Completer<void>();

  Future<T> _syncAppAuth<T>(Future<T> Function() call) {
    return appAuthLock.synchronized(
      () => call(),
      timeout: const Duration(seconds: 10),
    );
  }

  @override
  Future<AuthState?> getExistingAndEnsureNotExpired() async {
    if (state.expiresAt == null || state.auth0AccessToken == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: 'auth: Either auth0AccessToken or expiresAt is null',
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('during auth-state retrieval'),
      ));

      return null;
    }
    if (state.expiresAt!.difference(clock.now()) < kMinimumCredentialsTTL) {
      await _refresh();

      FlutterError.reportError(FlutterErrorDetails(
        exception: 'auth: Auth state is expired. Trying to renew.',
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('during auth-state retrieval'),
      ));
    }
    if (state.expiresAt!.difference(clock.now()) < kMinimumCredentialsTTL) {
      logout();

      FlutterError.reportError(FlutterErrorDetails(
        exception: 'auth: Auth state is still expired after attempting to renew.',
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('during auth-state retrieval'),
      ));
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
    } finally {
      if (!initializeCompleter.isCompleted) {
        initializeCompleter.complete();
      }
    }
  }

  Future<void> _initialize() async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);
    final idToken = await _secureStorage.read(key: SecureStorageKeys.idToken);
    final userProfileRaw = await _secureStorage.read(key: SecureStorageKeys.userProfile);

    if (accessToken == null || idToken == null || userProfileRaw == null) {
      return;
    }

    final userProfile = UserProfile.fromJson(jsonDecode(userProfileRaw));

    DateTime? expiry = _getAccessTokenExpiry(accessToken);
    if (expiry.difference(clock.now()) < kMinimumCredentialsTTL) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: 'auth: Access token is expired. Trying to renew.',
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('during init/login'),
      ));

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
    final refreshToken = await _secureStorage.read(key: SecureStorageKeys.refreshToken);

    if (refreshToken == null) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: 'auth: Refresh token is null',
        stack: StackTrace.current,
        library: 'bccm_core',
        context: ErrorDescription('during auth-token refresh'),
      ));

      return false;
    }

    final PackageInfo info = await PackageInfo.fromPlatform();
    try {
      final TokenResponse? result = await _syncAppAuth(
        () => _appAuth.token(
          TokenRequest(
            config.auth0ClientId,
            '${info.packageName}://login-callback',
            issuer: 'https://${config.auth0Domain}',
            refreshToken: refreshToken,
            additionalParameters: {'audience': config.auth0Audience, 'custom_scope': config.scopes.join(' ')},
          ),
        ),
      );
      await _setStateBasedOnResponse(result!);
    } catch (e, s) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: s,
        library: 'bccm_core',
        context: ErrorDescription('while attempting to refresh auth token during login'),
      ));
      debugPrint('error on Refresh Token: $e - stack: $s');
      if (kDebugMode) {
        print('bccm: auth refresh token: $refreshToken');
      }

      if (ref.read(isOfflineProvider)) {
        return false;
      } else {
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

      final AuthorizationTokenResponse? result = await _syncAppAuth(
        () => _appAuth.authorizeAndExchangeCode(authorizationTokenRequest),
      );

      await _setStateBasedOnResponse(result!, isLogin: true);
      config.onSignIn?.call();
    } catch (e, st) {
      logout(manual: false);
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

  Future<void> _setStateBasedOnResponse(TokenResponse? result, {bool isLogin = false}) async {
    final accessToken = result?.accessToken;
    final idToken = result?.idToken;
    final refreshToken = result?.refreshToken;
    if (accessToken == null || idToken == null) {
      throw Exception([
        'Invalid token response',
        'result null: ${result == null}',
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

    state = state.copyWith(
      auth0AccessToken: accessToken,
      idToken: idToken,
      user: userProfile,
      expiresAt: _getAccessTokenExpiry(accessToken),
      signedOutManually: false,
    );
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
