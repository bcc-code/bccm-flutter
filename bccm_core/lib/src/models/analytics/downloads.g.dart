// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoDownloadStartedEvent _$VideoDownloadStartedEventFromJson(
  Map<String, dynamic> json,
) => _VideoDownloadStartedEvent(
  downloadId: json['downloadId'] as String,
  episodeId: json['episodeId'] as String,
  quality: json['quality'] as String?,
  audioLanguage: json['audioLanguage'] as String?,
);

Map<String, dynamic> _$VideoDownloadStartedEventToJson(
  _VideoDownloadStartedEvent instance,
) => <String, dynamic>{
  'downloadId': instance.downloadId,
  'episodeId': instance.episodeId,
  'quality': instance.quality,
  'audioLanguage': instance.audioLanguage,
};

_VideoDownloadRemovedEvent _$VideoDownloadRemovedEventFromJson(
  Map<String, dynamic> json,
) => _VideoDownloadRemovedEvent(
  downloadId: json['downloadId'] as String,
  episodeId: json['episodeId'] as String?,
);

Map<String, dynamic> _$VideoDownloadRemovedEventToJson(
  _VideoDownloadRemovedEvent instance,
) => <String, dynamic>{
  'downloadId': instance.downloadId,
  'episodeId': instance.episodeId,
};

_VideoDownloadPlayedEvent _$VideoDownloadPlayedEventFromJson(
  Map<String, dynamic> json,
) => _VideoDownloadPlayedEvent(
  downloadId: json['downloadId'] as String,
  episodeId: json['episodeId'] as String?,
);

Map<String, dynamic> _$VideoDownloadPlayedEventToJson(
  _VideoDownloadPlayedEvent instance,
) => <String, dynamic>{
  'downloadId': instance.downloadId,
  'episodeId': instance.episodeId,
};
