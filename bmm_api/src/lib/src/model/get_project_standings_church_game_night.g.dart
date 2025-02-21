// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_project_standings_church_game_night.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetProjectStandingsChurchGameNight _$none =
    const GetProjectStandingsChurchGameNight._('none');
const GetProjectStandingsChurchGameNight _$boys =
    const GetProjectStandingsChurchGameNight._('boys');
const GetProjectStandingsChurchGameNight _$girls =
    const GetProjectStandingsChurchGameNight._('girls');

GetProjectStandingsChurchGameNight _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'boys':
      return _$boys;
    case 'girls':
      return _$girls;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GetProjectStandingsChurchGameNight> _$values = new BuiltSet<
    GetProjectStandingsChurchGameNight>(const <GetProjectStandingsChurchGameNight>[
  _$none,
  _$boys,
  _$girls,
]);

class _$GetProjectStandingsChurchGameNightMeta {
  const _$GetProjectStandingsChurchGameNightMeta();
  GetProjectStandingsChurchGameNight get none => _$none;
  GetProjectStandingsChurchGameNight get boys => _$boys;
  GetProjectStandingsChurchGameNight get girls => _$girls;
  GetProjectStandingsChurchGameNight valueOf(String name) => _$valueOf(name);
  BuiltSet<GetProjectStandingsChurchGameNight> get values => _$values;
}

abstract class _$GetProjectStandingsChurchGameNightMixin {
  // ignore: non_constant_identifier_names
  _$GetProjectStandingsChurchGameNightMeta
      get GetProjectStandingsChurchGameNight =>
          const _$GetProjectStandingsChurchGameNightMeta();
}

Serializer<GetProjectStandingsChurchGameNight>
    _$getProjectStandingsChurchGameNightSerializer =
    new _$GetProjectStandingsChurchGameNightSerializer();

class _$GetProjectStandingsChurchGameNightSerializer
    implements PrimitiveSerializer<GetProjectStandingsChurchGameNight> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'boys': 'boys',
    'girls': 'girls',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'boys': 'boys',
    'girls': 'girls',
  };

  @override
  final Iterable<Type> types = const <Type>[GetProjectStandingsChurchGameNight];
  @override
  final String wireName = 'GetProjectStandingsChurchGameNight';

  @override
  Object serialize(
          Serializers serializers, GetProjectStandingsChurchGameNight object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetProjectStandingsChurchGameNight deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetProjectStandingsChurchGameNight.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
