// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceType _$album = const ResourceType._('album');
const ResourceType _$track = const ResourceType._('track');

ResourceType _$valueOf(String name) {
  switch (name) {
    case 'album':
      return _$album;
    case 'track':
      return _$track;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceType> _$values =
    new BuiltSet<ResourceType>(const <ResourceType>[
  _$album,
  _$track,
]);

class _$ResourceTypeMeta {
  const _$ResourceTypeMeta();
  ResourceType get album => _$album;
  ResourceType get track => _$track;
  ResourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<ResourceType> get values => _$values;
}

abstract class _$ResourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$ResourceTypeMeta get ResourceType => const _$ResourceTypeMeta();
}

Serializer<ResourceType> _$resourceTypeSerializer =
    new _$ResourceTypeSerializer();

class _$ResourceTypeSerializer implements PrimitiveSerializer<ResourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
    'track': 'track',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
    'track': 'track',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceType];
  @override
  final String wireName = 'ResourceType';

  @override
  Object serialize(Serializers serializers, ResourceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
