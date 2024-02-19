import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
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

  if (!kDebugMode) {
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack != StackTrace.empty ? stack : StackTrace.current, fatal: false);
      return true;
    };
  } else {
    FlutterError.onError = (errorDetails) {
      debugPrint(errorDetails.toStringShort());
      debugPrint(errorDetails.toString());
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
      return true;
    };
  }

  if (onFirebaseBackgroundMessage != null) {
    FirebaseMessaging.onBackgroundMessage(onFirebaseBackgroundMessage);
  }
}
