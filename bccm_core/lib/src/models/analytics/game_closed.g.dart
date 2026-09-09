// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_closed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameClosedEvent _$GameClosedEventFromJson(Map<String, dynamic> json) =>
    _GameClosedEvent(
      gameId: json['gameId'] as String,
      timeSpent: (json['timeSpent'] as num).toInt(),
      position: (json['position'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GameClosedEventToJson(_GameClosedEvent instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'timeSpent': instance.timeSpent,
      'position': instance.position,
    };
