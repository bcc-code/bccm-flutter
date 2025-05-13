import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Each app should override this provider with e.g. [FcmNotificationService].
final notificationServiceProvider = Provider<NotificationService>((ref) {
  debugPrint('WARNING: notificationServiceProvider is not overriden. Using DisabledNotificationService.');
  return DisabledNotificationService();
});

abstract class NotificationService {
  Future<NotificationSettings?> requestPermissionAndSetup();
  void dispose();
  void deleteToken();
}

class DisabledNotificationService implements NotificationService {
  @override
  Future<NotificationSettings?> requestPermissionAndSetup() {
    return Future.value();
  }

  @override
  void dispose() {}
  @override
  void deleteToken() {}
}

class FcmNotificationService implements NotificationService {
  final LocalNotificationService? localNotificationService;
  String? fcmToken;
  late StreamSubscription<AppReadyEvent> _appReadySubscription;
  StreamSubscription<RemoteMessage>? _onMessageSubscription;
  StreamSubscription<RemoteMessage>? _onMessageOpenedApp;
  StreamSubscription<String>? _tokenSubscription;
  void Function(String token) onTokenChanged;
  final void Function(RemoteMessage? message)? onAppOpenWhenNotificationReceived;
  final void Function(RemoteMessage? message)? onShowInAppRequested;
  final void Function(RemoteMessage? message)? onCacheClearRequested;
  final RefReadFn refRead;

  FcmNotificationService({
    required this.localNotificationService,
    required this.onTokenChanged,
    required this.onAppOpenWhenNotificationReceived,
    required this.onShowInAppRequested,
    required this.onCacheClearRequested,
    required this.refRead,
  }) {
    _appReadySubscription = globalEventBus.on<AppReadyEvent>().listen(_onAppReady);
  }

  @override
  void dispose() {
    _appReadySubscription.cancel();
    _onMessageSubscription?.cancel();
    _onMessageOpenedApp?.cancel();
    _tokenSubscription?.cancel();
  }

  void _setupLocalNotifications() {
    localNotificationService?.stream.listen(_onLocalNotificationOpened);
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
    fcmToken = token;
    onTokenChanged(token);
  }

  @override
  void deleteToken() {
    fcmToken = null;
    FirebaseMessaging.instance.deleteToken();
  }

  /// Request permission and get token to start receiving push notifications
  @override
  Future<NotificationSettings> requestPermissionAndSetup() async {
    final result = await FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true, badge: false, sound: false);
    _setupLocalNotifications();

    try {
      final token = await FirebaseMessaging.instance.getToken();
      if (token != null) {
        _onTokenChanged(token);
      } else {
        debugPrint('FirebaseMessaging.instance.getToken() returned null');
      }
    } catch (e, st) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: e,
        stack: st,
        library: 'bccm_core',
        context: ErrorDescription('Error getting FCM token'),
      ));
    }
    _setupTokenListeners();
    return result;
  }

  Future<AuthorizationStatus> getAuthorizationStatus() async {
    final result = await FirebaseMessaging.instance.getNotificationSettings();
    return result.authorizationStatus;
  }

  void _setupTokenListeners() {
    _tokenSubscription ??= FirebaseMessaging.instance.onTokenRefresh.listen(_onTokenChanged)
      ..onError((err) {
        debugPrint('error onTokenRefresh');
      });
  }

  void _onAppReady(AppReadyEvent _) async {
    var initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      debugPrint('Handling initial notification message.');
      _handleMessage(initialMessage, userInteracted: true);
    }

    FirebaseMessaging.instance.setDeliveryMetricsExportToBigQuery(true);

    _onMessageSubscription ??= FirebaseMessaging.onMessage.listen(_handleMessage);
    _onMessageOpenedApp ??= FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('_onMessageOpenedApp');
      _handleMessage(message, userInteracted: true);
    });
    debugPrint('Notification listeners set up.');
  }

  void _handleMessage(RemoteMessage message, {bool userInteracted = false}) {
    final notification = message.notification;
    if (!userInteracted && notification != null) {
      onAppOpenWhenNotificationReceived?.call(message);
      if (Platform.isAndroid) {
        _showLocalNotification(message);
      }
      _trackNotificationReceived(message);
    }
    if (userInteracted && notification != null) {
      _trackNotificationOpened(message);
    }
    if (userInteracted && notification != null && message.data['show_in_app'] == true) {
      onShowInAppRequested?.call(message);
    }
    _handleAction(
      data: message.data,
      openedFromBackground: userInteracted,
      message: message,
    );
  }

  _showLocalNotification(RemoteMessage message) {
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
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
        ),
      ),
      payload: jsonEncode({
        'firebase_foreground': true,
        ...message.data,
      }),
    );
  }

  _handleAction({
    required Map<String, dynamic> data,
    bool openedFromBackground = false,
    RemoteMessage? message,
  }) {
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
        NotificationReceivedEvent(
          notificationId: message.messageId,
          action: message.data['action'],
          deeplink: message.data['deep_link'],
        ),
      );
    });
  }

  void _trackNotificationOpened(RemoteMessage message) {
    tryCatchRecordError(() {
      refRead(analyticsProvider).notificationOpened(
        NotificationOpenedEvent(
          notificationId: message.messageId,
        ),
      );
    });
  }
}
