// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InteractionEventImpl _$$InteractionEventImplFromJson(
        Map<String, dynamic> json) =>
    _$InteractionEventImpl(
      interaction: json['interaction'] as String?,
      pageCode: json['pageCode'] as String?,
      contextElementType: json['contextElementType'] as String?,
      contextElementId: json['contextElementId'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$InteractionEventImplToJson(
        _$InteractionEventImpl instance) =>
    <String, dynamic>{
      'interaction': instance.interaction,
      'pageCode': instance.pageCode,
      'contextElementType': instance.contextElementType,
      'contextElementId': instance.contextElementId,
      'meta': instance.meta,
    };

_$ImpressionEventImpl _$$ImpressionEventImplFromJson(
        Map<String, dynamic> json) =>
    _$ImpressionEventImpl(
      name: json['name'] as String?,
      pageCode: json['pageCode'] as String?,
      contextElementType: json['contextElementType'] as String?,
      contextElementId: json['contextElementId'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ImpressionEventImplToJson(
        _$ImpressionEventImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pageCode': instance.pageCode,
      'contextElementType': instance.contextElementType,
      'contextElementId': instance.contextElementId,
      'meta': instance.meta,
    };

_$GuideShownEventImpl _$$GuideShownEventImplFromJson(
        Map<String, dynamic> json) =>
    _$GuideShownEventImpl(
      guide: json['guide'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$GuideShownEventImplToJson(
        _$GuideShownEventImpl instance) =>
    <String, dynamic>{
      'guide': instance.guide,
      'meta': instance.meta,
    };

_$TimeMeasurementEventImpl _$$TimeMeasurementEventImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeMeasurementEventImpl(
      key: json['key'] as String?,
      seconds: (json['seconds'] as num?)?.toDouble(),
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TimeMeasurementEventImplToJson(
        _$TimeMeasurementEventImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'seconds': instance.seconds,
      'meta': instance.meta,
    };

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

_$LogEventImpl _$$LogEventImplFromJson(Map<String, dynamic> json) =>
    _$LogEventImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      pageCode: json['pageCode'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$LogEventImplToJson(_$LogEventImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'pageCode': instance.pageCode,
      'meta': instance.meta,
    };

_$VideoPlayedEventImpl _$$VideoPlayedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoPlayedEventImpl(
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$VideoPlayedEventImplToJson(
        _$VideoPlayedEventImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
