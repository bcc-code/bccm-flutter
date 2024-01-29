import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:bccm_core/bccm_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Each app should override this provider with e.g. [FcmNotificationService].
final notificationServiceProvider = Provider<NotificationService>((ref) {
  debugPrint(
      'WARNING: notificationServiceProvider is not overriden. Using DisabledNotificationService.');
  return DisabledNotificationService();
});

abstract class NotificationService {
  Future<void> requestPermissionAndSetup();
  void dispose();
  void deleteToken();
}

class DisabledNotificationService implements NotificationService {
  @override
  Future<void> requestPermissionAndSetup() {
    return Future.value();
  }

  @override
  void dispose() {}
  @override
  void deleteToken() {}
}

class FcmNotificationService implements NotificationService {
  String? fcmToken;
  late StreamSubscription<AppReadyEvent> _appReadySubscription;
  StreamSubscription<RemoteMessage>? _onMessageSubscription;
  StreamSubscription<RemoteMessage>? _onMessageOpenedApp;
  StreamSubscription<String>? _tokenSubscription;
  void Function(String token) onTokenChanged;
  final void Function(RemoteMessage? message)?
      onAppOpenWhenNotificationReceived;
  final void Function(RemoteMessage? message)? onShowInAppRequested;
  final void Function(RemoteMessage? message)? onCacheClearRequested;

  FcmNotificationService({
    required this.onTokenChanged,
    required this.onAppOpenWhenNotificationReceived,
    required this.onShowInAppRequested,
    required this.onCacheClearRequested,
  }) {
    _appReadySubscription =
        globalEventBus.on<AppReadyEvent>().listen(_onAppReady);
  }

  @override
  void dispose() {
    _appReadySubscription.cancel();
    _onMessageSubscription?.cancel();
    _onMessageOpenedApp?.cancel();
    _tokenSubscription?.cancel();
  }

  void _setupLocalNotifications() {}

  void _onTokenChanged(String token) {
    fcmToken = token;
    debugPrint('FCM token changed: $token');
    onTokenChanged(token);
  }

  @override
  void deleteToken() {
    fcmToken = null;
    FirebaseMessaging.instance.deleteToken();
  }

  /// Request permission and get token to start receiving push notifications
  @override
  Future<void> requestPermissionAndSetup() async {
    var result = await FirebaseMessaging.instance.requestPermission();
    debugPrint('NotificationStatus: ${result.authorizationStatus}');
    FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
        alert: true, badge: false, sound: false);
    _setupLocalNotifications();

    final token = await FirebaseMessaging.instance.getToken();
    if (token != null) {
      _onTokenChanged(token);
    } else {
      debugPrint('FirebaseMessaging.instance.getToken() returned null');
    }
    _setupTokenListeners();
  }

  void _setupTokenListeners() {
    _tokenSubscription ??=
        FirebaseMessaging.instance.onTokenRefresh.listen(_onTokenChanged)
          ..onError((err) {
            debugPrint('error onTokenRefresh');
          });
  }

  void _onAppReady(AppReadyEvent _) async {
    var initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      debugPrint('Handling initial notification message.');
      _handleMessage(initialMessage, openedFromBackground: true);
    }

    FirebaseMessaging.instance.setDeliveryMetricsExportToBigQuery(true);

    _onMessageSubscription ??=
        FirebaseMessaging.onMessage.listen(_handleMessage);
    _onMessageOpenedApp ??=
        FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('_onMessageOpenedApp');
      _handleMessage(message, openedFromBackground: true);
    });
    debugPrint('Notification listeners set up.');
  }

  void _handleMessage(RemoteMessage message,
      {bool openedFromBackground = false}) {
    if (!openedFromBackground) {
      debugPrint('Got a message whilst in the foreground!');
    }
    debugPrint(
        'Message data: ${message.data}, notification: ${message.notification?.title}');

    final notification = message.notification;
    if (!openedFromBackground && notification != null) {
      onAppOpenWhenNotificationReceived?.call(message);
    }
    if (openedFromBackground &&
        notification != null &&
        message.data['show_in_app'] == true) {
      onShowInAppRequested?.call(message);
    }
    _handleAction(
      data: message.data,
      openedFromBackground: openedFromBackground,
      message: message,
    );
  }

  _handleAction({
    required Map<String, dynamic> data,
    bool openedFromBackground = false,
    RemoteMessage? message,
  }) {
    final context = globalNavigatorKey.currentContext;
    if (context?.mounted != true) {
      debugPrint(
          'Navigator was not mounted while handling an FCM message. Aborting.');
      return;
    }
    if (openedFromBackground && data['action'] == 'deep_link') {
      if (data['deep_link'] is String) {
        String path = data['deep_link'];
        debugPrint('navigating to deep_link from notification: $path');
        debugPrint(
            'router in notification handler: ${context!.router.currentPath} ${context.router.currentSegments}');
        context.router.navigateNamedFromRoot(path);
      }
    }
    if (data['action'] == 'clear_cache') {
      onCacheClearRequested?.call(message);
    }
  }
}
