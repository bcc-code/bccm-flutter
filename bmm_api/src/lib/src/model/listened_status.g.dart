// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listened_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListenedStatus _$partialFromBeginning =
    const ListenedStatus._('partialFromBeginning');
const ListenedStatus _$jumped = const ListenedStatus._('jumped');
const ListenedStatus _$skippedBeginning =
    const ListenedStatus._('skippedBeginning');
const ListenedStatus _$complete = const ListenedStatus._('complete');
const ListenedStatus _$skipped = const ListenedStatus._('skipped');

ListenedStatus _$valueOf(String name) {
  switch (name) {
    case 'partialFromBeginning':
      return _$partialFromBeginning;
    case 'jumped':
      return _$jumped;
    case 'skippedBeginning':
      return _$skippedBeginning;
    case 'complete':
      return _$complete;
    case 'skipped':
      return _$skipped;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ListenedStatus> _$values =
    new BuiltSet<ListenedStatus>(const <ListenedStatus>[
  _$partialFromBeginning,
  _$jumped,
  _$skippedBeginning,
  _$complete,
  _$skipped,
]);

class _$ListenedStatusMeta {
  const _$ListenedStatusMeta();
  ListenedStatus get partialFromBeginning => _$partialFromBeginning;
  ListenedStatus get jumped => _$jumped;
  ListenedStatus get skippedBeginning => _$skippedBeginning;
  ListenedStatus get complete => _$complete;
  ListenedStatus get skipped => _$skipped;
  ListenedStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ListenedStatus> get values => _$values;
}

abstract class _$ListenedStatusMixin {
  // ignore: non_constant_identifier_names
  _$ListenedStatusMeta get ListenedStatus => const _$ListenedStatusMeta();
}

Serializer<ListenedStatus> _$listenedStatusSerializer =
    new _$ListenedStatusSerializer();

class _$ListenedStatusSerializer
    implements PrimitiveSerializer<ListenedStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'partialFromBeginning': 'PartialFromBeginning',
    'jumped': 'Jumped',
    'skippedBeginning': 'SkippedBeginning',
    'complete': 'Complete',
    'skipped': 'Skipped',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PartialFromBeginning': 'partialFromBeginning',
    'Jumped': 'jumped',
    'SkippedBeginning': 'skippedBeginning',
    'Complete': 'complete',
    'Skipped': 'skipped',
  };

  @override
  final Iterable<Type> types = const <Type>[ListenedStatus];
  @override
  final String wireName = 'ListenedStatus';

  @override
  Object serialize(Serializers serializers, ListenedStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListenedStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListenedStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
