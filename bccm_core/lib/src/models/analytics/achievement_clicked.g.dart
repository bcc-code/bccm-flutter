// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_clicked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AchievementClickedEvent _$AchievementClickedEventFromJson(
  Map<String, dynamic> json,
) => _AchievementClickedEvent(
  elementPosition: (json['elementPosition'] as num).toInt(),
  elementTitle: json['elementTitle'] as String,
);

Map<String, dynamic> _$AchievementClickedEventToJson(
  _AchievementClickedEvent instance,
) => <String, dynamic>{
  'elementPosition': instance.elementPosition,
  'elementTitle': instance.elementTitle,
};
