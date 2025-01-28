// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlbumModelTypeEnum _$albumModelTypeEnum_album =
    const AlbumModelTypeEnum._('album');

AlbumModelTypeEnum _$albumModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'album':
      return _$albumModelTypeEnum_album;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AlbumModelTypeEnum> _$albumModelTypeEnumValues =
    new BuiltSet<AlbumModelTypeEnum>(const <AlbumModelTypeEnum>[
  _$albumModelTypeEnum_album,
]);

Serializer<AlbumModelTypeEnum> _$albumModelTypeEnumSerializer =
    new _$AlbumModelTypeEnumSerializer();

class _$AlbumModelTypeEnumSerializer
    implements PrimitiveSerializer<AlbumModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'album': 'album',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'album': 'album',
  };

  @override
  final Iterable<Type> types = const <Type>[AlbumModelTypeEnum];
  @override
  final String wireName = 'AlbumModelTypeEnum';

  @override
  Object serialize(Serializers serializers, AlbumModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlbumModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlbumModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlbumModel extends AlbumModel {
  @override
  final AlbumModelAlbumMeta? meta;
  @override
  final String? bmmId;
  @override
  final String? cover;
  @override
  final int id;
  @override
  final BuiltList<LanguageEnum>? languages;
  @override
  final int? parentId;
  @override
  final DateTime? publishedAt;
  @override
  final BuiltList<String>? tags;
  @override
  final LanguageEnum? language;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final AlbumModelTypeEnum type;
  @override
  final BuiltList<IAlbumOrTrack>? children;
  @override
  final int? latestTrackId;
  @override
  final int? latestTrackPosition;

  factory _$AlbumModel([void Function(AlbumModelBuilder)? updates]) =>
      (new AlbumModelBuilder()..update(updates))._build();

  _$AlbumModel._(
      {this.meta,
      this.bmmId,
      this.cover,
      required this.id,
      this.languages,
      this.parentId,
      this.publishedAt,
      this.tags,
      this.language,
      this.title,
      this.description,
      required this.type,
      this.children,
      this.latestTrackId,
      this.latestTrackPosition})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AlbumModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'AlbumModel', 'type');
  }

  @override
  AlbumModel rebuild(void Function(AlbumModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumModelBuilder toBuilder() => new AlbumModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumModel &&
        meta == other.meta &&
        bmmId == other.bmmId &&
        cover == other.cover &&
        id == other.id &&
        languages == other.languages &&
        parentId == other.parentId &&
        publishedAt == other.publishedAt &&
        tags == other.tags &&
        language == other.language &&
        title == other.title &&
        description == other.description &&
        type == other.type &&
        children == other.children &&
        latestTrackId == other.latestTrackId &&
        latestTrackPosition == other.latestTrackPosition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, bmmId.hashCode);
    _$hash = $jc(_$hash, cover.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jc(_$hash, latestTrackId.hashCode);
    _$hash = $jc(_$hash, latestTrackPosition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlbumModel')
          ..add('meta', meta)
          ..add('bmmId', bmmId)
          ..add('cover', cover)
          ..add('id', id)
          ..add('languages', languages)
          ..add('parentId', parentId)
          ..add('publishedAt', publishedAt)
          ..add('tags', tags)
          ..add('language', language)
          ..add('title', title)
          ..add('description', description)
          ..add('type', type)
          ..add('children', children)
          ..add('latestTrackId', latestTrackId)
          ..add('latestTrackPosition', latestTrackPosition))
        .toString();
  }
}

class AlbumModelBuilder implements Builder<AlbumModel, AlbumModelBuilder> {
  _$AlbumModel? _$v;

  AlbumModelAlbumMetaBuilder? _meta;
  AlbumModelAlbumMetaBuilder get meta =>
      _$this._meta ??= new AlbumModelAlbumMetaBuilder();
  set meta(AlbumModelAlbumMetaBuilder? meta) => _$this._meta = meta;

  String? _bmmId;
  String? get bmmId => _$this._bmmId;
  set bmmId(String? bmmId) => _$this._bmmId = bmmId;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<LanguageEnum>? _languages;
  ListBuilder<LanguageEnum> get languages =>
      _$this._languages ??= new ListBuilder<LanguageEnum>();
  set languages(ListBuilder<LanguageEnum>? languages) =>
      _$this._languages = languages;

  int? _parentId;
  int? get parentId => _$this._parentId;
  set parentId(int? parentId) => _$this._parentId = parentId;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  LanguageEnum? _language;
  LanguageEnum? get language => _$this._language;
  set language(LanguageEnum? language) => _$this._language = language;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AlbumModelTypeEnum? _type;
  AlbumModelTypeEnum? get type => _$this._type;
  set type(AlbumModelTypeEnum? type) => _$this._type = type;

  ListBuilder<IAlbumOrTrack>? _children;
  ListBuilder<IAlbumOrTrack> get children =>
      _$this._children ??= new ListBuilder<IAlbumOrTrack>();
  set children(ListBuilder<IAlbumOrTrack>? children) =>
      _$this._children = children;

  int? _latestTrackId;
  int? get latestTrackId => _$this._latestTrackId;
  set latestTrackId(int? latestTrackId) =>
      _$this._latestTrackId = latestTrackId;

  int? _latestTrackPosition;
  int? get latestTrackPosition => _$this._latestTrackPosition;
  set latestTrackPosition(int? latestTrackPosition) =>
      _$this._latestTrackPosition = latestTrackPosition;

  AlbumModelBuilder() {
    AlbumModel._defaults(this);
  }

  AlbumModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta?.toBuilder();
      _bmmId = $v.bmmId;
      _cover = $v.cover;
      _id = $v.id;
      _languages = $v.languages?.toBuilder();
      _parentId = $v.parentId;
      _publishedAt = $v.publishedAt;
      _tags = $v.tags?.toBuilder();
      _language = $v.language;
      _title = $v.title;
      _description = $v.description;
      _type = $v.type;
      _children = $v.children?.toBuilder();
      _latestTrackId = $v.latestTrackId;
      _latestTrackPosition = $v.latestTrackPosition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumModel;
  }

  @override
  void update(void Function(AlbumModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlbumModel build() => _build();

  _$AlbumModel _build() {
    _$AlbumModel _$result;
    try {
      _$result = _$v ??
          new _$AlbumModel._(
            meta: _meta?.build(),
            bmmId: bmmId,
            cover: cover,
            id: BuiltValueNullFieldError.checkNotNull(id, r'AlbumModel', 'id'),
            languages: _languages?.build(),
            parentId: parentId,
            publishedAt: publishedAt,
            tags: _tags?.build(),
            language: language,
            title: title,
            description: description,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'AlbumModel', 'type'),
            children: _children?.build(),
            latestTrackId: latestTrackId,
            latestTrackPosition: latestTrackPosition,
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

        _$failedField = 'children';
        _children?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AlbumModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
