//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_track_contributor_type.g.dart';

class TrackModelTrackContributorType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'composer')
  static const TrackModelTrackContributorType composer = _$composer;
  @BuiltValueEnumConst(wireName: r'lyricist')
  static const TrackModelTrackContributorType lyricist = _$lyricist;
  @BuiltValueEnumConst(wireName: r'interpret')
  static const TrackModelTrackContributorType interpret = _$interpret;
  @BuiltValueEnumConst(wireName: r'arranger')
  static const TrackModelTrackContributorType arranger = _$arranger;

  static Serializer<TrackModelTrackContributorType> get serializer => _$trackModelTrackContributorTypeSerializer;

  const TrackModelTrackContributorType._(String name): super(name);

  static BuiltSet<TrackModelTrackContributorType> get values => _$values;
  static TrackModelTrackContributorType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrackModelTrackContributorTypeMixin = Object with _$TrackModelTrackContributorTypeMixin;

