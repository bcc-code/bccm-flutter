// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_performed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchPerformedEventImpl _$$SearchPerformedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPerformedEventImpl(
      searchText: json['searchText'] as String,
      searchLatency: (json['searchLatency'] as num).toInt(),
      searchResultCount: (json['searchResultCount'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchPerformedEventImplToJson(
        _$SearchPerformedEventImpl instance) =>
    <String, dynamic>{
      'searchText': instance.searchText,
      'searchLatency': instance.searchLatency,
      'searchResultCount': instance.searchResultCount,
    };
