// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_album_or_chapter_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAlbumOrChapterHeaderTypeEnum _$iAlbumOrChapterHeaderTypeEnum_album =
    const IAlbumOrChapterHeaderTypeEnum._('album');
const IAlbumOrChapterHeaderTypeEnum
    _$iAlbumOrChapterHeaderTypeEnum_chapterHeader =
    const IAlbumOrChapterHeaderTypeEnum._('chapterHeader');

IAlbumOrChapterHeaderTypeEnum _$iAlbumOrChapterHeaderTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'album':
      return _$iAlbumOrChapterHeaderTypeEnum_album;
    case 'chapterHeader':
      return _$iAlbumOrChapterHeaderTypeEnum_chapterHeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAlbumOrChapterHeaderTypeEnum>
    _$iAlbumOrChapterHeaderTypeEnumValues = new BuiltSet<
        IAlbumOrChapterHeaderTypeEnum>(const <IAlbumOrChapterHeaderTypeEnum>[
  _$iAlbumOrChapterHeaderTypeEnum_album,
  _$iAlbumOrChapterHeaderTypeEnum_chapterHeader,
]);

Serializer<IAlbumOrChapterHeaderTypeEnum>
    _$iAlbumOrChapterHeaderTypeEnumSerializer =
    new _$IAlbumOrChapterHeaderTypeEnumSerializer();

class _$IAlbumOrChapterHeaderTypeEnumSerializer
    implements PrimitiveSerializer<IAlbumOrChapterHeaderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
    'chapterHeader': 'chapter_header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
    'chapter_header': 'chapterHeader',
  };

  @override
  final Iterable<Type> types = const <Type>[IAlbumOrChapterHeaderTypeEnum];
  @override
  final String wireName = 'IAlbumOrChapterHeaderTypeEnum';

  @override
  Object serialize(
          Serializers serializers, IAlbumOrChapterHeaderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IAlbumOrChapterHeaderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAlbumOrChapterHeaderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IAlbumOrChapterHeader extends IAlbumOrChapterHeader {
  @override
  final OneOf oneOf;

  factory _$IAlbumOrChapterHeader(
          [void Function(IAlbumOrChapterHeaderBuilder)? updates]) =>
      (new IAlbumOrChapterHeaderBuilder()..update(updates))._build();

  _$IAlbumOrChapterHeader._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'IAlbumOrChapterHeader', 'oneOf');
  }

  @override
  IAlbumOrChapterHeader rebuild(
          void Function(IAlbumOrChapterHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAlbumOrChapterHeaderBuilder toBuilder() =>
      new IAlbumOrChapterHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAlbumOrChapterHeader && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IAlbumOrChapterHeader')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class IAlbumOrChapterHeaderBuilder
    implements Builder<IAlbumOrChapterHeader, IAlbumOrChapterHeaderBuilder> {
  _$IAlbumOrChapterHeader? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IAlbumOrChapterHeaderBuilder() {
    IAlbumOrChapterHeader._defaults(this);
  }

  IAlbumOrChapterHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAlbumOrChapterHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IAlbumOrChapterHeader;
  }

  @override
  void update(void Function(IAlbumOrChapterHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IAlbumOrChapterHeader build() => _build();

  _$IAlbumOrChapterHeader _build() {
    final _$result = _$v ??
        new _$IAlbumOrChapterHeader._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'IAlbumOrChapterHeader', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
