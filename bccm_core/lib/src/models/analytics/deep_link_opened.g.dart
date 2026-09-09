// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deep_link_opened.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeepLinkOpenedEvent _$DeepLinkOpenedEventFromJson(Map<String, dynamic> json) =>
    _DeepLinkOpenedEvent(
      url: json['url'] as String,
      source: json['source'] as String,
      campaignId: json['campaignId'] as String,
    );

Map<String, dynamic> _$DeepLinkOpenedEventToJson(
  _DeepLinkOpenedEvent instance,
) => <String, dynamic>{
  'url': instance.url,
  'source': instance.source,
  'campaignId': instance.campaignId,
};
