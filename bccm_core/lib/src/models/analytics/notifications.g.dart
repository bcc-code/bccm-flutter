// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationReceivedEventImpl _$$NotificationReceivedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationReceivedEventImpl(
      notificationId: json['notificationId'] as String?,
      action: json['action'] as String?,
      deeplink: json['deeplink'] as String?,
    );

Map<String, dynamic> _$$NotificationReceivedEventImplToJson(
        _$NotificationReceivedEventImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'action': instance.action,
      'deeplink': instance.deeplink,
    };

_$NotificationOpenedEventImpl _$$NotificationOpenedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationOpenedEventImpl(
      notificationId: json['notificationId'] as String?,
    );

Map<String, dynamic> _$$NotificationOpenedEventImplToJson(
        _$NotificationOpenedEventImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
    };

_$NotificationDeviceTokenUpdatedEventImpl
    _$$NotificationDeviceTokenUpdatedEventImplFromJson(
            Map<String, dynamic> json) =>
        _$NotificationDeviceTokenUpdatedEventImpl();

Map<String, dynamic> _$$NotificationDeviceTokenUpdatedEventImplToJson(
        _$NotificationDeviceTokenUpdatedEventImpl instance) =>
    <String, dynamic>{};
