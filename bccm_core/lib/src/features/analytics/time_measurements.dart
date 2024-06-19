import 'package:bccm_core/platform.dart';
import 'package:flutter/widgets.dart';

class TimeMeasurements {
  static final mainFunction = TimeMeasurement(key: 'main_function');
  static final startupToInitDone = TimeMeasurement(key: 'startup_to_init_done');
  static final startupToHomeLoaded = TimeMeasurement(key: 'startup_to_home_loaded');
}

class TimeMeasurement extends Stopwatch {
  TimeMeasurement({
    required this.key,
  });
  final String key;
  bool _tracked = false;

  /// Stops the stopwatch and tracks the time
  ///
  /// Can be called multiple times, but will only track the first time
  void track(Analytics analytics) {
    if (_tracked) return;
    _tracked = true;

    stop();
    analytics.timeMeasurement(TimeMeasurementEvent(
      key: key,
      seconds: elapsed.inMilliseconds / 1000,
    ));
    debugPrint('TimeMeasurements: $key took ${elapsedMilliseconds}ms');
  }
}
