// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: invalid_use_of_protected_member

import 'dart:convert';

import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:bccm_core/src/features/auth/implementations/auth_state_notifier_mobile.dart';
import 'package:bccm_core/src/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'package:mockito/mockito.dart';

import 'utils/tokens.dart';
@GenerateNiceMocks([
  MockSpec<FlutterAppAuth>(),
  MockSpec<FlutterSecureStorage>(),
  MockSpec<Auth0Api>(),
])
import 'auth_test.mocks.dart';
import 'utils/basic_init.dart';

class MockTokenRequest extends Mock implements TokenRequest {}

TokenResponse mockTokenResponse({required DateTime expiresAt}) {
  final tomorrowEpoch = (expiresAt.millisecondsSinceEpoch / 1000).round();
  final fakeAccessTokenJwt =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.${base64UrlEncode(utf8.encode('{"exp": $tomorrowEpoch}'))}.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c';

  return TokenResponse(
    fakeAccessTokenJwt,
    fakeAccessTokenJwt,
    expiresAt,
    fakeIdTokenJwt,
    'tokenType',
    null,
    null,
  );
}

class MockRef extends Mock implements Ref {
  /// AuthStateNotifierMobile logs secure-storage diagnostics through
  /// `ref.read(analyticsProvider)`. Mock's noSuchMethod would hand back null
  /// for that non-nullable Analytics, so serve the same no-op instance the
  /// un-overridden provider does. (A `when(...)` stub can't work here: setting
  /// one up calls read() itself and trips over the null before it registers.)
  @override
  T read<T>(ProviderListenable<T> provider) {
    if (identical(provider, analyticsProvider)) return Analytics() as T;
    throw UnimplementedError('MockRef.read got an unstubbed provider: $provider');
  }
}

/// Production reads with iOptions/aOptions; mockito matches named args exactly,
/// so the stub has to accept them or it silently never fires.
MockFlutterSecureStorage storageWithRefreshToken() {
  final secureStorage = MockFlutterSecureStorage();
  when(secureStorage.read(
    key: SecureStorageKeys.refreshToken,
    iOptions: anyNamed('iOptions'),
    aOptions: anyNamed('aOptions'),
  )).thenAnswer((_) async => 'refresh token');
  return secureStorage;
}

AuthStateNotifierMobile notifier({required FlutterAppAuth appAuth, required FlutterSecureStorage secureStorage}) {
  return AuthStateNotifierMobile(
    appAuth: appAuth,
    secureStorage: secureStorage,
    config: AuthConfig(
      auth0Audience: 'audience',
      auth0ClientId: 'clientId',
      auth0Domain: 'domain',
      scopes: ['scope'],
      isTv: false,
    ),
    ref: MockRef(),
  );
}

FlutterAppAuthPlatformException appAuthError(String error) => FlutterAppAuthPlatformException(
      code: 'token_request_failed',
      platformErrorDetails: FlutterAppAuthPlatformErrorDetails(error: error),
    );

/// The one keychain variant credentials may be read and written under:
/// device-local, available after first unlock, and *not* synchronizable.
///
/// `synchronizable: true` is what put credentials in iCloud while reads kept
/// preferring the local item, so writes and deletes stopped reaching the copy
/// the app actually read — see the note on `_getIOSSecureStorageOptions`.
final kExpectedIOSOptions = const IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device).params;

/// The app's own encrypted store, not the plugin's default one. Changing either
/// value orphans every credential already on disk.
final kExpectedAndroidOptions = const AndroidOptions(encryptedSharedPreferences: true, sharedPreferencesName: 'auth').params;

/// `params` hands back plain [Map]s, and Map doesn't implement value equality —
/// a `Set` of them dedupes by identity, so every element always looks distinct.
/// Compare these strings instead.
String canonical(Map<String, String> params) {
  final entries = params.entries.toList()..sort((a, b) => a.key.compareTo(b.key));
  return entries.map((e) => '${e.key}=${e.value}').join(',');
}

/// Runs one renewal that succeeds and hands back the storage mock, so a test can
/// inspect the options every read and write actually went out with.
Future<MockFlutterSecureStorage> storageAfterSuccessfulRefresh() async {
  final secureStorage = storageWithRefreshToken();
  final mockAppAuth = MockFlutterAppAuth();
  when(mockAppAuth.token(any)).thenAnswer((_) async => mockTokenResponse(expiresAt: DateTime.now().add(const Duration(days: 1))));

  final auth = notifier(appAuth: mockAppAuth, secureStorage: secureStorage);
  auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now());

  final result = await auth.getExistingAndEnsureNotExpired();
  // Without this the assertions below can pass on an empty capture list.
  expect(result?.auth0AccessToken, isNotNull, reason: 'the renewal itself has to succeed, or nothing was written to inspect');
  return secureStorage;
}

void main() {
  group('Mobile authentication (AuthStateNotifierMobile)', () {
    test('Dont refresh when not old', () async {
      basicInit();
      final secureStorage = MockFlutterSecureStorage();
      // Production reads with iOptions/aOptions; mockito matches named args
      // exactly, so the stub has to accept them or it silently never fires.
      when(secureStorage.read(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).thenAnswer((_) async => 'refresh token');

      final mockAppAuth = MockFlutterAppAuth();
      final mockRef = MockRef();

      final auth = AuthStateNotifierMobile(
        appAuth: MockFlutterAppAuth(),
        secureStorage: secureStorage,
        config: AuthConfig(
          auth0Audience: 'audience',
          auth0ClientId: 'clientId',
          auth0Domain: 'domain',
          scopes: ['scope'],
          isTv: false,
        ),
        ref: mockRef,
      );
      auth.state = AuthState(
        auth0AccessToken: 'something',
        expiresAt: DateTime.now().add(const Duration(days: 1)),
      );

      final response = await auth.getExistingAndEnsureNotExpired();
      verifyNever(mockAppAuth.token(any));
      assert(response?.auth0AccessToken == 'something', 'Access token must be the same  value');
    });
    test('Refresh when old', () async {
      basicInit();
      final secureStorage = MockFlutterSecureStorage();
      // Production reads with iOptions/aOptions; mockito matches named args
      // exactly, so the stub has to accept them or it silently never fires.
      when(secureStorage.read(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).thenAnswer((_) async => 'refresh token');

      final mockAppAuth = MockFlutterAppAuth();
      when(mockAppAuth.token(any)).thenAnswer((_) async => mockTokenResponse(expiresAt: DateTime.now().add(const Duration(days: 1))));
      final mockRef = MockRef();

      final auth = AuthStateNotifierMobile(
        appAuth: mockAppAuth,
        secureStorage: secureStorage,
        config: AuthConfig(
          auth0Audience: 'audience',
          auth0ClientId: 'clientId',
          auth0Domain: 'domain',
          scopes: ['scope'],
          isTv: false,
        ),
        ref: mockRef,
      );
      auth.state = AuthState(
        auth0AccessToken: 'something',
        expiresAt: DateTime.now(),
      );

      await auth.getExistingAndEnsureNotExpired();
      verify(mockAppAuth.token(any)).called(1);
    });

    test('Parallel callers share one refresh', () async {
      basicInit();
      final secureStorage = storageWithRefreshToken();
      final mockAppAuth = MockFlutterAppAuth();
      when(mockAppAuth.token(any)).thenAnswer((_) async {
        await Future<void>.delayed(const Duration(milliseconds: 20));
        return mockTokenResponse(expiresAt: DateTime.now().add(const Duration(days: 1)));
      });

      final auth = notifier(appAuth: mockAppAuth, secureStorage: secureStorage);
      auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now());

      await Future.wait([
        auth.getExistingAndEnsureNotExpired(),
        auth.getExistingAndEnsureNotExpired(),
        auth.getExistingAndEnsureNotExpired(),
      ]);

      // Auth0 rotates refresh tokens: exchanging the same one twice looks like a
      // replay and gets the entire grant family revoked.
      verify(mockAppAuth.token(any)).called(1);
    });

    test('A rejected refresh token signs the user out', () async {
      basicInit();
      final secureStorage = storageWithRefreshToken();
      final mockAppAuth = MockFlutterAppAuth();
      when(mockAppAuth.token(any)).thenThrow(appAuthError(FlutterAppAuthOAuthError.invalidGrant));

      final auth = notifier(appAuth: mockAppAuth, secureStorage: secureStorage);
      auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now());

      expect(await auth.getExistingAndEnsureNotExpired(), isNull);
      expect(auth.state.auth0AccessToken, isNull, reason: 'invalid_grant means the token is gone for good');
      verify(secureStorage.delete(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).called(greaterThanOrEqualTo(1));
    });

    test('A transient refresh failure keeps the credentials', () async {
      basicInit();
      final secureStorage = storageWithRefreshToken();
      final mockAppAuth = MockFlutterAppAuth();
      when(mockAppAuth.token(any)).thenThrow(appAuthError('network_error'));

      final auth = notifier(appAuth: mockAppAuth, secureStorage: secureStorage);
      auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now());

      expect(await auth.getExistingAndEnsureNotExpired(), isNull, reason: 'the token is expired, so it must not be handed out');
      expect(auth.state.auth0AccessToken, 'something', reason: 'the stored refresh token is still the way back in');
      verifyNever(secureStorage.delete(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      ));
    });

    test('Credentials too old to be revived are cleared even without a rejection', () async {
      basicInit();
      final secureStorage = storageWithRefreshToken();
      final mockAppAuth = MockFlutterAppAuth();
      when(mockAppAuth.token(any)).thenThrow(appAuthError('network_error'));

      final auth = notifier(appAuth: mockAppAuth, secureStorage: secureStorage);
      auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now().subtract(const Duration(days: 700)));

      expect(await auth.getExistingAndEnsureNotExpired(), isNull);
      expect(auth.state.auth0AccessToken, isNull, reason: 'no refresh token survives two years, so there is nothing to protect');
    });

    test('An unreadable refresh token keeps the credentials', () async {
      basicInit();
      final secureStorage = MockFlutterSecureStorage();
      // Reads swallow their errors and come back null, so "unreadable" and
      // "gone" look the same from the outside — containsKey tells them apart.
      when(secureStorage.read(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).thenAnswer((_) async => null);
      when(secureStorage.containsKey(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).thenAnswer((_) async => true);

      final auth = notifier(appAuth: MockFlutterAppAuth(), secureStorage: secureStorage);
      auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now());

      expect(await auth.getExistingAndEnsureNotExpired(), isNull);
      expect(auth.state.auth0AccessToken, 'something');
      verifyNever(secureStorage.delete(
        key: anyNamed('key'),
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      ));
    });

    test('A missing refresh token signs the user out', () async {
      basicInit();
      final secureStorage = MockFlutterSecureStorage();
      when(secureStorage.read(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).thenAnswer((_) async => null);
      when(secureStorage.containsKey(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).thenAnswer((_) async => false);

      final auth = notifier(appAuth: MockFlutterAppAuth(), secureStorage: secureStorage);
      auth.state = AuthState(auth0AccessToken: 'something', expiresAt: DateTime.now());

      expect(await auth.getExistingAndEnsureNotExpired(), isNull);
      expect(auth.state.auth0AccessToken, isNull, reason: 'there is nothing left to renew with');
    });

  });

  /// These pin the storage options themselves. The bug they guard against was a
  /// single word — `synchronizable: true` — and it cost every affected iOS user a
  /// fresh login on every launch, silently, for months. None of the behavioural
  /// tests above notice if it comes back.
  group('Secure storage options', () {
    test('Credentials are written to the device-local keychain, never to iCloud', () async {
      basicInit();
      final secureStorage = await storageAfterSuccessfulRefresh();

      final captured = verify(secureStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
        iOptions: captureAnyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).captured;

      expect(captured, isNotEmpty, reason: 'a successful renewal must persist the new credentials');
      expect(captured.map((o) => (o as IOSOptions).params), everyElement(kExpectedIOSOptions));
    });

    test('Reads look in the same keychain variant that writes use', () async {
      basicInit();
      final secureStorage = await storageAfterSuccessfulRefresh();

      final captured = verify(secureStorage.read(
        key: anyNamed('key'),
        iOptions: captureAnyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).captured;

      // checkIfSecureStorageIsAvailableAndHasKey reads without passing any
      // options, which captures as null. Those are the diagnostic reads; the
      // ones that carry credentials are the typed ones.
      final withOptions = captured.whereType<IOSOptions>().map((o) => o.params).toList();
      expect(withOptions, isNotEmpty, reason: 'the renewal has to read the refresh token');
      expect(withOptions, everyElement(kExpectedIOSOptions));
    });

    test('Credentials are stored in the app\'s own encrypted shared preferences', () async {
      basicInit();
      final secureStorage = await storageAfterSuccessfulRefresh();

      final captured = verify(secureStorage.write(
        key: anyNamed('key'),
        value: anyNamed('value'),
        iOptions: anyNamed('iOptions'),
        aOptions: captureAnyNamed('aOptions'),
      )).captured;

      expect(captured, isNotEmpty);
      expect(captured.map((o) => (o as AndroidOptions).params), everyElement(kExpectedAndroidOptions));
    });

    test('Clearing credentials deletes every keychain variant they may sit in', () async {
      basicInit();
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      addTearDown(() => debugDefaultTargetPlatformOverride = null);
      final secureStorage = storageWithRefreshToken();

      final auth = notifier(appAuth: MockFlutterAppAuth(), secureStorage: secureStorage);
      await auth.logout();

      final captured = verify(secureStorage.delete(
        key: SecureStorageKeys.refreshToken,
        iOptions: captureAnyNamed('iOptions'),
        aOptions: anyNamed('aOptions'),
      )).captured;

      // Reads prefer the non-synchronizable item, so a delete that only matches
      // the synchronizable one leaves stale credentials behind to resurface on
      // the next launch. Every variant the app has ever written under has to go,
      // which is why this asserts the exact set and not just "more than one".
      expect(
        captured.map((o) => canonical((o as IOSOptions).params)).toSet(),
        {
          canonical(const IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device).params),
          canonical(const IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device, synchronizable: true).params),
          canonical(const IOSOptions().params), // the pre-April-2025 legacy storage used the plugin defaults
        },
      );
      expect(captured, hasLength(3), reason: 'each variant exactly once');
    });

    test('On Android there is one delete, with the app\'s storage options', () async {
      basicInit();
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      addTearDown(() => debugDefaultTargetPlatformOverride = null);
      final secureStorage = storageWithRefreshToken();

      final auth = notifier(appAuth: MockFlutterAppAuth(), secureStorage: secureStorage);
      await auth.logout();

      final captured = verify(secureStorage.delete(
        key: SecureStorageKeys.refreshToken,
        iOptions: anyNamed('iOptions'),
        aOptions: captureAnyNamed('aOptions'),
      )).captured;

      // The extra variants only exist as keychain items, so repeating the delete
      // on Android would be three identical calls.
      expect(captured, hasLength(1));
      expect((captured.single as AndroidOptions).params, kExpectedAndroidOptions);
    });
  });
}
