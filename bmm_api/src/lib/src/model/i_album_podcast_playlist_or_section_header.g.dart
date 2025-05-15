// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_album_podcast_playlist_or_section_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_album =
    const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum._('album');
const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlistDetails =
    const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum._('playlistDetails');
const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlist =
    const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum._('playlist');
const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_podcast =
    const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum._('podcast');
const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_sectionHeader =
    const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum._('sectionHeader');

IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnumValueOf(String name) {
  switch (name) {
    case 'album':
      return _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_album;
    case 'playlistDetails':
      return _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlistDetails;
    case 'playlist':
      return _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlist;
    case 'podcast':
      return _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_podcast;
    case 'sectionHeader':
      return _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_sectionHeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAlbumPodcastPlaylistOrSectionHeaderTypeEnum>
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnumValues = new BuiltSet<
        IAlbumPodcastPlaylistOrSectionHeaderTypeEnum>(const <IAlbumPodcastPlaylistOrSectionHeaderTypeEnum>[
  _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_album,
  _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlistDetails,
  _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlist,
  _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_podcast,
  _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_sectionHeader,
]);

Serializer<IAlbumPodcastPlaylistOrSectionHeaderTypeEnum>
    _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnumSerializer =
    new _$IAlbumPodcastPlaylistOrSectionHeaderTypeEnumSerializer();

class _$IAlbumPodcastPlaylistOrSectionHeaderTypeEnumSerializer
    implements
        PrimitiveSerializer<IAlbumPodcastPlaylistOrSectionHeaderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
    'playlistDetails': 'playlist_details',
    'playlist': 'playlist',
    'podcast': 'podcast',
    'sectionHeader': 'section_header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
    'playlist_details': 'playlistDetails',
    'playlist': 'playlist',
    'podcast': 'podcast',
    'section_header': 'sectionHeader',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IAlbumPodcastPlaylistOrSectionHeaderTypeEnum
  ];
  @override
  final String wireName = 'IAlbumPodcastPlaylistOrSectionHeaderTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IAlbumPodcastPlaylistOrSectionHeaderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IAlbumPodcastPlaylistOrSectionHeaderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAlbumPodcastPlaylistOrSectionHeaderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IAlbumPodcastPlaylistOrSectionHeader
    extends IAlbumPodcastPlaylistOrSectionHeader {
  @override
  final OneOf oneOf;

  factory _$IAlbumPodcastPlaylistOrSectionHeader(
          [void Function(IAlbumPodcastPlaylistOrSectionHeaderBuilder)?
              updates]) =>
      (new IAlbumPodcastPlaylistOrSectionHeaderBuilder()..update(updates))
          ._build();

  _$IAlbumPodcastPlaylistOrSectionHeader._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'IAlbumPodcastPlaylistOrSectionHeader', 'oneOf');
  }

  @override
  IAlbumPodcastPlaylistOrSectionHeader rebuild(
          void Function(IAlbumPodcastPlaylistOrSectionHeaderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAlbumPodcastPlaylistOrSectionHeaderBuilder toBuilder() =>
      new IAlbumPodcastPlaylistOrSectionHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAlbumPodcastPlaylistOrSectionHeader &&
        oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'IAlbumPodcastPlaylistOrSectionHeader')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class IAlbumPodcastPlaylistOrSectionHeaderBuilder
    implements
        Builder<IAlbumPodcastPlaylistOrSectionHeader,
            IAlbumPodcastPlaylistOrSectionHeaderBuilder> {
  _$IAlbumPodcastPlaylistOrSectionHeader? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IAlbumPodcastPlaylistOrSectionHeaderBuilder() {
    IAlbumPodcastPlaylistOrSectionHeader._defaults(this);
  }

  IAlbumPodcastPlaylistOrSectionHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAlbumPodcastPlaylistOrSectionHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IAlbumPodcastPlaylistOrSectionHeader;
  }

  @override
  void update(
      void Function(IAlbumPodcastPlaylistOrSectionHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IAlbumPodcastPlaylistOrSectionHeader build() => _build();

  _$IAlbumPodcastPlaylistOrSectionHeader _build() {
    final _$result = _$v ??
        new _$IAlbumPodcastPlaylistOrSectionHeader._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'IAlbumPodcastPlaylistOrSectionHeader', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
