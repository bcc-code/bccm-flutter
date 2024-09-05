//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_subtype.g.dart';

class TrackSubtype extends EnumClass {

  @BuiltValueEnumConst(wireName: r'song')
  static const TrackSubtype song = _$song;
  @BuiltValueEnumConst(wireName: r'speech')
  static const TrackSubtype speech = _$speech;
  @BuiltValueEnumConst(wireName: r'audiobook')
  static const TrackSubtype audiobook = _$audiobook;
  @BuiltValueEnumConst(wireName: r'singsong')
  static const TrackSubtype singsong = _$singsong;
  @BuiltValueEnumConst(wireName: r'exegesis')
  static const TrackSubtype exegesis = _$exegesis;
  @BuiltValueEnumConst(wireName: r'video')
  static const TrackSubtype video = _$video;
  @BuiltValueEnumConst(wireName: r'live')
  static const TrackSubtype live = _$live;

  static Serializer<TrackSubtype> get serializer => _$trackSubtypeSerializer;

  const TrackSubtype._(String name): super(name);

  static BuiltSet<TrackSubtype> get values => _$values;
  static TrackSubtype valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrackSubtypeMixin = Object with _$TrackSubtypeMixin;

