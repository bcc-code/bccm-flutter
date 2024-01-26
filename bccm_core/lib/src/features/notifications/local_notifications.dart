import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localNotificationServiceProvider = Provider<LocalNotificationService>((ref) {
  return LocalNotificationService(
      FlutterLocalNotificationsPlugin(),
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(),
      ))
    ..initialize();
});

class LocalNotificationService {
  final _streamController = StreamController<NotificationResponse>.broadcast();
  final InitializationSettings settings;
  Stream<NotificationResponse> get stream => _streamController.stream;

  LocalNotificationService(FlutterLocalNotificationsPlugin localNotificationsPlugin, this.settings) {}

  Future<void> initialize() {
    _setupAndroidChannels();
    return FlutterLocalNotificationsPlugin().initialize(settings, onDidReceiveNotificationResponse: (response) {
      _streamController.add(response);
    });
  }

  void _setupAndroidChannels() {
    /// This is to enable foreground notifications. Can be set as default through AndroidManifest.xml
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
    );
    FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }
}
