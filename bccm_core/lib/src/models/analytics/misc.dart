import 'package:freezed_annotation/freezed_annotation.dart';

part 'misc.freezed.dart';
part 'misc.g.dart';

@freezed
abstract class InteractionEvent with _$InteractionEvent {
  const factory InteractionEvent({
    String? interaction,
    String? pageCode,
    String? contextElementType,
    String? contextElementId,
    Map<String, dynamic>? meta,
  }) = _InteractionEvent;

  factory InteractionEvent.fromJson(Map<String, dynamic> json) => _$InteractionEventFromJson(json);
}

@freezed
abstract class ImpressionEvent with _$ImpressionEvent {
  const factory ImpressionEvent({
    String? name,
    String? pageCode,
    String? contextElementType,
    String? contextElementId,
    Map<String, dynamic>? meta,
  }) = _ImpressionEvent;

  factory ImpressionEvent.fromJson(Map<String, dynamic> json) => _$ImpressionEventFromJson(json);
}

@freezed
abstract class GuideShownEvent with _$GuideShownEvent {
  const factory GuideShownEvent({
    String? guide,
    Map<String, dynamic>? meta,
  }) = _GuideShownEvent;

  factory GuideShownEvent.fromJson(Map<String, dynamic> json) => _$GuideShownEventFromJson(json);
}

@freezed
abstract class TimeMeasurementEvent with _$TimeMeasurementEvent {
  const factory TimeMeasurementEvent({
    String? key,
    double? seconds,
    Map<String, dynamic>? meta,
  }) = _TimeMeasurementEvent;

  factory TimeMeasurementEvent.fromJson(Map<String, dynamic> json) => _$TimeMeasurementEventFromJson(json);
}

@freezed
abstract class LogEvent with _$LogEvent {
  const factory LogEvent({
    String? name,
    String? message,
    String? pageCode,
    Map<String, dynamic>? meta,
  }) = _LogEvent;

  factory LogEvent.fromJson(Map<String, dynamic> json) => _$LogEventFromJson(json);
}

@freezed
abstract class VideoPlayedEvent with _$VideoPlayedEvent {
  const factory VideoPlayedEvent({
    String? videoId,
    String? referenceId,
    Map<String, dynamic>? data,
  }) = _VideoPlayedEvent;

  factory VideoPlayedEvent.fromJson(Map<String, dynamic> json) => _$VideoPlayedEventFromJson(json);
}
