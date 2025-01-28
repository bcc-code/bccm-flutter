// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_transcription_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TranscriptionTranscriptionSource _$mediabanken =
    const TranscriptionTranscriptionSource._('mediabanken');
const TranscriptionTranscriptionSource _$songTreasures =
    const TranscriptionTranscriptionSource._('songTreasures');
const TranscriptionTranscriptionSource _$manual =
    const TranscriptionTranscriptionSource._('manual');
const TranscriptionTranscriptionSource _$telegraph =
    const TranscriptionTranscriptionSource._('telegraph');

TranscriptionTranscriptionSource _$valueOf(String name) {
  switch (name) {
    case 'mediabanken':
      return _$mediabanken;
    case 'songTreasures':
      return _$songTreasures;
    case 'manual':
      return _$manual;
    case 'telegraph':
      return _$telegraph;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TranscriptionTranscriptionSource> _$values = new BuiltSet<
    TranscriptionTranscriptionSource>(const <TranscriptionTranscriptionSource>[
  _$mediabanken,
  _$songTreasures,
  _$manual,
  _$telegraph,
]);

class _$TranscriptionTranscriptionSourceMeta {
  const _$TranscriptionTranscriptionSourceMeta();
  TranscriptionTranscriptionSource get mediabanken => _$mediabanken;
  TranscriptionTranscriptionSource get songTreasures => _$songTreasures;
  TranscriptionTranscriptionSource get manual => _$manual;
  TranscriptionTranscriptionSource get telegraph => _$telegraph;
  TranscriptionTranscriptionSource valueOf(String name) => _$valueOf(name);
  BuiltSet<TranscriptionTranscriptionSource> get values => _$values;
}

abstract class _$TranscriptionTranscriptionSourceMixin {
  // ignore: non_constant_identifier_names
  _$TranscriptionTranscriptionSourceMeta get TranscriptionTranscriptionSource =>
      const _$TranscriptionTranscriptionSourceMeta();
}

Serializer<TranscriptionTranscriptionSource>
    _$transcriptionTranscriptionSourceSerializer =
    new _$TranscriptionTranscriptionSourceSerializer();

class _$TranscriptionTranscriptionSourceSerializer
    implements PrimitiveSerializer<TranscriptionTranscriptionSource> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mediabanken': 'Mediabanken',
    'songTreasures': 'SongTreasures',
    'manual': 'Manual',
    'telegraph': 'Telegraph',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Mediabanken': 'mediabanken',
    'SongTreasures': 'songTreasures',
    'Manual': 'manual',
    'Telegraph': 'telegraph',
  };

  @override
  final Iterable<Type> types = const <Type>[TranscriptionTranscriptionSource];
  @override
  final String wireName = 'TranscriptionTranscriptionSource';

  @override
  Object serialize(
          Serializers serializers, TranscriptionTranscriptionSource object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TranscriptionTranscriptionSource deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TranscriptionTranscriptionSource.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
