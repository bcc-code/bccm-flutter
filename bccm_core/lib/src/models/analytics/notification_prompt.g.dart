// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationPromptDismissedEvent _$NotificationPromptDismissedEventFromJson(
  Map<String, dynamic> json,
) => _NotificationPromptDismissedEvent(
  timesDismissed: (json['timesDismissed'] as num).toInt(),
);

Map<String, dynamic> _$NotificationPromptDismissedEventToJson(
  _NotificationPromptDismissedEvent instance,
) => <String, dynamic>{'timesDismissed': instance.timesDismissed};

_NotificationPromptClickedEvent _$NotificationPromptClickedEventFromJson(
  Map<String, dynamic> json,
) => _NotificationPromptClickedEvent();

Map<String, dynamic> _$NotificationPromptClickedEventToJson(
  _NotificationPromptClickedEvent instance,
) => <String, dynamic>{};

_NotificationPromptDeniedEvent _$NotificationPromptDeniedEventFromJson(
  Map<String, dynamic> json,
) => _NotificationPromptDeniedEvent();

Map<String, dynamic> _$NotificationPromptDeniedEventToJson(
  _NotificationPromptDeniedEvent instance,
) => <String, dynamic>{};

_NotificationPromptAcceptedEvent _$NotificationPromptAcceptedEventFromJson(
  Map<String, dynamic> json,
) => _NotificationPromptAcceptedEvent();

Map<String, dynamic> _$NotificationPromptAcceptedEventToJson(
  _NotificationPromptAcceptedEvent instance,
) => <String, dynamic>{};

_NotificationsSettingToggledEvent _$NotificationsSettingToggledEventFromJson(
  Map<String, dynamic> json,
) => _NotificationsSettingToggledEvent(enabled: json['enabled'] as bool);

Map<String, dynamic> _$NotificationsSettingToggledEventToJson(
  _NotificationsSettingToggledEvent instance,
) => <String, dynamic>{'enabled': instance.enabled};
