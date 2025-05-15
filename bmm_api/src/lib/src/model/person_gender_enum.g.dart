// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_gender_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersonGenderEnum _$male = const PersonGenderEnum._('male');
const PersonGenderEnum _$female = const PersonGenderEnum._('female');
const PersonGenderEnum _$unknown = const PersonGenderEnum._('unknown');

PersonGenderEnum _$valueOf(String name) {
  switch (name) {
    case 'male':
      return _$male;
    case 'female':
      return _$female;
    case 'unknown':
      return _$unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PersonGenderEnum> _$values =
    new BuiltSet<PersonGenderEnum>(const <PersonGenderEnum>[
  _$male,
  _$female,
  _$unknown,
]);

class _$PersonGenderEnumMeta {
  const _$PersonGenderEnumMeta();
  PersonGenderEnum get male => _$male;
  PersonGenderEnum get female => _$female;
  PersonGenderEnum get unknown => _$unknown;
  PersonGenderEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<PersonGenderEnum> get values => _$values;
}

abstract class _$PersonGenderEnumMixin {
  // ignore: non_constant_identifier_names
  _$PersonGenderEnumMeta get PersonGenderEnum => const _$PersonGenderEnumMeta();
}

Serializer<PersonGenderEnum> _$personGenderEnumSerializer =
    new _$PersonGenderEnumSerializer();

class _$PersonGenderEnumSerializer
    implements PrimitiveSerializer<PersonGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'Male',
    'female': 'Female',
    'unknown': 'Unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Male': 'male',
    'Female': 'female',
    'Unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[PersonGenderEnum];
  @override
  final String wireName = 'PersonGenderEnum';

  @override
  Object serialize(Serializers serializers, PersonGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersonGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersonGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
