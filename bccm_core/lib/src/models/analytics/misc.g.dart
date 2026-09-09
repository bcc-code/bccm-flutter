// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InteractionEvent _$InteractionEventFromJson(Map<String, dynamic> json) =>
    _InteractionEvent(
      interaction: json['interaction'] as String?,
      pageCode: json['pageCode'] as String?,
      contextElementType: json['contextElementType'] as String?,
      contextElementId: json['contextElementId'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$InteractionEventToJson(_InteractionEvent instance) =>
    <String, dynamic>{
      'interaction': instance.interaction,
      'pageCode': instance.pageCode,
      'contextElementType': instance.contextElementType,
      'contextElementId': instance.contextElementId,
      'meta': instance.meta,
    };

_ImpressionEvent _$ImpressionEventFromJson(Map<String, dynamic> json) =>
    _ImpressionEvent(
      name: json['name'] as String?,
      pageCode: json['pageCode'] as String?,
      contextElementType: json['contextElementType'] as String?,
      contextElementId: json['contextElementId'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ImpressionEventToJson(_ImpressionEvent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'pageCode': instance.pageCode,
      'contextElementType': instance.contextElementType,
      'contextElementId': instance.contextElementId,
      'meta': instance.meta,
    };

_GuideShownEvent _$GuideShownEventFromJson(Map<String, dynamic> json) =>
    _GuideShownEvent(
      guide: json['guide'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$GuideShownEventToJson(_GuideShownEvent instance) =>
    <String, dynamic>{'guide': instance.guide, 'meta': instance.meta};

_TimeMeasurementEvent _$TimeMeasurementEventFromJson(
  Map<String, dynamic> json,
) => _TimeMeasurementEvent(
  key: json['key'] as String?,
  seconds: (json['seconds'] as num?)?.toDouble(),
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$TimeMeasurementEventToJson(
  _TimeMeasurementEvent instance,
) => <String, dynamic>{
  'key': instance.key,
  'seconds': instance.seconds,
  'meta': instance.meta,
};

_LogEvent _$LogEventFromJson(Map<String, dynamic> json) => _LogEvent(
  name: json['name'] as String?,
  message: json['message'] as String?,
  pageCode: json['pageCode'] as String?,
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$LogEventToJson(_LogEvent instance) => <String, dynamic>{
  'name': instance.name,
  'message': instance.message,
  'pageCode': instance.pageCode,
  'meta': instance.meta,
};

_VideoPlayedEvent _$VideoPlayedEventFromJson(Map<String, dynamic> json) =>
    _VideoPlayedEvent(
      videoId: json['videoId'] as String?,
      referenceId: json['referenceId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$VideoPlayedEventToJson(_VideoPlayedEvent instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'referenceId': instance.referenceId,
      'data': instance.data,
    };
