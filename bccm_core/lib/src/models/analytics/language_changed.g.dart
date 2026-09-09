// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_changed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LanguageChangedEvent _$LanguageChangedEventFromJson(
  Map<String, dynamic> json,
) => _LanguageChangedEvent(
  languageFrom: json['languageFrom'] as String?,
  languageTo: json['languageTo'] as String,
  languageChangeType: json['languageChangeType'] as String,
);

Map<String, dynamic> _$LanguageChangedEventToJson(
  _LanguageChangedEvent instance,
) => <String, dynamic>{
  'languageFrom': instance.languageFrom,
  'languageTo': instance.languageTo,
  'languageChangeType': instance.languageChangeType,
};
