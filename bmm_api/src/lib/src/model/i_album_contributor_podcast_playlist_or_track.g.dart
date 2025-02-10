// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_album_contributor_podcast_playlist_or_track.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAlbumContributorPodcastPlaylistOrTrackTypeEnum
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_album =
    const IAlbumContributorPodcastPlaylistOrTrackTypeEnum._('album');
const IAlbumContributorPodcastPlaylistOrTrackTypeEnum
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_contributor =
    const IAlbumContributorPodcastPlaylistOrTrackTypeEnum._('contributor');
const IAlbumContributorPodcastPlaylistOrTrackTypeEnum
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_playlist =
    const IAlbumContributorPodcastPlaylistOrTrackTypeEnum._('playlist');
const IAlbumContributorPodcastPlaylistOrTrackTypeEnum
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_podcast =
    const IAlbumContributorPodcastPlaylistOrTrackTypeEnum._('podcast');
const IAlbumContributorPodcastPlaylistOrTrackTypeEnum
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_track =
    const IAlbumContributorPodcastPlaylistOrTrackTypeEnum._('track');

IAlbumContributorPodcastPlaylistOrTrackTypeEnum
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnumValueOf(String name) {
  switch (name) {
    case 'album':
      return _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_album;
    case 'contributor':
      return _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_contributor;
    case 'playlist':
      return _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_playlist;
    case 'podcast':
      return _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_podcast;
    case 'track':
      return _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_track;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAlbumContributorPodcastPlaylistOrTrackTypeEnum>
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnumValues = new BuiltSet<
        IAlbumContributorPodcastPlaylistOrTrackTypeEnum>(const <IAlbumContributorPodcastPlaylistOrTrackTypeEnum>[
  _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_album,
  _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_contributor,
  _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_playlist,
  _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_podcast,
  _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_track,
]);

Serializer<IAlbumContributorPodcastPlaylistOrTrackTypeEnum>
    _$iAlbumContributorPodcastPlaylistOrTrackTypeEnumSerializer =
    new _$IAlbumContributorPodcastPlaylistOrTrackTypeEnumSerializer();

class _$IAlbumContributorPodcastPlaylistOrTrackTypeEnumSerializer
    implements
        PrimitiveSerializer<IAlbumContributorPodcastPlaylistOrTrackTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
    'contributor': 'contributor',
    'playlist': 'playlist',
    'podcast': 'podcast',
    'track': 'track',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
    'contributor': 'contributor',
    'playlist': 'playlist',
    'podcast': 'podcast',
    'track': 'track',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IAlbumContributorPodcastPlaylistOrTrackTypeEnum
  ];
  @override
  final String wireName = 'IAlbumContributorPodcastPlaylistOrTrackTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IAlbumContributorPodcastPlaylistOrTrackTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IAlbumContributorPodcastPlaylistOrTrackTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAlbumContributorPodcastPlaylistOrTrackTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IAlbumContributorPodcastPlaylistOrTrack
    extends IAlbumContributorPodcastPlaylistOrTrack {
  @override
  final OneOf oneOf;

  factory _$IAlbumContributorPodcastPlaylistOrTrack(
          [void Function(IAlbumContributorPodcastPlaylistOrTrackBuilder)?
              updates]) =>
      (new IAlbumContributorPodcastPlaylistOrTrackBuilder()..update(updates))
          ._build();

  _$IAlbumContributorPodcastPlaylistOrTrack._({required this.oneOf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'IAlbumContributorPodcastPlaylistOrTrack', 'oneOf');
  }

  @override
  IAlbumContributorPodcastPlaylistOrTrack rebuild(
          void Function(IAlbumContributorPodcastPlaylistOrTrackBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAlbumContributorPodcastPlaylistOrTrackBuilder toBuilder() =>
      new IAlbumContributorPodcastPlaylistOrTrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAlbumContributorPodcastPlaylistOrTrack &&
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
    return (newBuiltValueToStringHelper(
            r'IAlbumContributorPodcastPlaylistOrTrack')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class IAlbumContributorPodcastPlaylistOrTrackBuilder
    implements
        Builder<IAlbumContributorPodcastPlaylistOrTrack,
            IAlbumContributorPodcastPlaylistOrTrackBuilder> {
  _$IAlbumContributorPodcastPlaylistOrTrack? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IAlbumContributorPodcastPlaylistOrTrackBuilder() {
    IAlbumContributorPodcastPlaylistOrTrack._defaults(this);
  }

  IAlbumContributorPodcastPlaylistOrTrackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAlbumContributorPodcastPlaylistOrTrack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IAlbumContributorPodcastPlaylistOrTrack;
  }

  @override
  void update(
      void Function(IAlbumContributorPodcastPlaylistOrTrackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IAlbumContributorPodcastPlaylistOrTrack build() => _build();

  _$IAlbumContributorPodcastPlaylistOrTrack _build() {
    final _$result = _$v ??
        new _$IAlbumContributorPodcastPlaylistOrTrack._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'IAlbumContributorPodcastPlaylistOrTrack', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
