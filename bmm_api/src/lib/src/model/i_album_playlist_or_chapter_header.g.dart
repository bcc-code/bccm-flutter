// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_album_playlist_or_chapter_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAlbumPlaylistOrChapterHeaderTypeEnum
    _$iAlbumPlaylistOrChapterHeaderTypeEnum_album =
    const IAlbumPlaylistOrChapterHeaderTypeEnum._('album');
const IAlbumPlaylistOrChapterHeaderTypeEnum
    _$iAlbumPlaylistOrChapterHeaderTypeEnum_playlist =
    const IAlbumPlaylistOrChapterHeaderTypeEnum._('playlist');
const IAlbumPlaylistOrChapterHeaderTypeEnum
    _$iAlbumPlaylistOrChapterHeaderTypeEnum_chapterHeader =
    const IAlbumPlaylistOrChapterHeaderTypeEnum._('chapterHeader');

IAlbumPlaylistOrChapterHeaderTypeEnum
    _$iAlbumPlaylistOrChapterHeaderTypeEnumValueOf(String name) {
  switch (name) {
    case 'album':
      return _$iAlbumPlaylistOrChapterHeaderTypeEnum_album;
    case 'playlist':
      return _$iAlbumPlaylistOrChapterHeaderTypeEnum_playlist;
    case 'chapterHeader':
      return _$iAlbumPlaylistOrChapterHeaderTypeEnum_chapterHeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAlbumPlaylistOrChapterHeaderTypeEnum>
    _$iAlbumPlaylistOrChapterHeaderTypeEnumValues = new BuiltSet<
        IAlbumPlaylistOrChapterHeaderTypeEnum>(const <IAlbumPlaylistOrChapterHeaderTypeEnum>[
  _$iAlbumPlaylistOrChapterHeaderTypeEnum_album,
  _$iAlbumPlaylistOrChapterHeaderTypeEnum_playlist,
  _$iAlbumPlaylistOrChapterHeaderTypeEnum_chapterHeader,
]);

Serializer<IAlbumPlaylistOrChapterHeaderTypeEnum>
    _$iAlbumPlaylistOrChapterHeaderTypeEnumSerializer =
    new _$IAlbumPlaylistOrChapterHeaderTypeEnumSerializer();

class _$IAlbumPlaylistOrChapterHeaderTypeEnumSerializer
    implements PrimitiveSerializer<IAlbumPlaylistOrChapterHeaderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
    'playlist': 'playlist',
    'chapterHeader': 'chapter_header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
    'playlist': 'playlist',
    'chapter_header': 'chapterHeader',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IAlbumPlaylistOrChapterHeaderTypeEnum
  ];
  @override
  final String wireName = 'IAlbumPlaylistOrChapterHeaderTypeEnum';

  @override
  Object serialize(
          Serializers serializers, IAlbumPlaylistOrChapterHeaderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IAlbumPlaylistOrChapterHeaderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAlbumPlaylistOrChapterHeaderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IAlbumPlaylistOrChapterHeader extends IAlbumPlaylistOrChapterHeader {
  @override
  final OneOf oneOf;

  factory _$IAlbumPlaylistOrChapterHeader(
          [void Function(IAlbumPlaylistOrChapterHeaderBuilder)? updates]) =>
      (new IAlbumPlaylistOrChapterHeaderBuilder()..update(updates))._build();

  _$IAlbumPlaylistOrChapterHeader._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'IAlbumPlaylistOrChapterHeader', 'oneOf');
  }

  @override
  IAlbumPlaylistOrChapterHeader rebuild(
          void Function(IAlbumPlaylistOrChapterHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAlbumPlaylistOrChapterHeaderBuilder toBuilder() =>
      new IAlbumPlaylistOrChapterHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAlbumPlaylistOrChapterHeader && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'IAlbumPlaylistOrChapterHeader')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class IAlbumPlaylistOrChapterHeaderBuilder
    implements
        Builder<IAlbumPlaylistOrChapterHeader,
            IAlbumPlaylistOrChapterHeaderBuilder> {
  _$IAlbumPlaylistOrChapterHeader? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IAlbumPlaylistOrChapterHeaderBuilder() {
    IAlbumPlaylistOrChapterHeader._defaults(this);
  }

  IAlbumPlaylistOrChapterHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAlbumPlaylistOrChapterHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IAlbumPlaylistOrChapterHeader;
  }

  @override
  void update(void Function(IAlbumPlaylistOrChapterHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IAlbumPlaylistOrChapterHeader build() => _build();

  _$IAlbumPlaylistOrChapterHeader _build() {
    final _$result = _$v ??
        new _$IAlbumPlaylistOrChapterHeader._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'IAlbumPlaylistOrChapterHeader', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
