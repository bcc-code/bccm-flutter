// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaTypeEnum _$audio = const MediaTypeEnum._('audio');
const MediaTypeEnum _$video = const MediaTypeEnum._('video');

MediaTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'audio':
      return _$audio;
    case 'video':
      return _$video;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MediaTypeEnum> _$values =
    new BuiltSet<MediaTypeEnum>(const <MediaTypeEnum>[
  _$audio,
  _$video,
]);

class _$MediaTypeEnumMeta {
  const _$MediaTypeEnumMeta();
  MediaTypeEnum get audio => _$audio;
  MediaTypeEnum get video => _$video;
  MediaTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<MediaTypeEnum> get values => _$values;
}

abstract class _$MediaTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$MediaTypeEnumMeta get MediaTypeEnum => const _$MediaTypeEnumMeta();
}

Serializer<MediaTypeEnum> _$mediaTypeEnumSerializer =
    new _$MediaTypeEnumSerializer();

class _$MediaTypeEnumSerializer implements PrimitiveSerializer<MediaTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'audio': 'audio',
    'video': 'video',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'audio': 'audio',
    'video': 'video',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaTypeEnum];
  @override
  final String wireName = 'MediaTypeEnum';

  @override
  Object serialize(Serializers serializers, MediaTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
