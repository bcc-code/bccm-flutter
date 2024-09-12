// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_subtype.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackSubtype _$song = const TrackSubtype._('song');
const TrackSubtype _$speech = const TrackSubtype._('speech');
const TrackSubtype _$audiobook = const TrackSubtype._('audiobook');
const TrackSubtype _$singsong = const TrackSubtype._('singsong');
const TrackSubtype _$exegesis = const TrackSubtype._('exegesis');
const TrackSubtype _$video = const TrackSubtype._('video');
const TrackSubtype _$live = const TrackSubtype._('live');

TrackSubtype _$valueOf(String name) {
  switch (name) {
    case 'song':
      return _$song;
    case 'speech':
      return _$speech;
    case 'audiobook':
      return _$audiobook;
    case 'singsong':
      return _$singsong;
    case 'exegesis':
      return _$exegesis;
    case 'video':
      return _$video;
    case 'live':
      return _$live;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TrackSubtype> _$values =
    new BuiltSet<TrackSubtype>(const <TrackSubtype>[
  _$song,
  _$speech,
  _$audiobook,
  _$singsong,
  _$exegesis,
  _$video,
  _$live,
]);

class _$TrackSubtypeMeta {
  const _$TrackSubtypeMeta();
  TrackSubtype get song => _$song;
  TrackSubtype get speech => _$speech;
  TrackSubtype get audiobook => _$audiobook;
  TrackSubtype get singsong => _$singsong;
  TrackSubtype get exegesis => _$exegesis;
  TrackSubtype get video => _$video;
  TrackSubtype get live => _$live;
  TrackSubtype valueOf(String name) => _$valueOf(name);
  BuiltSet<TrackSubtype> get values => _$values;
}

abstract class _$TrackSubtypeMixin {
  // ignore: non_constant_identifier_names
  _$TrackSubtypeMeta get TrackSubtype => const _$TrackSubtypeMeta();
}

Serializer<TrackSubtype> _$trackSubtypeSerializer =
    new _$TrackSubtypeSerializer();

class _$TrackSubtypeSerializer implements PrimitiveSerializer<TrackSubtype> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'song': 'song',
    'speech': 'speech',
    'audiobook': 'audiobook',
    'singsong': 'singsong',
    'exegesis': 'exegesis',
    'video': 'video',
    'live': 'live',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'song': 'song',
    'speech': 'speech',
    'audiobook': 'audiobook',
    'singsong': 'singsong',
    'exegesis': 'exegesis',
    'video': 'video',
    'live': 'live',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackSubtype];
  @override
  final String wireName = 'TrackSubtype';

  @override
  Object serialize(Serializers serializers, TrackSubtype object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackSubtype deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackSubtype.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
