//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_project_standings_church_game_night.g.dart';

class GetProjectStandingsChurchGameNight extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const GetProjectStandingsChurchGameNight none = _$none;
  @BuiltValueEnumConst(wireName: r'boys')
  static const GetProjectStandingsChurchGameNight boys = _$boys;
  @BuiltValueEnumConst(wireName: r'girls')
  static const GetProjectStandingsChurchGameNight girls = _$girls;

  static Serializer<GetProjectStandingsChurchGameNight> get serializer => _$getProjectStandingsChurchGameNightSerializer;

  const GetProjectStandingsChurchGameNight._(String name): super(name);

  static BuiltSet<GetProjectStandingsChurchGameNight> get values => _$values;
  static GetProjectStandingsChurchGameNight valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class GetProjectStandingsChurchGameNightMixin = Object with _$GetProjectStandingsChurchGameNightMixin;

