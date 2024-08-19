import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

Future initFirebase(
  FirebaseOptions firebaseOptions, {
  Future<void> Function(RemoteMessage)? onFirebaseBackgroundMessage,
  FirebaseOptions? bccmFirebaseOptions,
}) async {
  try {
    await Firebase.initializeApp(
      options: firebaseOptions,
    );
  } catch (e) {
    debugPrint(e.toString());
  }
  try {
    await Firebase.initializeApp(
      name: 'bccm',
      options: bccmFirebaseOptions ??
          const FirebaseOptions(
            appId: '1:617519323732:ios:8fd75bf6b4cd0f6d89ebc1',
            apiKey: 'AIzaSyCV5dcov2D9S2b9wjTzkKDQRTWnqMUhcAU',
            messagingSenderId: '617519323732',
            projectId: 'btv-platform-prod-2',
          ),
    );
  } catch (e) {
    debugPrint(e.toString());
  }

  if (onFirebaseBackgroundMessage != null) {
    FirebaseMessaging.onBackgroundMessage(onFirebaseBackgroundMessage);
  }
}
