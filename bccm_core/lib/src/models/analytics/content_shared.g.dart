// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_shared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContentSharedEvent _$ContentSharedEventFromJson(Map<String, dynamic> json) =>
    _ContentSharedEvent(
      pageCode: json['pageCode'] as String,
      elementType: json['elementType'] as String,
      elementId: json['elementId'] as String,
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContentSharedEventToJson(_ContentSharedEvent instance) =>
    <String, dynamic>{
      'pageCode': instance.pageCode,
      'elementType': instance.elementType,
      'elementId': instance.elementId,
      'position': instance.position,
    };
