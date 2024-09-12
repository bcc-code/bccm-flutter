// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_availability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceAvailability _$remote = const ResourceAvailability._('remote');
const ResourceAvailability _$local = const ResourceAvailability._('local');

ResourceAvailability _$valueOf(String name) {
  switch (name) {
    case 'remote':
      return _$remote;
    case 'local':
      return _$local;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceAvailability> _$values =
    new BuiltSet<ResourceAvailability>(const <ResourceAvailability>[
  _$remote,
  _$local,
]);

class _$ResourceAvailabilityMeta {
  const _$ResourceAvailabilityMeta();
  ResourceAvailability get remote => _$remote;
  ResourceAvailability get local => _$local;
  ResourceAvailability valueOf(String name) => _$valueOf(name);
  BuiltSet<ResourceAvailability> get values => _$values;
}

abstract class _$ResourceAvailabilityMixin {
  // ignore: non_constant_identifier_names
  _$ResourceAvailabilityMeta get ResourceAvailability =>
      const _$ResourceAvailabilityMeta();
}

Serializer<ResourceAvailability> _$resourceAvailabilitySerializer =
    new _$ResourceAvailabilitySerializer();

class _$ResourceAvailabilitySerializer
    implements PrimitiveSerializer<ResourceAvailability> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'remote': 'Remote',
    'local': 'Local',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Remote': 'remote',
    'Local': 'local',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceAvailability];
  @override
  final String wireName = 'ResourceAvailability';

  @override
  Object serialize(Serializers serializers, ResourceAvailability object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceAvailability deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceAvailability.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
