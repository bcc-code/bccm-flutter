// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChapterHeaderTypeEnum _$chapterHeaderTypeEnum_chapterHeader =
    const ChapterHeaderTypeEnum._('chapterHeader');

ChapterHeaderTypeEnum _$chapterHeaderTypeEnumValueOf(String name) {
  switch (name) {
    case 'chapterHeader':
      return _$chapterHeaderTypeEnum_chapterHeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChapterHeaderTypeEnum> _$chapterHeaderTypeEnumValues =
    new BuiltSet<ChapterHeaderTypeEnum>(const <ChapterHeaderTypeEnum>[
  _$chapterHeaderTypeEnum_chapterHeader,
]);

Serializer<ChapterHeaderTypeEnum> _$chapterHeaderTypeEnumSerializer =
    new _$ChapterHeaderTypeEnumSerializer();

class _$ChapterHeaderTypeEnumSerializer
    implements PrimitiveSerializer<ChapterHeaderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'chapterHeader': 'chapter_header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'chapter_header': 'chapterHeader',
  };

  @override
  final Iterable<Type> types = const <Type>[ChapterHeaderTypeEnum];
  @override
  final String wireName = 'ChapterHeaderTypeEnum';

  @override
  Object serialize(Serializers serializers, ChapterHeaderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChapterHeaderTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChapterHeaderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChapterHeader extends ChapterHeader {
  @override
  final int id;
  @override
  final ChapterHeaderTypeEnum type;
  @override
  final String? title;

  factory _$ChapterHeader([void Function(ChapterHeaderBuilder)? updates]) =>
      (new ChapterHeaderBuilder()..update(updates))._build();

  _$ChapterHeader._({required this.id, required this.type, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ChapterHeader', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'ChapterHeader', 'type');
  }

  @override
  ChapterHeader rebuild(void Function(ChapterHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChapterHeaderBuilder toBuilder() => new ChapterHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChapterHeader &&
        id == other.id &&
        type == other.type &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChapterHeader')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title))
        .toString();
  }
}

class ChapterHeaderBuilder
    implements Builder<ChapterHeader, ChapterHeaderBuilder> {
  _$ChapterHeader? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ChapterHeaderTypeEnum? _type;
  ChapterHeaderTypeEnum? get type => _$this._type;
  set type(ChapterHeaderTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ChapterHeaderBuilder() {
    ChapterHeader._defaults(this);
  }

  ChapterHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChapterHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChapterHeader;
  }

  @override
  void update(void Function(ChapterHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChapterHeader build() => _build();

  _$ChapterHeader _build() {
    final _$result = _$v ??
        new _$ChapterHeader._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ChapterHeader', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ChapterHeader', 'type'),
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
