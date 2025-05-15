//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_gender_enum.g.dart';

class PersonGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Male')
  static const PersonGenderEnum male = _$male;
  @BuiltValueEnumConst(wireName: r'Female')
  static const PersonGenderEnum female = _$female;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const PersonGenderEnum unknown = _$unknown;

  static Serializer<PersonGenderEnum> get serializer => _$personGenderEnumSerializer;

  const PersonGenderEnum._(String name): super(name);

  static BuiltSet<PersonGenderEnum> get values => _$values;
  static PersonGenderEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PersonGenderEnumMixin = Object with _$PersonGenderEnumMixin;

