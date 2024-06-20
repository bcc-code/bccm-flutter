import 'package:bccm_core/platform.dart';
import 'package:flutter/widgets.dart';

class TimeMeasurements {
  static final mainFunction = TimeMeasurement(key: 'main_function');
  static final startupToInitDone = TimeMeasurement(key: 'startup_to_init_done');
  static final startupToHomeLoaded = TimeMeasurement(key: 'startup_to_home_loaded', targetCheckpointCount: 1);
}

class TimeMeasurement extends Stopwatch {
  TimeMeasurement({
    required this.key,
    this.targetCheckpointCount = 0,
  });
  final String key;
  bool _tracked = false;
  bool _cancelled = false;

  /// The number of checkpoints we expect to have before we track the time
  final int targetCheckpointCount;
  final List<TimeMeasurementCheckpoint> _checkpoints = [];

  /// Track a checkpoint to ensure we dont track whenver we stray from what this is supposed to measure
  ///
  /// Its a string just for debugging, we use the count of checkpoints to determine if we should track
  void addCheckpoint(String checkpoint) {
    _checkpoints.add(TimeMeasurementCheckpoint(checkpoint, elapsedMilliseconds));
  }

  /// Cancel the measurement, e.g if the measurement doesnt make sense anymore
  ///
  /// No tracking will be done upon calling [track]
  void cancel() {
    _cancelled = true;
    stop();
  }

  /// Stops the stopwatch and tracks the time
  ///
  /// Can be called multiple times, but will only track the first time.
  ///
  /// Will cancel the measurement if the number of checkpoints doesnt match the [targetCheckpointCount]
  void track(Analytics analytics, {Map<String, dynamic>? meta}) {
    if (_tracked || _cancelled) return;
    if (_checkpoints.length != targetCheckpointCount) {
      debugPrint('TimeMeasurements: $key cancelled due to missing checkpoints');
      cancel();
      return;
    }
    _tracked = true;

    stop();
    analytics.timeMeasurement(TimeMeasurementEvent(
      key: key,
      seconds: elapsed.inMilliseconds / 1000,
      meta: {
        if (_checkpoints.isNotEmpty) 'checkpoints': _checkpoints.map((e) => e.toJson()).toList(),
        if (meta != null && meta.isNotEmpty) ...meta,
      },
    ));
    debugPrint('TimeMeasurements: $key took ${elapsedMilliseconds}ms');
  }
}

class TimeMeasurementCheckpoint {
  TimeMeasurementCheckpoint(this.debugKey, this.milliseconds);

  final String debugKey;
  final int milliseconds;

  Map<String, dynamic> toJson() {
    return {
      'debugKey': debugKey,
      'milliseconds': milliseconds,
    };
  }
}
