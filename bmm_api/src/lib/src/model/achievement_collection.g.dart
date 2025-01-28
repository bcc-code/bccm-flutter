// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AchievementCollectionTypeEnum
    _$achievementCollectionTypeEnum_achievementCollection =
    const AchievementCollectionTypeEnum._('achievementCollection');

AchievementCollectionTypeEnum _$achievementCollectionTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'achievementCollection':
      return _$achievementCollectionTypeEnum_achievementCollection;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AchievementCollectionTypeEnum>
    _$achievementCollectionTypeEnumValues = new BuiltSet<
        AchievementCollectionTypeEnum>(const <AchievementCollectionTypeEnum>[
  _$achievementCollectionTypeEnum_achievementCollection,
]);

Serializer<AchievementCollectionTypeEnum>
    _$achievementCollectionTypeEnumSerializer =
    new _$AchievementCollectionTypeEnumSerializer();

class _$AchievementCollectionTypeEnumSerializer
    implements PrimitiveSerializer<AchievementCollectionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'achievementCollection': 'achievement_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'achievement_collection': 'achievementCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[AchievementCollectionTypeEnum];
  @override
  final String wireName = 'AchievementCollectionTypeEnum';

  @override
  Object serialize(
          Serializers serializers, AchievementCollectionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AchievementCollectionTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AchievementCollectionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AchievementCollection extends AchievementCollection {
  @override
  final int id;
  @override
  final AchievementCollectionTypeEnum type;
  @override
  final BuiltList<AchievementModel>? list;

  factory _$AchievementCollection(
          [void Function(AchievementCollectionBuilder)? updates]) =>
      (new AchievementCollectionBuilder()..update(updates))._build();

  _$AchievementCollection._({required this.id, required this.type, this.list})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AchievementCollection', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'AchievementCollection', 'type');
  }

  @override
  AchievementCollection rebuild(
          void Function(AchievementCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AchievementCollectionBuilder toBuilder() =>
      new AchievementCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AchievementCollection &&
        id == other.id &&
        type == other.type &&
        list == other.list;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AchievementCollection')
          ..add('id', id)
          ..add('type', type)
          ..add('list', list))
        .toString();
  }
}

class AchievementCollectionBuilder
    implements Builder<AchievementCollection, AchievementCollectionBuilder> {
  _$AchievementCollection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  AchievementCollectionTypeEnum? _type;
  AchievementCollectionTypeEnum? get type => _$this._type;
  set type(AchievementCollectionTypeEnum? type) => _$this._type = type;

  ListBuilder<AchievementModel>? _list;
  ListBuilder<AchievementModel> get list =>
      _$this._list ??= new ListBuilder<AchievementModel>();
  set list(ListBuilder<AchievementModel>? list) => _$this._list = list;

  AchievementCollectionBuilder() {
    AchievementCollection._defaults(this);
  }

  AchievementCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _list = $v.list?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AchievementCollection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AchievementCollection;
  }

  @override
  void update(void Function(AchievementCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AchievementCollection build() => _build();

  _$AchievementCollection _build() {
    _$AchievementCollection _$result;
    try {
      _$result = _$v ??
          new _$AchievementCollection._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AchievementCollection', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'AchievementCollection', 'type'),
            list: _list?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AchievementCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
