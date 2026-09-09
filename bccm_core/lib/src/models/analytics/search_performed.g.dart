// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_performed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchPerformedEvent _$SearchPerformedEventFromJson(
  Map<String, dynamic> json,
) => _SearchPerformedEvent(
  searchText: json['searchText'] as String,
  searchLatency: (json['searchLatency'] as num).toInt(),
  searchResultCount: (json['searchResultCount'] as num).toInt(),
);

Map<String, dynamic> _$SearchPerformedEventToJson(
  _SearchPerformedEvent instance,
) => <String, dynamic>{
  'searchText': instance.searchText,
  'searchLatency': instance.searchLatency,
  'searchResultCount': instance.searchResultCount,
};
