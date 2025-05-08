// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationPromptDismissedEventImpl
    _$$NotificationPromptDismissedEventImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationPromptDismissedEventImpl(
          timesDismissed: (json['timesDismissed'] as num).toInt(),
        );

Map<String, dynamic> _$$NotificationPromptDismissedEventImplToJson(
        _$NotificationPromptDismissedEventImpl instance) =>
    <String, dynamic>{
      'timesDismissed': instance.timesDismissed,
    };

_$NotificationPromptClickedEventImpl
    _$$NotificationPromptClickedEventImplFromJson(Map<String, dynamic> json) =>
        _$NotificationPromptClickedEventImpl();

Map<String, dynamic> _$$NotificationPromptClickedEventImplToJson(
        _$NotificationPromptClickedEventImpl instance) =>
    <String, dynamic>{};

_$NotificationPromptDeniedEventImpl
    _$$NotificationPromptDeniedEventImplFromJson(Map<String, dynamic> json) =>
        _$NotificationPromptDeniedEventImpl();

Map<String, dynamic> _$$NotificationPromptDeniedEventImplToJson(
        _$NotificationPromptDeniedEventImpl instance) =>
    <String, dynamic>{};

_$NotificationPromptAcceptedEventImpl
    _$$NotificationPromptAcceptedEventImplFromJson(Map<String, dynamic> json) =>
        _$NotificationPromptAcceptedEventImpl();

Map<String, dynamic> _$$NotificationPromptAcceptedEventImplToJson(
        _$NotificationPromptAcceptedEventImpl instance) =>
    <String, dynamic>{};

_$NotificationsSettingToggledEventImpl
    _$$NotificationsSettingToggledEventImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationsSettingToggledEventImpl(
          enabled: json['enabled'] as bool,
        );

Map<String, dynamic> _$$NotificationsSettingToggledEventImplToJson(
        _$NotificationsSettingToggledEventImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };
