import 'dart:async';

import 'package:bccm_core/platform.dart';
import 'package:bccm_core/src/features/notifications/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/basic_init.dart';

const _settings = NotificationSettings(
  alert: AppleNotificationSetting.enabled,
  announcement: AppleNotificationSetting.disabled,
  authorizationStatus: AuthorizationStatus.authorized,
  badge: AppleNotificationSetting.enabled,
  carPlay: AppleNotificationSetting.disabled,
  lockScreen: AppleNotificationSetting.enabled,
  notificationCenter: AppleNotificationSetting.enabled,
  showPreviews: AppleShowPreviewSetting.always,
  timeSensitive: AppleNotificationSetting.disabled,
  criticalAlert: AppleNotificationSetting.disabled,
  sound: AppleNotificationSetting.enabled,
  providesAppNotificationSettings: AppleNotificationSetting.disabled,
);

/// A hand-written fake: only a handful of [FirebaseMessaging] members are used, and
/// mockito can't stub the non-nullable ones without codegen. Anything unimplemented
/// throws, so an unexpected call fails the test loudly.
class FakeFirebaseMessaging extends Fake implements FirebaseMessaging {
  /// Lets tests push a token the way FCM does once APNS registration completes.
  final tokenRefreshController = StreamController<String>.broadcast();

  /// APNS tokens handed out one per poll. The last entry repeats forever, so
  /// `[null]` means APNS never registers and `[null, null, 'apns']` means it
  /// registers on the third poll.
  List<String?> apnsTokens = ['apns-token'];
  String? fcmToken;
  Object? getTokenError;
  Object? requestPermissionError;
  Object? getNotificationSettingsError;

  int onTokenRefreshReads = 0;
  int requestPermissionCalls = 0;
  int getTokenCalls = 0;
  int getApnsTokenCalls = 0;
  int deleteTokenCalls = 0;

  @override
  Stream<String> get onTokenRefresh {
    onTokenRefreshReads++;
    return tokenRefreshController.stream;
  }

  @override
  Future<NotificationSettings> requestPermission({
    bool alert = true,
    bool announcement = false,
    bool badge = true,
    bool carPlay = false,
    bool criticalAlert = false,
    bool provisional = false,
    bool sound = true,
    bool providesAppNotificationSettings = false,
  }) async {
    requestPermissionCalls++;
    if (requestPermissionError != null) throw requestPermissionError!;
    return _settings;
  }

  @override
  Future<void> setForegroundNotificationPresentationOptions({bool alert = false, bool badge = false, bool sound = false}) async {}

  @override
  Future<String?> getAPNSToken() async {
    final index = getApnsTokenCalls++;
    return apnsTokens[index.clamp(0, apnsTokens.length - 1)];
  }

  @override
  Future<String?> getToken({String? vapidKey}) async {
    getTokenCalls++;
    if (getTokenError != null) throw getTokenError!;
    return fcmToken;
  }

  @override
  Future<NotificationSettings> getNotificationSettings() async {
    if (getNotificationSettingsError != null) throw getNotificationSettingsError!;
    return _settings;
  }

  @override
  Future<void> deleteToken() async {
    deleteTokenCalls++;
  }
}

void main() {
  basicInit();

  late FakeFirebaseMessaging messaging;
  late ProviderContainer container;
  late List<String> tokensReported;
  late List<FlutterErrorDetails> reportedErrors;
  late List<RemoteMessage?> showInAppRequests;
  FlutterExceptionHandler? originalOnError;

  /// A service with fast APNS polling, so tests don't wait on real time.
  FcmNotificationService createService({bool usesApns = true}) => FcmNotificationService(
    localNotificationService: null,
    onAppOpenWhenNotificationReceived: null,
    onShowInAppRequested: showInAppRequests.add,
    onCacheClearRequested: null,
    refRead: container.read,
    onTokenChanged: tokensReported.add,
    messaging: messaging,
    usesApns: () => usesApns,
    apnsTokenTimeout: const Duration(milliseconds: 60),
    apnsTokenPollInterval: const Duration(milliseconds: 10),
  );

  setUp(() {
    messaging = FakeFirebaseMessaging();
    container = ProviderContainer();
    tokensReported = [];
    reportedErrors = [];
    showInAppRequests = [];
    originalOnError = FlutterError.onError;
    FlutterError.onError = reportedErrors.add;
  });

  tearDown(() {
    FlutterError.onError = originalOnError;
    messaging.tokenRefreshController.close();
    container.dispose();
  });

  group('FCM token fetching', () {
    test('waits for the APNS token before asking for the FCM token', () async {
      // APNS is unavailable for the first two polls, then registration completes.
      messaging.apnsTokens = [null, null, 'apns-token'];
      messaging.fcmToken = 'fcm-token';

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();

      expect(messaging.getApnsTokenCalls, 3);
      expect(messaging.getTokenCalls, 1);
      expect(tokensReported, ['fcm-token']);
      expect(service.fcmToken, 'fcm-token');
      expect(reportedErrors, isEmpty);
    });

    test('does not ask for the FCM token while the APNS token is missing', () async {
      messaging.apnsTokens = [null];
      messaging.fcmToken = 'fcm-token';

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();

      // Asking here is what threw `apns-token-not-set` and crashed the app.
      expect(messaging.getTokenCalls, 0);
      expect(tokensReported, isEmpty);
      expect(reportedErrors, isEmpty);
    });

    test('picks up the token from onTokenRefresh after an APNS timeout', () async {
      messaging.apnsTokens = [null];

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();
      expect(tokensReported, isEmpty);

      // FCM hands us the token once APNS registration finally completes.
      messaging.tokenRefreshController.add('late-token');
      await pumpEventQueue();

      expect(tokensReported, ['late-token']);
      expect(service.fcmToken, 'late-token');
    });

    test('skips the APNS wait on platforms without APNS', () async {
      messaging.fcmToken = 'fcm-token';

      final service = createService(usesApns: false);
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();

      expect(messaging.getApnsTokenCalls, 0);
      expect(tokensReported, ['fcm-token']);
    });

    test('a null token is not reported upstream', () async {
      messaging.fcmToken = null;

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();

      expect(messaging.getTokenCalls, 1);
      expect(tokensReported, isEmpty);
      expect(reportedErrors, isEmpty);
    });
  });

  group('error handling', () {
    test('apns-token-not-set from getToken is not reported as an error', () async {
      messaging.getTokenError = FirebaseException(
        plugin: 'firebase_messaging',
        code: 'apns-token-not-set',
        message: 'APNS token has not been set yet.',
      );

      final service = createService();
      addTearDown(service.dispose);

      await expectLater(service.requestPermissionAndSetup(), completion(isNotNull));
      expect(reportedErrors, isEmpty);
      expect(tokensReported, isEmpty);
    });

    test('other getToken failures are still reported', () async {
      messaging.getTokenError = FirebaseException(plugin: 'firebase_messaging', code: 'unknown');

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();

      expect(reportedErrors, hasLength(1));
      expect(reportedErrors.single.context.toString(), contains('Error getting FCM token'));
    });

    test('a failing permission request returns null instead of throwing', () async {
      messaging.requestPermissionError = Exception('no permission plugin');

      final service = createService();
      addTearDown(service.dispose);

      await expectLater(service.requestPermissionAndSetup(), completion(isNull));
      expect(reportedErrors, hasLength(1));
      expect(messaging.getTokenCalls, 0);
    });

    test('getAuthorizationStatus returns null instead of throwing', () async {
      messaging.getNotificationSettingsError = Exception('boom');

      final service = createService();
      addTearDown(service.dispose);

      await expectLater(service.getAuthorizationStatus(), completion(isNull));
    });
  });

  group('repeated calls', () {
    test('concurrent setup calls share one in-flight setup', () async {
      messaging.fcmToken = 'fcm-token';

      final service = createService();
      addTearDown(service.dispose);
      await Future.wait([service.requestPermissionAndSetup(), service.requestPermissionAndSetup(), service.requestPermissionAndSetup()]);

      expect(messaging.requestPermissionCalls, 1);
      expect(messaging.getTokenCalls, 1);
      expect(tokensReported, ['fcm-token']);
    });

    test('a later call retries the setup', () async {
      messaging.fcmToken = 'fcm-token';

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();
      await service.requestPermissionAndSetup();

      expect(messaging.requestPermissionCalls, 2);
      // ...but an unchanged token is only reported upstream once.
      expect(tokensReported, ['fcm-token']);
    });

    test('setup only subscribes to onTokenRefresh once', () async {
      messaging.fcmToken = 'fcm-token';

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();
      await service.requestPermissionAndSetup();

      expect(messaging.onTokenRefreshReads, 1);
    });

    test('the same token from getToken and onTokenRefresh is reported once', () async {
      messaging.fcmToken = 'fcm-token';

      final service = createService();
      addTearDown(service.dispose);
      await service.requestPermissionAndSetup();

      messaging.tokenRefreshController.add('fcm-token');
      await pumpEventQueue();
      expect(tokensReported, ['fcm-token']);

      messaging.tokenRefreshController.add('rotated-token');
      await pumpEventQueue();
      expect(tokensReported, ['fcm-token', 'rotated-token']);
    });
  });

  test('a token arriving after dispose is not reported', () async {
    messaging.fcmToken = 'fcm-token';

    final service = createService();
    await service.requestPermissionAndSetup();
    tokensReported.clear();
    service.dispose();

    messaging.tokenRefreshController.add('post-dispose-token');
    await pumpEventQueue();

    expect(tokensReported, isEmpty);
  });

  group('show_in_app', () {
    RemoteMessage messageWith(Map<String, dynamic> data) => RemoteMessage(
      data: data,
      notification: const RemoteNotification(title: 'Title', body: 'Body'),
    );

    test("is honoured when sent as the string 'true', which is how FCM delivers it", () {
      final service = createService();
      addTearDown(service.dispose);

      service.handleMessage(messageWith({'show_in_app': 'true'}), userInteracted: true);

      expect(showInAppRequests, hasLength(1));
    });

    test('is honoured when sent as a real bool', () {
      final service = createService();
      addTearDown(service.dispose);

      service.handleMessage(messageWith({'show_in_app': true}), userInteracted: true);

      expect(showInAppRequests, hasLength(1));
    });

    test('is ignored when absent or false', () {
      final service = createService();
      addTearDown(service.dispose);

      service.handleMessage(messageWith({}), userInteracted: true);
      service.handleMessage(messageWith({'show_in_app': 'false'}), userInteracted: true);
      service.handleMessage(messageWith({'show_in_app': false}), userInteracted: true);
      service.handleMessage(messageWith({'show_in_app': 'yes'}), userInteracted: true);

      expect(showInAppRequests, isEmpty);
    });

    test('is ignored when the notification was not opened by the user', () {
      final service = createService();
      addTearDown(service.dispose);

      service.handleMessage(messageWith({'show_in_app': 'true'}));

      expect(showInAppRequests, isEmpty);
    });
  });

  test('deleteToken clears the cached token', () async {
    messaging.fcmToken = 'fcm-token';

    final service = createService();
    addTearDown(service.dispose);
    await service.requestPermissionAndSetup();
    expect(service.fcmToken, 'fcm-token');

    service.deleteToken();
    expect(service.fcmToken, isNull);
    expect(messaging.deleteTokenCalls, 1);
  });
}
