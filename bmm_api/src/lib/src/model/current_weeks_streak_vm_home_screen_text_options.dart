//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_weeks_streak_vm_home_screen_text_options.g.dart';

class CurrentWeeksStreakVmHomeScreenTextOptions extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PerfectWeeks')
  static const CurrentWeeksStreakVmHomeScreenTextOptions perfectWeeks = _$perfectWeeks;
  @BuiltValueEnumConst(wireName: r'DaysInRow')
  static const CurrentWeeksStreakVmHomeScreenTextOptions daysInRow = _$daysInRow;

  static Serializer<CurrentWeeksStreakVmHomeScreenTextOptions> get serializer => _$currentWeeksStreakVmHomeScreenTextOptionsSerializer;

  const CurrentWeeksStreakVmHomeScreenTextOptions._(String name): super(name);

  static BuiltSet<CurrentWeeksStreakVmHomeScreenTextOptions> get values => _$values;
  static CurrentWeeksStreakVmHomeScreenTextOptions valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CurrentWeeksStreakVmHomeScreenTextOptionsMixin = Object with _$CurrentWeeksStreakVmHomeScreenTextOptionsMixin;

