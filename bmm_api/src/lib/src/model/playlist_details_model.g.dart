// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaylistDetailsModelTypeEnum
    _$playlistDetailsModelTypeEnum_playlistDetails =
    const PlaylistDetailsModelTypeEnum._('playlistDetails');

PlaylistDetailsModelTypeEnum _$playlistDetailsModelTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'playlistDetails':
      return _$playlistDetailsModelTypeEnum_playlistDetails;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlaylistDetailsModelTypeEnum>
    _$playlistDetailsModelTypeEnumValues = new BuiltSet<
        PlaylistDetailsModelTypeEnum>(const <PlaylistDetailsModelTypeEnum>[
  _$playlistDetailsModelTypeEnum_playlistDetails,
]);

Serializer<PlaylistDetailsModelTypeEnum>
    _$playlistDetailsModelTypeEnumSerializer =
    new _$PlaylistDetailsModelTypeEnumSerializer();

class _$PlaylistDetailsModelTypeEnumSerializer
    implements PrimitiveSerializer<PlaylistDetailsModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'playlistDetails': 'playlist_details',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'playlist_details': 'playlistDetails',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaylistDetailsModelTypeEnum];
  @override
  final String wireName = 'PlaylistDetailsModelTypeEnum';

  @override
  Object serialize(Serializers serializers, PlaylistDetailsModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaylistDetailsModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaylistDetailsModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlaylistDetailsModel extends PlaylistDetailsModel {
  @override
  final String? cover;
  @override
  final int id;
  @override
  final PlaylistDetailsModelTypeEnum type;
  @override
  final BuiltList<LanguageEnum>? languages;
  @override
  final LanguageEnum? language;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final BuiltList<TrackModel>? tracks;
  @override
  final int trackCount;
  @override
  final int totalSeconds;

  factory _$PlaylistDetailsModel(
          [void Function(PlaylistDetailsModelBuilder)? updates]) =>
      (new PlaylistDetailsModelBuilder()..update(updates))._build();

  _$PlaylistDetailsModel._(
      {this.cover,
      required this.id,
      required this.type,
      this.languages,
      this.language,
      this.title,
      this.description,
      this.tracks,
      required this.trackCount,
      required this.totalSeconds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PlaylistDetailsModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'PlaylistDetailsModel', 'type');
    BuiltValueNullFieldError.checkNotNull(
        trackCount, r'PlaylistDetailsModel', 'trackCount');
    BuiltValueNullFieldError.checkNotNull(
        totalSeconds, r'PlaylistDetailsModel', 'totalSeconds');
  }

  @override
  PlaylistDetailsModel rebuild(
          void Function(PlaylistDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistDetailsModelBuilder toBuilder() =>
      new PlaylistDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaylistDetailsModel &&
        cover == other.cover &&
        id == other.id &&
        type == other.type &&
        languages == other.languages &&
        language == other.language &&
        title == other.title &&
        description == other.description &&
        tracks == other.tracks &&
        trackCount == other.trackCount &&
        totalSeconds == other.totalSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cover.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tracks.hashCode);
    _$hash = $jc(_$hash, trackCount.hashCode);
    _$hash = $jc(_$hash, totalSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaylistDetailsModel')
          ..add('cover', cover)
          ..add('id', id)
          ..add('type', type)
          ..add('languages', languages)
          ..add('language', language)
          ..add('title', title)
          ..add('description', description)
          ..add('tracks', tracks)
          ..add('trackCount', trackCount)
          ..add('totalSeconds', totalSeconds))
        .toString();
  }
}

class PlaylistDetailsModelBuilder
    implements Builder<PlaylistDetailsModel, PlaylistDetailsModelBuilder> {
  _$PlaylistDetailsModel? _$v;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PlaylistDetailsModelTypeEnum? _type;
  PlaylistDetailsModelTypeEnum? get type => _$this._type;
  set type(PlaylistDetailsModelTypeEnum? type) => _$this._type = type;

  ListBuilder<LanguageEnum>? _languages;
  ListBuilder<LanguageEnum> get languages =>
      _$this._languages ??= new ListBuilder<LanguageEnum>();
  set languages(ListBuilder<LanguageEnum>? languages) =>
      _$this._languages = languages;

  LanguageEnum? _language;
  LanguageEnum? get language => _$this._language;
  set language(LanguageEnum? language) => _$this._language = language;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<TrackModel>? _tracks;
  ListBuilder<TrackModel> get tracks =>
      _$this._tracks ??= new ListBuilder<TrackModel>();
  set tracks(ListBuilder<TrackModel>? tracks) => _$this._tracks = tracks;

  int? _trackCount;
  int? get trackCount => _$this._trackCount;
  set trackCount(int? trackCount) => _$this._trackCount = trackCount;

  int? _totalSeconds;
  int? get totalSeconds => _$this._totalSeconds;
  set totalSeconds(int? totalSeconds) => _$this._totalSeconds = totalSeconds;

  PlaylistDetailsModelBuilder() {
    PlaylistDetailsModel._defaults(this);
  }

  PlaylistDetailsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cover = $v.cover;
      _id = $v.id;
      _type = $v.type;
      _languages = $v.languages?.toBuilder();
      _language = $v.language;
      _title = $v.title;
      _description = $v.description;
      _tracks = $v.tracks?.toBuilder();
      _trackCount = $v.trackCount;
      _totalSeconds = $v.totalSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaylistDetailsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaylistDetailsModel;
  }

  @override
  void update(void Function(PlaylistDetailsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaylistDetailsModel build() => _build();

  _$PlaylistDetailsModel _build() {
    _$PlaylistDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$PlaylistDetailsModel._(
            cover: cover,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PlaylistDetailsModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PlaylistDetailsModel', 'type'),
            languages: _languages?.build(),
            language: language,
            title: title,
            description: description,
            tracks: _tracks?.build(),
            trackCount: BuiltValueNullFieldError.checkNotNull(
                trackCount, r'PlaylistDetailsModel', 'trackCount'),
            totalSeconds: BuiltValueNullFieldError.checkNotNull(
                totalSeconds, r'PlaylistDetailsModel', 'totalSeconds'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'tracks';
        _tracks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlaylistDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
