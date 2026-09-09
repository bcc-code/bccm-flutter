// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shorts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShortStartedEvent _$ShortStartedEventFromJson(Map<String, dynamic> json) =>
    _ShortStartedEvent(
      shortId: json['shortId'] as String,
      shortTitle: json['shortTitle'] as String,
      replayCount: (json['replayCount'] as num).toInt(),
      resumed: json['resumed'] as bool,
      positionFraction: (json['positionFraction'] as num).toDouble(),
      positionSeconds: (json['positionSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$ShortStartedEventToJson(_ShortStartedEvent instance) =>
    <String, dynamic>{
      'shortId': instance.shortId,
      'shortTitle': instance.shortTitle,
      'replayCount': instance.replayCount,
      'resumed': instance.resumed,
      'positionFraction': instance.positionFraction,
      'positionSeconds': instance.positionSeconds,
    };

_ShortStoppedEvent _$ShortStoppedEventFromJson(Map<String, dynamic> json) =>
    _ShortStoppedEvent(
      shortId: json['shortId'] as String,
      shortTitle: json['shortTitle'] as String?,
      positionFraction: (json['positionFraction'] as num).toDouble(),
      positionSeconds: (json['positionSeconds'] as num).toInt(),
      replayCount: (json['replayCount'] as num).toInt(),
    );

Map<String, dynamic> _$ShortStoppedEventToJson(_ShortStoppedEvent instance) =>
    <String, dynamic>{
      'shortId': instance.shortId,
      'shortTitle': instance.shortTitle,
      'positionFraction': instance.positionFraction,
      'positionSeconds': instance.positionSeconds,
      'replayCount': instance.replayCount,
    };
