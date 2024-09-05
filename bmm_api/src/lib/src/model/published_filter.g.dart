// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'published_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PublishedFilter _$hide_ = const PublishedFilter._('hide_');
const PublishedFilter _$only = const PublishedFilter._('only');
const PublishedFilter _$show_ = const PublishedFilter._('show_');

PublishedFilter _$valueOf(String name) {
  switch (name) {
    case 'hide_':
      return _$hide_;
    case 'only':
      return _$only;
    case 'show_':
      return _$show_;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PublishedFilter> _$values =
    new BuiltSet<PublishedFilter>(const <PublishedFilter>[
  _$hide_,
  _$only,
  _$show_,
]);

class _$PublishedFilterMeta {
  const _$PublishedFilterMeta();
  PublishedFilter get hide_ => _$hide_;
  PublishedFilter get only => _$only;
  PublishedFilter get show_ => _$show_;
  PublishedFilter valueOf(String name) => _$valueOf(name);
  BuiltSet<PublishedFilter> get values => _$values;
}

abstract class _$PublishedFilterMixin {
  // ignore: non_constant_identifier_names
  _$PublishedFilterMeta get PublishedFilter => const _$PublishedFilterMeta();
}

Serializer<PublishedFilter> _$publishedFilterSerializer =
    new _$PublishedFilterSerializer();

class _$PublishedFilterSerializer
    implements PrimitiveSerializer<PublishedFilter> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hide_': 'hide',
    'only': 'only',
    'show_': 'show',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hide': 'hide_',
    'only': 'only',
    'show': 'show_',
  };

  @override
  final Iterable<Type> types = const <Type>[PublishedFilter];
  @override
  final String wireName = 'PublishedFilter';

  @override
  Object serialize(Serializers serializers, PublishedFilter object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PublishedFilter deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PublishedFilter.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
