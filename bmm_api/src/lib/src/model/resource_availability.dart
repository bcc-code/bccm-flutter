//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_availability.g.dart';

class ResourceAvailability extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Remote')
  static const ResourceAvailability remote = _$remote;
  @BuiltValueEnumConst(wireName: r'Local')
  static const ResourceAvailability local = _$local;

  static Serializer<ResourceAvailability> get serializer => _$resourceAvailabilitySerializer;

  const ResourceAvailability._(String name): super(name);

  static BuiltSet<ResourceAvailability> get values => _$values;
  static ResourceAvailability valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ResourceAvailabilityMixin = Object with _$ResourceAvailabilityMixin;

