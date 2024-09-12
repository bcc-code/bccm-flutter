// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_achievement_collection_or_chapter_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IAchievementCollectionOrChapterHeaderTypeEnum
    _$iAchievementCollectionOrChapterHeaderTypeEnum_achievementCollection =
    const IAchievementCollectionOrChapterHeaderTypeEnum._(
        'achievementCollection');
const IAchievementCollectionOrChapterHeaderTypeEnum
    _$iAchievementCollectionOrChapterHeaderTypeEnum_chapterHeader =
    const IAchievementCollectionOrChapterHeaderTypeEnum._('chapterHeader');

IAchievementCollectionOrChapterHeaderTypeEnum
    _$iAchievementCollectionOrChapterHeaderTypeEnumValueOf(String name) {
  switch (name) {
    case 'achievementCollection':
      return _$iAchievementCollectionOrChapterHeaderTypeEnum_achievementCollection;
    case 'chapterHeader':
      return _$iAchievementCollectionOrChapterHeaderTypeEnum_chapterHeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IAchievementCollectionOrChapterHeaderTypeEnum>
    _$iAchievementCollectionOrChapterHeaderTypeEnumValues = new BuiltSet<
        IAchievementCollectionOrChapterHeaderTypeEnum>(const <IAchievementCollectionOrChapterHeaderTypeEnum>[
  _$iAchievementCollectionOrChapterHeaderTypeEnum_achievementCollection,
  _$iAchievementCollectionOrChapterHeaderTypeEnum_chapterHeader,
]);

Serializer<IAchievementCollectionOrChapterHeaderTypeEnum>
    _$iAchievementCollectionOrChapterHeaderTypeEnumSerializer =
    new _$IAchievementCollectionOrChapterHeaderTypeEnumSerializer();

class _$IAchievementCollectionOrChapterHeaderTypeEnumSerializer
    implements
        PrimitiveSerializer<IAchievementCollectionOrChapterHeaderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'achievementCollection': 'achievement_collection',
    'chapterHeader': 'chapter_header',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'achievement_collection': 'achievementCollection',
    'chapter_header': 'chapterHeader',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IAchievementCollectionOrChapterHeaderTypeEnum
  ];
  @override
  final String wireName = 'IAchievementCollectionOrChapterHeaderTypeEnum';

  @override
  Object serialize(Serializers serializers,
          IAchievementCollectionOrChapterHeaderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IAchievementCollectionOrChapterHeaderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IAchievementCollectionOrChapterHeaderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IAchievementCollectionOrChapterHeader
    extends IAchievementCollectionOrChapterHeader {
  @override
  final OneOf oneOf;

  factory _$IAchievementCollectionOrChapterHeader(
          [void Function(IAchievementCollectionOrChapterHeaderBuilder)?
              updates]) =>
      (new IAchievementCollectionOrChapterHeaderBuilder()..update(updates))
          ._build();

  _$IAchievementCollectionOrChapterHeader._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'IAchievementCollectionOrChapterHeader', 'oneOf');
  }

  @override
  IAchievementCollectionOrChapterHeader rebuild(
          void Function(IAchievementCollectionOrChapterHeaderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IAchievementCollectionOrChapterHeaderBuilder toBuilder() =>
      new IAchievementCollectionOrChapterHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IAchievementCollectionOrChapterHeader &&
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
            r'IAchievementCollectionOrChapterHeader')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class IAchievementCollectionOrChapterHeaderBuilder
    implements
        Builder<IAchievementCollectionOrChapterHeader,
            IAchievementCollectionOrChapterHeaderBuilder> {
  _$IAchievementCollectionOrChapterHeader? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  IAchievementCollectionOrChapterHeaderBuilder() {
    IAchievementCollectionOrChapterHeader._defaults(this);
  }

  IAchievementCollectionOrChapterHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IAchievementCollectionOrChapterHeader other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IAchievementCollectionOrChapterHeader;
  }

  @override
  void update(
      void Function(IAchievementCollectionOrChapterHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IAchievementCollectionOrChapterHeader build() => _build();

  _$IAchievementCollectionOrChapterHeader _build() {
    final _$result = _$v ??
        new _$IAchievementCollectionOrChapterHeader._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'IAchievementCollectionOrChapterHeader', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
