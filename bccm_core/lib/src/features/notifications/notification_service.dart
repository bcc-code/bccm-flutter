import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// FCM delivers every `data` value as a string, so a `show_in_app: true` set on the
/// server arrives as `'true'`. Accept both, and treat anything else as false.
bool _isTrue(Object? value) => value == true || value == 'true';

/// Each app should override this provider with e.g. [FcmNotificationService].
final notificationServiceProvider = Provider<NotificationService>((ref) {
  debugPrint('WARNING: notificationServiceProvider is not overriden. Using DisabledNotificationService.');
  return DisabledNotificationService();
});

abstract class NotificationService {
  Future<NotificationSettings?> requestPermissionAndSetup();
  Future<AuthorizationStatus?> getAuthorizationStatus();
  void dispose();
  void deleteToken();
}

class DisabledNotificationService implements NotificationService {
  @override
  Future<NotificationSettings?> requestPermissionAndSetup() {
    return Future.value();
  }

  @override
  Future<AuthorizationStatus?> getAuthorizationStatus() {
    return Future.value();
  }

  @override
  void dispose() {}
  @override
  void deleteToken() {}
}

class FcmNotificationService implements NotificationService {
  /// On Apple platforms the FCM token can only be fetched once APNS has handed us a
  /// device token. Asking earlier throws `apns-token-not-set`, so we poll for it first.
  static const kApnsTokenTimeout = Duration(seconds: 10);
  static const kApnsTokenPollInterval = Duration(milliseconds: 250);

  final LocalNotificationService? localNotificationService;
  String? fcmToken;
  late StreamSubscription<AppReadyEvent> _appReadySubscription;
  StreamSubscription<RemoteMessage>? _onMessageSubscription;
  StreamSubscription<RemoteMessage>? _onMessageOpenedApp;
  StreamSubscription<String>? _tokenSubscription;
  StreamSubscription<NotificationResponse>? _localNotificationSubscription;
  Future<NotificationSettings?>? _setupInProgress;
  bool _disposed = false;
  void Function(String token) onTokenChanged;
  final void Function(RemoteMessage? message)? onAppOpenWhenNotificationReceived;
  final void Function(RemoteMessage? message)? onShowInAppRequested;
  final void Function(RemoteMessage? message)? onCacheClearRequested;
  final RefReadFn refRead;

  /// The messaging instance to use. Overridable for tests.
  final FirebaseMessaging _messaging;

  /// Whether this platform requires an APNS token before an FCM token can be fetched.
  /// Overridable for tests.
  final bool Function() _usesApns;

  /// How long to wait for the APNS token before giving up. Overridable for tests.
  final Duration apnsTokenTimeout;
  final Duration apnsTokenPollInterval;

  FcmNotificationService({
    required this.localNotificationService,
    required this.onTokenChanged,
    required this.onAppOpenWhenNotificationReceived,
    required this.onShowInAppRequested,
    required this.onCacheClearRequested,
    required this.refRead,
    @visibleForTesting FirebaseMessaging? messaging,
    @visibleForTesting bool Function()? usesApns,
    @visibleForTesting this.apnsTokenTimeout = kApnsTokenTimeout,
    @visibleForTesting this.apnsTokenPollInterval = kApnsTokenPollInterval,
  }) : _messaging = messaging ?? FirebaseMessaging.instance,
       _usesApns = usesApns ?? _platformUsesApns {
    _appReadySubscription = globalEventBus.on<AppReadyEvent>().listen(_onAppReady);
  }

  static bool _platformUsesApns() => !kIsWeb && (Platform.isIOS || Platform.isMacOS);

  @override
  void dispose() {
    _disposed = true;
    _appReadySubscription.cancel();
    _onMessageSubscription?.cancel();
    _onMessageOpenedApp?.cancel();
    _tokenSubscription?.cancel();
    _localNotificationSubscription?.cancel();
  }

  void _setupLocalNotifications() {
    _localNotificationSubscription ??= localNotificationService?.stream.listen(_onLocalNotificationOpened);
  }

  void _onLocalNotificationOpened(NotificationResponse response) {
    final payload = response.payload;
    if (payload == null) return;
    final data = jsonDecode(payload) as Map<String, dynamic>;
    if (data['firebase_foreground'] != true) return;
    final action = data['action'] as String?;
    if (action == null) return;
    _handleAction(data: data, openedFromBackground: true);
  }

  void _onTokenChanged(String token) {
    if (_disposed || token == fcmToken) return;
    fcmToken = token;
    onTokenChanged(token);
    refRead(analyticsProvider).notificationsDeviceTokenUpdated(NotificationDeviceTokenUpdatedEvent());
  }

  @override
  void deleteToken() {
    fcmToken = null;
    _messaging.deleteToken().catchError((e) {
      debugPrint('Error deleting FCM token: $e');
    });
  }

  /// Request permission and get token to start receiving push notifications.
  ///
  /// Safe to call repeatedly: concurrent calls share the same in-flight setup.
  /// Never throws, so callers can fire and forget. Returns null if setup failed.
  @override
  Future<NotificationSettings?> requestPermissionAndSetup() {
    return _setupInProgress ??= _requestPermissionAndSetup().whenComplete(() => _setupInProgress = null);
  }

  Future<NotificationSettings?> _requestPermissionAndSetup() async {
    final NotificationSettings result;
    try {
      result = await _messaging.requestPermission();
      await _messaging.setForegroundNotificationPresentationOptions(alert: true, badge: false, sound: false);
    } catch (e, st) {
      FlutterError.reportError(
        FlutterErrorDetails(exception: e, stack: st, library: 'bccm_core', context: ErrorDescription('Error requesting notification permission')),
      );
      return null;
    }
    _setupLocalNotifications();

    // Listen before fetching, so a token that arrives while we wait for APNS isn't missed.
    _setupTokenListeners();
    await _fetchToken();
    return result;
  }

  Future<void> _fetchToken() async {
    if (!await _awaitApnsTokenIfNeeded()) {
      // No APNS token available (yet). Fetching the FCM token now would throw
      // `apns-token-not-set`, so leave it to the onTokenRefresh listener instead.
      debugPrint('Skipping FCM token fetch: no APNS token available.');
      return;
    }
    try {
      final token = await _messaging.getToken();
      if (_disposed) return;
      if (token != null) {
        _onTokenChanged(token);
      } else {
        debugPrint('_messaging.getToken() returned null');
      }
    } catch (e, st) {
      if (e is FirebaseException && e.code == 'apns-token-not-set') {
        // The APNS token went away between the check and the fetch. onTokenRefresh will
        // deliver the token once registration completes, so this isn't worth reporting.
        debugPrint('Could not get FCM token: ${e.code}');
        return;
      }
      FlutterError.reportError(
        FlutterErrorDetails(exception: e, stack: st, library: 'bccm_core', context: ErrorDescription('Error getting FCM token')),
      );
    }
  }

  /// Waits for APNS to hand us a device token on Apple platforms.
  /// Returns true if a token is available, or if the platform doesn't use APNS.
  Future<bool> _awaitApnsTokenIfNeeded() async {
    if (!_usesApns()) return true;
    final stopwatch = Stopwatch()..start();
    while (!_disposed) {
      try {
        if (await _messaging.getAPNSToken() != null) return true;
      } catch (e) {
        debugPrint('Error getting APNS token: $e');
        return false;
      }
      if (stopwatch.elapsed >= apnsTokenTimeout) return false;
      await Future.delayed(apnsTokenPollInterval);
    }
    return false;
  }

  @override
  Future<AuthorizationStatus?> getAuthorizationStatus() async {
    try {
      final result = await _messaging.getNotificationSettings();
      return result.authorizationStatus;
    } catch (e) {
      debugPrint('Error getting notification settings: $e');
      return null;
    }
  }

  void _setupTokenListeners() {
    _tokenSubscription ??= _messaging.onTokenRefresh.listen(_onTokenChanged)
      ..onError((err) {
        debugPrint('error onTokenRefresh');
      });
  }

  void _onAppReady(AppReadyEvent _) async {
    try {
      var initialMessage = await _messaging.getInitialMessage();
      if (initialMessage != null) {
        debugPrint('Handling initial notification message.');
        handleMessage(initialMessage, userInteracted: true);
      }

      await _messaging.setDeliveryMetricsExportToBigQuery(true);
    } catch (e) {
      debugPrint('Error during notification app-ready setup: $e');
    }
    if (_disposed) return;

    _onMessageSubscription ??= FirebaseMessaging.onMessage.listen(handleMessage);
    _onMessageOpenedApp ??= FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('_onMessageOpenedApp');
      handleMessage(message, userInteracted: true);
    });
    debugPrint('Notification listeners set up.');
  }

  @visibleForTesting
  void handleMessage(RemoteMessage message, {bool userInteracted = false}) {
    final notification = message.notification;
    if (!userInteracted && notification != null) {
      onAppOpenWhenNotificationReceived?.call(message);
      if (!kIsWeb && Platform.isAndroid) {
        _showLocalNotification(message);
      }
      _trackNotificationReceived(message);
    }
    if (userInteracted && notification != null) {
      _trackNotificationOpened(message);
    }
    if (userInteracted && notification != null && _isTrue(message.data['show_in_app'])) {
      onShowInAppRequested?.call(message);
    }
    _handleAction(data: message.data, openedFromBackground: userInteracted, message: message);
  }

  void _showLocalNotification(RemoteMessage message) {
    final context = globalNavigatorKey.currentContext;
    if (context == null) {
      debugPrint('No context to open notification');
      return;
    }
    final notification = message.notification;
    if (notification == null) {
      debugPrint('No notification to open');
      return;
    }
    final title = notification.title;
    final body = notification.body;
    debugPrint('Showing notification: $title, $body');
    FlutterLocalNotificationsPlugin().show(
      notification.hashCode,
      title,
      body,
      const NotificationDetails(android: AndroidNotificationDetails('high_importance_channel', 'High Importance Notifications')),
      payload: jsonEncode({'firebase_foreground': true, ...message.data}),
    );
  }

  void _handleAction({required Map<String, dynamic> data, bool openedFromBackground = false, RemoteMessage? message}) {
    final context = globalNavigatorKey.currentContext;
    if (context?.mounted != true) {
      debugPrint('Navigator was not mounted while handling an FCM message. Aborting.');
      return;
    }
    if (openedFromBackground && data['action'] == 'deep_link') {
      if (data['deep_link'] is String) {
        String path = data['deep_link'];
        debugPrint('navigating to deep_link from notification: $path');
        context!.router.navigateNamedFromRoot(path);
      }
    }
    if (data['action'] == 'clear_cache') {
      onCacheClearRequested?.call(message);
    }
  }

  void _trackNotificationReceived(RemoteMessage message) {
    tryCatchRecordError(() {
      refRead(analyticsProvider).notificationReceived(
        NotificationReceivedEvent(notificationId: message.messageId, action: message.data['action'], deeplink: message.data['deep_link']),
      );
    });
  }

  void _trackNotificationOpened(RemoteMessage message) {
    tryCatchRecordError(() {
      refRead(analyticsProvider).notificationOpened(NotificationOpenedEvent(notificationId: message.messageId));
    });
  }
}
