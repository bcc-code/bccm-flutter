import 'misc.dart';
import 'package:flutter/services.dart';
import 'package:universal_io/io.dart';
import 'package:vibration/vibration.dart';

/// A drop-in replacement for [HapticFeedback].
/// Safer to use (catches errors), and works on more devices.
///
/// The problem with flutter's built-in solution is that it doesn't work reliably on Samsung devices.
/// Even when haptic is enabled in settings, it's not working. https://github.com/flutter/flutter/issues/73987
///
/// This class uses [Vibration] instead, which works on all devices.
class CustomHapticFeedback {
  CustomHapticFeedback._();

  static bool? _overrideCache;
  static Future<bool> _shouldOverrideWithVibration() async {
    if (_overrideCache != null) {
      return Future.value(_overrideCache);
    }
    if (Platform.isAndroid) {
      final hasVibrator = await Vibration.hasVibrator();
      return _overrideCache = hasVibrator ?? false;
    }
    return _overrideCache = false;
  }

  static Future<void> vibrate() async => await tryCatchRecordErrorAsync<void>(HapticFeedback.vibrate);

  static Future<void> lightImpact() async {
    await tryCatchRecordErrorAsync<void>(() async {
      if (await _shouldOverrideWithVibration()) {
        return Vibration.vibrate(duration: 30, amplitude: 30);
      }
      return HapticFeedback.lightImpact();
    });
  }

  static Future<void> mediumImpact() async {
    await tryCatchRecordErrorAsync<void>(() async {
      if (await _shouldOverrideWithVibration()) {
        return Vibration.vibrate(duration: 40, amplitude: 40);
      }
      return HapticFeedback.mediumImpact();
    });
  }

  static Future<void> heavyImpact() async {
    await tryCatchRecordErrorAsync<void>(() async {
      if (await _shouldOverrideWithVibration()) {
        return Vibration.vibrate(duration: 50, amplitude: 60);
      }
      return HapticFeedback.heavyImpact();
    });
  }

  static Future<void> selectionClick() async {
    await tryCatchRecordErrorAsync<void>(() async {
      if (await _shouldOverrideWithVibration()) {
        return Vibration.vibrate(duration: 30, amplitude: 30);
      }
      return HapticFeedback.selectionClick();
    });
  }
}
