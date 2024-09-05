//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_type_enum.g.dart';

class MediaTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'audio')
  static const MediaTypeEnum audio = _$audio;
  @BuiltValueEnumConst(wireName: r'video')
  static const MediaTypeEnum video = _$video;

  static Serializer<MediaTypeEnum> get serializer => _$mediaTypeEnumSerializer;

  const MediaTypeEnum._(String name): super(name);

  static BuiltSet<MediaTypeEnum> get values => _$values;
  static MediaTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MediaTypeEnumMixin = Object with _$MediaTypeEnumMixin;

