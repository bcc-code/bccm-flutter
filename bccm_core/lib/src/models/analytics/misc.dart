import 'package:freezed_annotation/freezed_annotation.dart';

part 'misc.freezed.dart';
part 'misc.g.dart';

@freezed
class InteractionEvent with _$InteractionEvent {
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
class ImpressionEvent with _$ImpressionEvent {
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
class GuideShownEvent with _$GuideShownEvent {
  const factory GuideShownEvent({
    String? guide,
    Map<String, dynamic>? meta,
  }) = _GuideShownEvent;

  factory GuideShownEvent.fromJson(Map<String, dynamic> json) => _$GuideShownEventFromJson(json);
}

@freezed
class TimeMeasurementEvent with _$TimeMeasurementEvent {
  const factory TimeMeasurementEvent({
    String? key,
    double? seconds,
    Map<String, dynamic>? meta,
  }) = _TimeMeasurementEvent;

  factory TimeMeasurementEvent.fromJson(Map<String, dynamic> json) => _$TimeMeasurementEventFromJson(json);
}

@freezed
class LogEvent with _$LogEvent {
  const factory LogEvent({
    String? name,
    String? message,
    String? pageCode,
    Map<String, dynamic>? meta,
  }) = _LogEvent;

  factory LogEvent.fromJson(Map<String, dynamic> json) => _$LogEventFromJson(json);
}

@freezed
class VideoPlayedEvent with _$VideoPlayedEvent {
  const factory VideoPlayedEvent({
    String? videoId,
    String? referenceId,
    Map<String, dynamic>? data,
  }) = _VideoPlayedEvent;

  factory VideoPlayedEvent.fromJson(Map<String, dynamic> json) => _$VideoPlayedEventFromJson(json);
}
