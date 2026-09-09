// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationReceivedEvent _$NotificationReceivedEventFromJson(
  Map<String, dynamic> json,
) => _NotificationReceivedEvent(
  notificationId: json['notificationId'] as String?,
  action: json['action'] as String?,
  deeplink: json['deeplink'] as String?,
);

Map<String, dynamic> _$NotificationReceivedEventToJson(
  _NotificationReceivedEvent instance,
) => <String, dynamic>{
  'notificationId': instance.notificationId,
  'action': instance.action,
  'deeplink': instance.deeplink,
};

_NotificationOpenedEvent _$NotificationOpenedEventFromJson(
  Map<String, dynamic> json,
) =>
    _NotificationOpenedEvent(notificationId: json['notificationId'] as String?);

Map<String, dynamic> _$NotificationOpenedEventToJson(
  _NotificationOpenedEvent instance,
) => <String, dynamic>{'notificationId': instance.notificationId};

_NotificationDeviceTokenUpdatedEvent
_$NotificationDeviceTokenUpdatedEventFromJson(Map<String, dynamic> json) =>
    _NotificationDeviceTokenUpdatedEvent();

Map<String, dynamic> _$NotificationDeviceTokenUpdatedEventToJson(
  _NotificationDeviceTokenUpdatedEvent instance,
) => <String, dynamic>{};

_NotificationsStatusEvent _$NotificationsStatusEventFromJson(
  Map<String, dynamic> json,
) => _NotificationsStatusEvent(
  recipientId: json['recipientId'] as String?,
  enabled: json['enabled'] as bool?,
);

Map<String, dynamic> _$NotificationsStatusEventToJson(
  _NotificationsStatusEvent instance,
) => <String, dynamic>{
  'recipientId': instance.recipientId,
  'enabled': instance.enabled,
};
