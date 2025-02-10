// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackModelTypeEnum _$trackModelTypeEnum_track =
    const TrackModelTypeEnum._('track');

TrackModelTypeEnum _$trackModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'track':
      return _$trackModelTypeEnum_track;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TrackModelTypeEnum> _$trackModelTypeEnumValues =
    new BuiltSet<TrackModelTypeEnum>(const <TrackModelTypeEnum>[
  _$trackModelTypeEnum_track,
]);

Serializer<TrackModelTypeEnum> _$trackModelTypeEnumSerializer =
    new _$TrackModelTypeEnumSerializer();

class _$TrackModelTypeEnumSerializer
    implements PrimitiveSerializer<TrackModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'track': 'track',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'track': 'track',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackModelTypeEnum];
  @override
  final String wireName = 'TrackModelTypeEnum';

  @override
  Object serialize(Serializers serializers, TrackModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TrackModel extends TrackModel {
  @override
  final String? comment;
  @override
  final String? cover;
  @override
  final int id;
  @override
  final bool? isVisible;
  @override
  final int? order;
  @override
  final int parentId;
  @override
  final DateTime publishedAt;
  @override
  final DateTime recordedAt;
  @override
  final BuiltList<TrackModelRelation>? rel;
  @override
  final BuiltList<TrackModelBibleRelation>? bibleRelations;
  @override
  final BuiltList<TrackModelExternalRelation>? externalRelations;
  @override
  final BuiltList<TrackModelContributorRelation>? contributors;
  @override
  final BuiltList<TrackModelSongbookRelation>? songbookRelations;
  @override
  final TrackSubtype subtype;
  @override
  final BuiltList<String> tags;
  @override
  final TrackModelTrackMeta meta;
  @override
  final TrackModelTypeEnum type;
  @override
  final BuiltList<LanguageEnum> languages;
  @override
  final LanguageEnum language;
  @override
  final BuiltList<LanguageEnum> transcriptionLanguages;
  @override
  final String? title;
  @override
  final String? publisher;
  @override
  final String? copyright;
  @override
  final BuiltList<TrackModelMedium>? media;
  @override
  final bool? hasListened;
  @override
  final bool? hasTranscription;
  @override
  final bool? isLiked;

  factory _$TrackModel([void Function(TrackModelBuilder)? updates]) =>
      (new TrackModelBuilder()..update(updates))._build();

  _$TrackModel._(
      {this.comment,
      this.cover,
      required this.id,
      this.isVisible,
      this.order,
      required this.parentId,
      required this.publishedAt,
      required this.recordedAt,
      this.rel,
      this.bibleRelations,
      this.externalRelations,
      this.contributors,
      this.songbookRelations,
      required this.subtype,
      required this.tags,
      required this.meta,
      required this.type,
      required this.languages,
      required this.language,
      required this.transcriptionLanguages,
      this.title,
      this.publisher,
      this.copyright,
      this.media,
      this.hasListened,
      this.hasTranscription,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TrackModel', 'id');
    BuiltValueNullFieldError.checkNotNull(parentId, r'TrackModel', 'parentId');
    BuiltValueNullFieldError.checkNotNull(
        publishedAt, r'TrackModel', 'publishedAt');
    BuiltValueNullFieldError.checkNotNull(
        recordedAt, r'TrackModel', 'recordedAt');
    BuiltValueNullFieldError.checkNotNull(subtype, r'TrackModel', 'subtype');
    BuiltValueNullFieldError.checkNotNull(tags, r'TrackModel', 'tags');
    BuiltValueNullFieldError.checkNotNull(meta, r'TrackModel', 'meta');
    BuiltValueNullFieldError.checkNotNull(type, r'TrackModel', 'type');
    BuiltValueNullFieldError.checkNotNull(
        languages, r'TrackModel', 'languages');
    BuiltValueNullFieldError.checkNotNull(language, r'TrackModel', 'language');
    BuiltValueNullFieldError.checkNotNull(
        transcriptionLanguages, r'TrackModel', 'transcriptionLanguages');
  }

  @override
  TrackModel rebuild(void Function(TrackModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackModelBuilder toBuilder() => new TrackModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackModel &&
        comment == other.comment &&
        cover == other.cover &&
        id == other.id &&
        isVisible == other.isVisible &&
        order == other.order &&
        parentId == other.parentId &&
        publishedAt == other.publishedAt &&
        recordedAt == other.recordedAt &&
        rel == other.rel &&
        bibleRelations == other.bibleRelations &&
        externalRelations == other.externalRelations &&
        contributors == other.contributors &&
        songbookRelations == other.songbookRelations &&
        subtype == other.subtype &&
        tags == other.tags &&
        meta == other.meta &&
        type == other.type &&
        languages == other.languages &&
        language == other.language &&
        transcriptionLanguages == other.transcriptionLanguages &&
        title == other.title &&
        publisher == other.publisher &&
        copyright == other.copyright &&
        media == other.media &&
        hasListened == other.hasListened &&
        hasTranscription == other.hasTranscription &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, cover.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, recordedAt.hashCode);
    _$hash = $jc(_$hash, rel.hashCode);
    _$hash = $jc(_$hash, bibleRelations.hashCode);
    _$hash = $jc(_$hash, externalRelations.hashCode);
    _$hash = $jc(_$hash, contributors.hashCode);
    _$hash = $jc(_$hash, songbookRelations.hashCode);
    _$hash = $jc(_$hash, subtype.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, transcriptionLanguages.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, publisher.hashCode);
    _$hash = $jc(_$hash, copyright.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, hasListened.hashCode);
    _$hash = $jc(_$hash, hasTranscription.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackModel')
          ..add('comment', comment)
          ..add('cover', cover)
          ..add('id', id)
          ..add('isVisible', isVisible)
          ..add('order', order)
          ..add('parentId', parentId)
          ..add('publishedAt', publishedAt)
          ..add('recordedAt', recordedAt)
          ..add('rel', rel)
          ..add('bibleRelations', bibleRelations)
          ..add('externalRelations', externalRelations)
          ..add('contributors', contributors)
          ..add('songbookRelations', songbookRelations)
          ..add('subtype', subtype)
          ..add('tags', tags)
          ..add('meta', meta)
          ..add('type', type)
          ..add('languages', languages)
          ..add('language', language)
          ..add('transcriptionLanguages', transcriptionLanguages)
          ..add('title', title)
          ..add('publisher', publisher)
          ..add('copyright', copyright)
          ..add('media', media)
          ..add('hasListened', hasListened)
          ..add('hasTranscription', hasTranscription)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class TrackModelBuilder implements Builder<TrackModel, TrackModelBuilder> {
  _$TrackModel? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  int? _parentId;
  int? get parentId => _$this._parentId;
  set parentId(int? parentId) => _$this._parentId = parentId;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  DateTime? _recordedAt;
  DateTime? get recordedAt => _$this._recordedAt;
  set recordedAt(DateTime? recordedAt) => _$this._recordedAt = recordedAt;

  ListBuilder<TrackModelRelation>? _rel;
  ListBuilder<TrackModelRelation> get rel =>
      _$this._rel ??= new ListBuilder<TrackModelRelation>();
  set rel(ListBuilder<TrackModelRelation>? rel) => _$this._rel = rel;

  ListBuilder<TrackModelBibleRelation>? _bibleRelations;
  ListBuilder<TrackModelBibleRelation> get bibleRelations =>
      _$this._bibleRelations ??= new ListBuilder<TrackModelBibleRelation>();
  set bibleRelations(ListBuilder<TrackModelBibleRelation>? bibleRelations) =>
      _$this._bibleRelations = bibleRelations;

  ListBuilder<TrackModelExternalRelation>? _externalRelations;
  ListBuilder<TrackModelExternalRelation> get externalRelations =>
      _$this._externalRelations ??=
          new ListBuilder<TrackModelExternalRelation>();
  set externalRelations(
          ListBuilder<TrackModelExternalRelation>? externalRelations) =>
      _$this._externalRelations = externalRelations;

  ListBuilder<TrackModelContributorRelation>? _contributors;
  ListBuilder<TrackModelContributorRelation> get contributors =>
      _$this._contributors ??= new ListBuilder<TrackModelContributorRelation>();
  set contributors(ListBuilder<TrackModelContributorRelation>? contributors) =>
      _$this._contributors = contributors;

  ListBuilder<TrackModelSongbookRelation>? _songbookRelations;
  ListBuilder<TrackModelSongbookRelation> get songbookRelations =>
      _$this._songbookRelations ??=
          new ListBuilder<TrackModelSongbookRelation>();
  set songbookRelations(
          ListBuilder<TrackModelSongbookRelation>? songbookRelations) =>
      _$this._songbookRelations = songbookRelations;

  TrackSubtype? _subtype;
  TrackSubtype? get subtype => _$this._subtype;
  set subtype(TrackSubtype? subtype) => _$this._subtype = subtype;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  TrackModelTrackMetaBuilder? _meta;
  TrackModelTrackMetaBuilder get meta =>
      _$this._meta ??= new TrackModelTrackMetaBuilder();
  set meta(TrackModelTrackMetaBuilder? meta) => _$this._meta = meta;

  TrackModelTypeEnum? _type;
  TrackModelTypeEnum? get type => _$this._type;
  set type(TrackModelTypeEnum? type) => _$this._type = type;

  ListBuilder<LanguageEnum>? _languages;
  ListBuilder<LanguageEnum> get languages =>
      _$this._languages ??= new ListBuilder<LanguageEnum>();
  set languages(ListBuilder<LanguageEnum>? languages) =>
      _$this._languages = languages;

  LanguageEnum? _language;
  LanguageEnum? get language => _$this._language;
  set language(LanguageEnum? language) => _$this._language = language;

  ListBuilder<LanguageEnum>? _transcriptionLanguages;
  ListBuilder<LanguageEnum> get transcriptionLanguages =>
      _$this._transcriptionLanguages ??= new ListBuilder<LanguageEnum>();
  set transcriptionLanguages(
          ListBuilder<LanguageEnum>? transcriptionLanguages) =>
      _$this._transcriptionLanguages = transcriptionLanguages;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _publisher;
  String? get publisher => _$this._publisher;
  set publisher(String? publisher) => _$this._publisher = publisher;

  String? _copyright;
  String? get copyright => _$this._copyright;
  set copyright(String? copyright) => _$this._copyright = copyright;

  ListBuilder<TrackModelMedium>? _media;
  ListBuilder<TrackModelMedium> get media =>
      _$this._media ??= new ListBuilder<TrackModelMedium>();
  set media(ListBuilder<TrackModelMedium>? media) => _$this._media = media;

  bool? _hasListened;
  bool? get hasListened => _$this._hasListened;
  set hasListened(bool? hasListened) => _$this._hasListened = hasListened;

  bool? _hasTranscription;
  bool? get hasTranscription => _$this._hasTranscription;
  set hasTranscription(bool? hasTranscription) =>
      _$this._hasTranscription = hasTranscription;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  TrackModelBuilder() {
    TrackModel._defaults(this);
  }

  TrackModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _cover = $v.cover;
      _id = $v.id;
      _isVisible = $v.isVisible;
      _order = $v.order;
      _parentId = $v.parentId;
      _publishedAt = $v.publishedAt;
      _recordedAt = $v.recordedAt;
      _rel = $v.rel?.toBuilder();
      _bibleRelations = $v.bibleRelations?.toBuilder();
      _externalRelations = $v.externalRelations?.toBuilder();
      _contributors = $v.contributors?.toBuilder();
      _songbookRelations = $v.songbookRelations?.toBuilder();
      _subtype = $v.subtype;
      _tags = $v.tags.toBuilder();
      _meta = $v.meta.toBuilder();
      _type = $v.type;
      _languages = $v.languages.toBuilder();
      _language = $v.language;
      _transcriptionLanguages = $v.transcriptionLanguages.toBuilder();
      _title = $v.title;
      _publisher = $v.publisher;
      _copyright = $v.copyright;
      _media = $v.media?.toBuilder();
      _hasListened = $v.hasListened;
      _hasTranscription = $v.hasTranscription;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackModel;
  }

  @override
  void update(void Function(TrackModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackModel build() => _build();

  _$TrackModel _build() {
    _$TrackModel _$result;
    try {
      _$result = _$v ??
          new _$TrackModel._(
            comment: comment,
            cover: cover,
            id: BuiltValueNullFieldError.checkNotNull(id, r'TrackModel', 'id'),
            isVisible: isVisible,
            order: order,
            parentId: BuiltValueNullFieldError.checkNotNull(
                parentId, r'TrackModel', 'parentId'),
            publishedAt: BuiltValueNullFieldError.checkNotNull(
                publishedAt, r'TrackModel', 'publishedAt'),
            recordedAt: BuiltValueNullFieldError.checkNotNull(
                recordedAt, r'TrackModel', 'recordedAt'),
            rel: _rel?.build(),
            bibleRelations: _bibleRelations?.build(),
            externalRelations: _externalRelations?.build(),
            contributors: _contributors?.build(),
            songbookRelations: _songbookRelations?.build(),
            subtype: BuiltValueNullFieldError.checkNotNull(
                subtype, r'TrackModel', 'subtype'),
            tags: tags.build(),
            meta: meta.build(),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TrackModel', 'type'),
            languages: languages.build(),
            language: BuiltValueNullFieldError.checkNotNull(
                language, r'TrackModel', 'language'),
            transcriptionLanguages: transcriptionLanguages.build(),
            title: title,
            publisher: publisher,
            copyright: copyright,
            media: _media?.build(),
            hasListened: hasListened,
            hasTranscription: hasTranscription,
            isLiked: isLiked,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rel';
        _rel?.build();
        _$failedField = 'bibleRelations';
        _bibleRelations?.build();
        _$failedField = 'externalRelations';
        _externalRelations?.build();
        _$failedField = 'contributors';
        _contributors?.build();
        _$failedField = 'songbookRelations';
        _songbookRelations?.build();

        _$failedField = 'tags';
        tags.build();
        _$failedField = 'meta';
        meta.build();

        _$failedField = 'languages';
        languages.build();

        _$failedField = 'transcriptionLanguages';
        transcriptionLanguages.build();

        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrackModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
