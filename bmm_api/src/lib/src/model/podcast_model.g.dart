// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PodcastModelTypeEnum _$podcastModelTypeEnum_podcast =
    const PodcastModelTypeEnum._('podcast');

PodcastModelTypeEnum _$podcastModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'podcast':
      return _$podcastModelTypeEnum_podcast;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PodcastModelTypeEnum> _$podcastModelTypeEnumValues =
    new BuiltSet<PodcastModelTypeEnum>(const <PodcastModelTypeEnum>[
  _$podcastModelTypeEnum_podcast,
]);

Serializer<PodcastModelTypeEnum> _$podcastModelTypeEnumSerializer =
    new _$PodcastModelTypeEnumSerializer();

class _$PodcastModelTypeEnumSerializer
    implements PrimitiveSerializer<PodcastModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'podcast': 'podcast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'podcast': 'podcast',
  };

  @override
  final Iterable<Type> types = const <Type>[PodcastModelTypeEnum];
  @override
  final String wireName = 'PodcastModelTypeEnum';

  @override
  Object serialize(Serializers serializers, PodcastModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PodcastModelTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PodcastModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PodcastModel extends PodcastModel {
  @override
  final String? cover;
  @override
  final int id;
  @override
  final PodcastModelTypeEnum type;
  @override
  final BuiltList<LanguageEnum>? languages;
  @override
  final LanguageEnum? language;
  @override
  final String? title;

  factory _$PodcastModel([void Function(PodcastModelBuilder)? updates]) =>
      (new PodcastModelBuilder()..update(updates))._build();

  _$PodcastModel._(
      {this.cover,
      required this.id,
      required this.type,
      this.languages,
      this.language,
      this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PodcastModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'PodcastModel', 'type');
  }

  @override
  PodcastModel rebuild(void Function(PodcastModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastModelBuilder toBuilder() => new PodcastModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PodcastModel &&
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
    return (newBuiltValueToStringHelper(r'PodcastModel')
          ..add('cover', cover)
          ..add('id', id)
          ..add('type', type)
          ..add('languages', languages)
          ..add('language', language)
          ..add('title', title))
        .toString();
  }
}

class PodcastModelBuilder
    implements Builder<PodcastModel, PodcastModelBuilder> {
  _$PodcastModel? _$v;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  PodcastModelTypeEnum? _type;
  PodcastModelTypeEnum? get type => _$this._type;
  set type(PodcastModelTypeEnum? type) => _$this._type = type;

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

  PodcastModelBuilder() {
    PodcastModel._defaults(this);
  }

  PodcastModelBuilder get _$this {
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
  void replace(PodcastModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PodcastModel;
  }

  @override
  void update(void Function(PodcastModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastModel build() => _build();

  _$PodcastModel _build() {
    _$PodcastModel _$result;
    try {
      _$result = _$v ??
          new _$PodcastModel._(
            cover: cover,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PodcastModel', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PodcastModel', 'type'),
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
            r'PodcastModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
