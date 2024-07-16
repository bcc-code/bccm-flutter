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
class NotificationReceivedEvent with _$NotificationReceivedEvent {
  const factory NotificationReceivedEvent({
    String? notificationId,
    String? action,
    String? deeplink,
  }) = _NotificationReceivedEvent;

  factory NotificationReceivedEvent.fromJson(Map<String, dynamic> json) => _$NotificationReceivedEventFromJson(json);
}

@freezed
class NotificationOpenedEvent with _$NotificationOpenedEvent {
  const factory NotificationOpenedEvent({
    String? notificationId,
  }) = _NotificationOpenedEvent;

  factory NotificationOpenedEvent.fromJson(Map<String, dynamic> json) => _$NotificationOpenedEventFromJson(json);
}
