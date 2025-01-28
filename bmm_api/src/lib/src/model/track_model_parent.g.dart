// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model_parent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrackModelParent extends TrackModelParent {
  @override
  final TrackModelParentMeta? meta;
  @override
  final int? id;
  @override
  final int? parentId;
  @override
  final String? type;
  @override
  final String? bmmId;
  @override
  final String? cover;
  @override
  final LanguageEnum? language;
  @override
  final BuiltList<LanguageEnum>? languages;
  @override
  final DateTime? publishedAt;
  @override
  final BuiltList<String>? tags;
  @override
  final String? title;
  @override
  final String? description;

  factory _$TrackModelParent(
          [void Function(TrackModelParentBuilder)? updates]) =>
      (new TrackModelParentBuilder()..update(updates))._build();

  _$TrackModelParent._(
      {this.meta,
      this.id,
      this.parentId,
      this.type,
      this.bmmId,
      this.cover,
      this.language,
      this.languages,
      this.publishedAt,
      this.tags,
      this.title,
      this.description})
      : super._();

  @override
  TrackModelParent rebuild(void Function(TrackModelParentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelParentBuilder toBuilder() =>
      new TrackModelParentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModelParent &&
        meta == other.meta &&
        id == other.id &&
        parentId == other.parentId &&
        type == other.type &&
        bmmId == other.bmmId &&
        cover == other.cover &&
        language == other.language &&
        languages == other.languages &&
        publishedAt == other.publishedAt &&
        tags == other.tags &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, bmmId.hashCode);
    _$hash = $jc(_$hash, cover.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModelParent')
          ..add('meta', meta)
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('type', type)
          ..add('bmmId', bmmId)
          ..add('cover', cover)
          ..add('language', language)
          ..add('languages', languages)
          ..add('publishedAt', publishedAt)
          ..add('tags', tags)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class TrackModelParentBuilder
    implements Builder<TrackModelParent, TrackModelParentBuilder> {
  _$TrackModelParent? _$v;

  TrackModelParentMetaBuilder? _meta;
  TrackModelParentMetaBuilder get meta =>
      _$this._meta ??= new TrackModelParentMetaBuilder();
  set meta(TrackModelParentMetaBuilder? meta) => _$this._meta = meta;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _parentId;
  int? get parentId => _$this._parentId;
  set parentId(int? parentId) => _$this._parentId = parentId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _bmmId;
  String? get bmmId => _$this._bmmId;
  set bmmId(String? bmmId) => _$this._bmmId = bmmId;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  LanguageEnum? _language;
  LanguageEnum? get language => _$this._language;
  set language(LanguageEnum? language) => _$this._language = language;

  ListBuilder<LanguageEnum>? _languages;
  ListBuilder<LanguageEnum> get languages =>
      _$this._languages ??= new ListBuilder<LanguageEnum>();
  set languages(ListBuilder<LanguageEnum>? languages) =>
      _$this._languages = languages;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TrackModelParentBuilder() {
    TrackModelParent._defaults(this);
  }

  TrackModelParentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta?.toBuilder();
      _id = $v.id;
      _parentId = $v.parentId;
      _type = $v.type;
      _bmmId = $v.bmmId;
      _cover = $v.cover;
      _language = $v.language;
      _languages = $v.languages?.toBuilder();
      _publishedAt = $v.publishedAt;
      _tags = $v.tags?.toBuilder();
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModelParent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModelParent;
  }

  @override
  void update(void Function(TrackModelParentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModelParent build() => _build();

  _$TrackModelParent _build() {
    _$TrackModelParent _$result;
    try {
      _$result = _$v ??
          new _$TrackModelParent._(
            meta: _meta?.build(),
            id: id,
            parentId: parentId,
            type: type,
            bmmId: bmmId,
            cover: cover,
            language: language,
            languages: _languages?.build(),
            publishedAt: publishedAt,
            tags: _tags?.build(),
            title: title,
            description: description,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();

        _$failedField = 'languages';
        _languages?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrackModelParent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
