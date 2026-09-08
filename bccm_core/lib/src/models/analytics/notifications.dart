import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
abstract class NotificationReceivedEvent with _$NotificationReceivedEvent {
  const factory NotificationReceivedEvent({
    String? notificationId,
    String? action,
    String? deeplink,
  }) = _NotificationReceivedEvent;

  factory NotificationReceivedEvent.fromJson(Map<String, dynamic> json) => _$NotificationReceivedEventFromJson(json);
}

@freezed
abstract class NotificationOpenedEvent with _$NotificationOpenedEvent {
  const factory NotificationOpenedEvent({
    String? notificationId,
  }) = _NotificationOpenedEvent;

  factory NotificationOpenedEvent.fromJson(Map<String, dynamic> json) => _$NotificationOpenedEventFromJson(json);
}

@freezed
abstract class NotificationDeviceTokenUpdatedEvent with _$NotificationDeviceTokenUpdatedEvent {
  const factory NotificationDeviceTokenUpdatedEvent() = _NotificationDeviceTokenUpdatedEvent;
  factory NotificationDeviceTokenUpdatedEvent.fromJson(Map<String, dynamic> json) => _$NotificationDeviceTokenUpdatedEventFromJson(json);
}

@freezed
abstract class NotificationsStatusEvent with _$NotificationsStatusEvent {
  const factory NotificationsStatusEvent({
    String? recipientId,
    bool? enabled,
  }) = _NotificationsStatusEvent;

  factory NotificationsStatusEvent.fromJson(Map<String, dynamic> json) => _$NotificationsStatusEventFromJson(json);
}
