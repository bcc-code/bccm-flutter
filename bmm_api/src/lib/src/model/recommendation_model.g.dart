// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecommendationModelTypeEnum _$recommendationModelTypeEnum_recommendation =
    const RecommendationModelTypeEnum._('recommendation');

RecommendationModelTypeEnum _$recommendationModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'recommendation':
      return _$recommendationModelTypeEnum_recommendation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RecommendationModelTypeEnum>
    _$recommendationModelTypeEnumValues = new BuiltSet<
        RecommendationModelTypeEnum>(const <RecommendationModelTypeEnum>[
  _$recommendationModelTypeEnum_recommendation,
]);

Serializer<RecommendationModelTypeEnum>
    _$recommendationModelTypeEnumSerializer =
    new _$RecommendationModelTypeEnumSerializer();

class _$RecommendationModelTypeEnumSerializer
    implements PrimitiveSerializer<RecommendationModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'recommendation': 'recommendation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'recommendation': 'recommendation',
  };

  @override
  final Iterable<Type> types = const <Type>[RecommendationModelTypeEnum];
  @override
  final String wireName = 'RecommendationModelTypeEnum';

  @override
  Object serialize(Serializers serializers, RecommendationModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecommendationModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecommendationModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RecommendationModel extends RecommendationModel {
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final ContributorModel? contributor;
  @override
  final TrackModel? track;
  @override
  final PlaylistModel? playlist;
  @override
  final AlbumModel? album;
  @override
  final int id;
  @override
  final RecommendationModelTypeEnum type;

  factory _$RecommendationModel(
          [void Function(RecommendationModelBuilder)? updates]) =>
      (new RecommendationModelBuilder()..update(updates))._build();

  _$RecommendationModel._(
      {this.title,
      this.subtitle,
      this.contributor,
      this.track,
      this.playlist,
      this.album,
      required this.id,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'RecommendationModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'RecommendationModel', 'type');
  }

  @override
  RecommendationModel rebuild(
          void Function(RecommendationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendationModelBuilder toBuilder() =>
      new RecommendationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendationModel &&
        title == other.title &&
        subtitle == other.subtitle &&
        contributor == other.contributor &&
        track == other.track &&
        playlist == other.playlist &&
        album == other.album &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, contributor.hashCode);
    _$hash = $jc(_$hash, track.hashCode);
    _$hash = $jc(_$hash, playlist.hashCode);
    _$hash = $jc(_$hash, album.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendationModel')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('contributor', contributor)
          ..add('track', track)
          ..add('playlist', playlist)
          ..add('album', album)
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class RecommendationModelBuilder
    implements Builder<RecommendationModel, RecommendationModelBuilder> {
  _$RecommendationModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  ContributorModelBuilder? _contributor;
  ContributorModelBuilder get contributor =>
      _$this._contributor ??= new ContributorModelBuilder();
  set contributor(ContributorModelBuilder? contributor) =>
      _$this._contributor = contributor;

  TrackModelBuilder? _track;
  TrackModelBuilder get track => _$this._track ??= new TrackModelBuilder();
  set track(TrackModelBuilder? track) => _$this._track = track;

  PlaylistModelBuilder? _playlist;
  PlaylistModelBuilder get playlist =>
      _$this._playlist ??= new PlaylistModelBuilder();
  set playlist(PlaylistModelBuilder? playlist) => _$this._playlist = playlist;

  AlbumModelBuilder? _album;
  AlbumModelBuilder get album => _$this._album ??= new AlbumModelBuilder();
  set album(AlbumModelBuilder? album) => _$this._album = album;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  RecommendationModelTypeEnum? _type;
  RecommendationModelTypeEnum? get type => _$this._type;
  set type(RecommendationModelTypeEnum? type) => _$this._type = type;

  RecommendationModelBuilder() {
    RecommendationModel._defaults(this);
  }

  RecommendationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subtitle = $v.subtitle;
      _contributor = $v.contributor?.toBuilder();
      _track = $v.track?.toBuilder();
      _playlist = $v.playlist?.toBuilder();
      _album = $v.album?.toBuilder();
      _id = $v.id;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecommendationModel;
  }

  @override
  void update(void Function(RecommendationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendationModel build() => _build();

  _$RecommendationModel _build() {
    _$RecommendationModel _$result;
    try {
      _$result = _$v ??
          new _$RecommendationModel._(
              title: title,
              subtitle: subtitle,
              contributor: _contributor?.build(),
              track: _track?.build(),
              playlist: _playlist?.build(),
              album: _album?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'RecommendationModel', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'RecommendationModel', 'type'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contributor';
        _contributor?.build();
        _$failedField = 'track';
        _track?.build();
        _$failedField = 'playlist';
        _playlist?.build();
        _$failedField = 'album';
        _album?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecommendationModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
