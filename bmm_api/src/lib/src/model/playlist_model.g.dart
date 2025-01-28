// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlaylistModelTypeEnum _$playlistModelTypeEnum_playlist =
    const PlaylistModelTypeEnum._('playlist');

PlaylistModelTypeEnum _$playlistModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'playlist':
      return _$playlistModelTypeEnum_playlist;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlaylistModelTypeEnum> _$playlistModelTypeEnumValues =
    new BuiltSet<PlaylistModelTypeEnum>(const <PlaylistModelTypeEnum>[
  _$playlistModelTypeEnum_playlist,
]);

Serializer<PlaylistModelTypeEnum> _$playlistModelTypeEnumSerializer =
    new _$PlaylistModelTypeEnumSerializer();

class _$PlaylistModelTypeEnumSerializer
    implements PrimitiveSerializer<PlaylistModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'playlist': 'playlist',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'playlist': 'playlist',
  };

  @override
  final Iterable<Type> types = const <Type>[PlaylistModelTypeEnum];
  @override
  final String wireName = 'PlaylistModelTypeEnum';

  @override
  Object serialize(Serializers serializers, PlaylistModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlaylistModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlaylistModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlaylistModel extends PlaylistModel {
  @override
  final String? cover;
  @override
  final int id;
  @override
  final PlaylistModelTypeEnum type;
  @override
  final BuiltList<LanguageEnum>? languages;
  @override
  final LanguageEnum? language;
  @override
  final String? title;

  factory _$PlaylistModel([void Function(PlaylistModelBuilder)? updates]) =>
      (new PlaylistModelBuilder()..update(updates))._build();

  _$PlaylistModel._(
      {this.cover,
      required this.id,
      required this.type,
      this.languages,
      this.language,
      this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PlaylistModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'PlaylistModel', 'type');
  }

  @override
  PlaylistModel rebuild(void Function(PlaylistModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaylistModelBuilder toBuilder() => new PlaylistModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaylistModel &&
        cover == other.cover &&
        id == other.id &&
        type == other.type &&
        languages == other.languages &&
        language == other.language &&
        title == other.title;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaylistModel')
          ..add('cover', cover)
          ..add('id', id)
          ..add('type', type)
          ..add('languages', languages)
          ..add('language', language)
          ..add('title', title))
        .toString();
  }
}

class PlaylistModelBuilder
    implements Builder<PlaylistModel, PlaylistModelBuilder> {
  _$PlaylistModel? _$v;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PlaylistModelTypeEnum? _type;
  PlaylistModelTypeEnum? get type => _$this._type;
  set type(PlaylistModelTypeEnum? type) => _$this._type = type;

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

  PlaylistModelBuilder() {
    PlaylistModel._defaults(this);
  }

  PlaylistModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cover = $v.cover;
      _id = $v.id;
      _type = $v.type;
      _languages = $v.languages?.toBuilder();
      _language = $v.language;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaylistModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaylistModel;
  }

  @override
  void update(void Function(PlaylistModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaylistModel build() => _build();

  _$PlaylistModel _build() {
    _$PlaylistModel _$result;
    try {
      _$result = _$v ??
          new _$PlaylistModel._(
            cover: cover,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PlaylistModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PlaylistModel', 'type'),
            languages: _languages?.build(),
            language: language,
            title: title,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlaylistModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
