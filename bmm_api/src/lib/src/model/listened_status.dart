//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'listened_status.g.dart';

class ListenedStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PartialFromBeginning')
  static const ListenedStatus partialFromBeginning = _$partialFromBeginning;
  @BuiltValueEnumConst(wireName: r'Jumped')
  static const ListenedStatus jumped = _$jumped;
  @BuiltValueEnumConst(wireName: r'SkippedBeginning')
  static const ListenedStatus skippedBeginning = _$skippedBeginning;
  @BuiltValueEnumConst(wireName: r'Complete')
  static const ListenedStatus complete = _$complete;
  @BuiltValueEnumConst(wireName: r'Skipped')
  static const ListenedStatus skipped = _$skipped;

  static Serializer<ListenedStatus> get serializer => _$listenedStatusSerializer;

  const ListenedStatus._(String name): super(name);

  static BuiltSet<ListenedStatus> get values => _$values;
  static ListenedStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ListenedStatusMixin = Object with _$ListenedStatusMixin;

