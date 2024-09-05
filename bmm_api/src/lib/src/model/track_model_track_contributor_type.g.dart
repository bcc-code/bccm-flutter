// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_track_contributor_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackModelTrackContributorType _$composer =
    const TrackModelTrackContributorType._('composer');
const TrackModelTrackContributorType _$lyricist =
    const TrackModelTrackContributorType._('lyricist');
const TrackModelTrackContributorType _$interpret =
    const TrackModelTrackContributorType._('interpret');
const TrackModelTrackContributorType _$arranger =
    const TrackModelTrackContributorType._('arranger');

TrackModelTrackContributorType _$valueOf(String name) {
  switch (name) {
    case 'composer':
      return _$composer;
    case 'lyricist':
      return _$lyricist;
    case 'interpret':
      return _$interpret;
    case 'arranger':
      return _$arranger;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TrackModelTrackContributorType> _$values = new BuiltSet<
    TrackModelTrackContributorType>(const <TrackModelTrackContributorType>[
  _$composer,
  _$lyricist,
  _$interpret,
  _$arranger,
]);

class _$TrackModelTrackContributorTypeMeta {
  const _$TrackModelTrackContributorTypeMeta();
  TrackModelTrackContributorType get composer => _$composer;
  TrackModelTrackContributorType get lyricist => _$lyricist;
  TrackModelTrackContributorType get interpret => _$interpret;
  TrackModelTrackContributorType get arranger => _$arranger;
  TrackModelTrackContributorType valueOf(String name) => _$valueOf(name);
  BuiltSet<TrackModelTrackContributorType> get values => _$values;
}

abstract class _$TrackModelTrackContributorTypeMixin {
  // ignore: non_constant_identifier_names
  _$TrackModelTrackContributorTypeMeta get TrackModelTrackContributorType =>
      const _$TrackModelTrackContributorTypeMeta();
}

Serializer<TrackModelTrackContributorType>
    _$trackModelTrackContributorTypeSerializer =
    new _$TrackModelTrackContributorTypeSerializer();

class _$TrackModelTrackContributorTypeSerializer
    implements PrimitiveSerializer<TrackModelTrackContributorType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'composer': 'composer',
    'lyricist': 'lyricist',
    'interpret': 'interpret',
    'arranger': 'arranger',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'composer': 'composer',
    'lyricist': 'lyricist',
    'interpret': 'interpret',
    'arranger': 'arranger',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackModelTrackContributorType];
  @override
  final String wireName = 'TrackModelTrackContributorType';

  @override
  Object serialize(
          Serializers serializers, TrackModelTrackContributorType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackModelTrackContributorType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackModelTrackContributorType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
