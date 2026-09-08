import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_prompt.freezed.dart';
part 'notification_prompt.g.dart';

@freezed
abstract class NotificationPromptDismissedEvent with _$NotificationPromptDismissedEvent {
  const factory NotificationPromptDismissedEvent({
    required int timesDismissed,
  }) = _NotificationPromptDismissedEvent;

  factory NotificationPromptDismissedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptDismissedEventFromJson(json);
}

@freezed
abstract class NotificationPromptClickedEvent with _$NotificationPromptClickedEvent {
  const factory NotificationPromptClickedEvent() = _NotificationPromptClickedEvent;
  factory NotificationPromptClickedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptClickedEventFromJson(json);
}

@freezed
abstract class NotificationPromptDeniedEvent with _$NotificationPromptDeniedEvent {
  const factory NotificationPromptDeniedEvent() = _NotificationPromptDeniedEvent;
  factory NotificationPromptDeniedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptDeniedEventFromJson(json);
}

@freezed
abstract class NotificationPromptAcceptedEvent with _$NotificationPromptAcceptedEvent {
  const factory NotificationPromptAcceptedEvent() = _NotificationPromptAcceptedEvent;
  factory NotificationPromptAcceptedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptAcceptedEventFromJson(json);
}

@freezed
abstract class NotificationsSettingToggledEvent with _$NotificationsSettingToggledEvent {
  const factory NotificationsSettingToggledEvent({
    required bool enabled,
  }) = _NotificationsSettingToggledEvent;

  factory NotificationsSettingToggledEvent.fromJson(Map<String, dynamic> json) => _$NotificationsSettingToggledEventFromJson(json);
}
