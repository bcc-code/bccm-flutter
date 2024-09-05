// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weeks_streak_vm_home_screen_text_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CurrentWeeksStreakVmHomeScreenTextOptions _$perfectWeeks =
    const CurrentWeeksStreakVmHomeScreenTextOptions._('perfectWeeks');
const CurrentWeeksStreakVmHomeScreenTextOptions _$daysInRow =
    const CurrentWeeksStreakVmHomeScreenTextOptions._('daysInRow');

CurrentWeeksStreakVmHomeScreenTextOptions _$valueOf(String name) {
  switch (name) {
    case 'perfectWeeks':
      return _$perfectWeeks;
    case 'daysInRow':
      return _$daysInRow;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CurrentWeeksStreakVmHomeScreenTextOptions> _$values = new BuiltSet<
    CurrentWeeksStreakVmHomeScreenTextOptions>(const <CurrentWeeksStreakVmHomeScreenTextOptions>[
  _$perfectWeeks,
  _$daysInRow,
]);

class _$CurrentWeeksStreakVmHomeScreenTextOptionsMeta {
  const _$CurrentWeeksStreakVmHomeScreenTextOptionsMeta();
  CurrentWeeksStreakVmHomeScreenTextOptions get perfectWeeks => _$perfectWeeks;
  CurrentWeeksStreakVmHomeScreenTextOptions get daysInRow => _$daysInRow;
  CurrentWeeksStreakVmHomeScreenTextOptions valueOf(String name) =>
      _$valueOf(name);
  BuiltSet<CurrentWeeksStreakVmHomeScreenTextOptions> get values => _$values;
}

abstract class _$CurrentWeeksStreakVmHomeScreenTextOptionsMixin {
  // ignore: non_constant_identifier_names
  _$CurrentWeeksStreakVmHomeScreenTextOptionsMeta
      get CurrentWeeksStreakVmHomeScreenTextOptions =>
          const _$CurrentWeeksStreakVmHomeScreenTextOptionsMeta();
}

Serializer<CurrentWeeksStreakVmHomeScreenTextOptions>
    _$currentWeeksStreakVmHomeScreenTextOptionsSerializer =
    new _$CurrentWeeksStreakVmHomeScreenTextOptionsSerializer();

class _$CurrentWeeksStreakVmHomeScreenTextOptionsSerializer
    implements PrimitiveSerializer<CurrentWeeksStreakVmHomeScreenTextOptions> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'perfectWeeks': 'PerfectWeeks',
    'daysInRow': 'DaysInRow',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PerfectWeeks': 'perfectWeeks',
    'DaysInRow': 'daysInRow',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CurrentWeeksStreakVmHomeScreenTextOptions
  ];
  @override
  final String wireName = 'CurrentWeeksStreakVmHomeScreenTextOptions';

  @override
  Object serialize(Serializers serializers,
          CurrentWeeksStreakVmHomeScreenTextOptions object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CurrentWeeksStreakVmHomeScreenTextOptions deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CurrentWeeksStreakVmHomeScreenTextOptions.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
