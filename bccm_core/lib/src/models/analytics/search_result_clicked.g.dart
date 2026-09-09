// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_clicked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SectionClickedEvent _$SectionClickedEventFromJson(Map<String, dynamic> json) =>
    _SectionClickedEvent(
      searchText: json['searchText'] as String,
      elementPosition: (json['elementPosition'] as num).toInt(),
      elementType: json['elementType'] as String,
      elementId: json['elementId'] as String,
      group: json['group'] as String,
    );

Map<String, dynamic> _$SectionClickedEventToJson(
  _SectionClickedEvent instance,
) => <String, dynamic>{
  'searchText': instance.searchText,
  'elementPosition': instance.elementPosition,
  'elementType': instance.elementType,
  'elementId': instance.elementId,
  'group': instance.group,
};
