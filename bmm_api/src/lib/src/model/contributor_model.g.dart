// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContributorModelTypeEnum _$contributorModelTypeEnum_contributor =
    const ContributorModelTypeEnum._('contributor');

ContributorModelTypeEnum _$contributorModelTypeEnumValueOf(String name) {
  switch (name) {
    case 'contributor':
      return _$contributorModelTypeEnum_contributor;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ContributorModelTypeEnum> _$contributorModelTypeEnumValues =
    new BuiltSet<ContributorModelTypeEnum>(const <ContributorModelTypeEnum>[
  _$contributorModelTypeEnum_contributor,
]);

Serializer<ContributorModelTypeEnum> _$contributorModelTypeEnumSerializer =
    new _$ContributorModelTypeEnumSerializer();

class _$ContributorModelTypeEnumSerializer
    implements PrimitiveSerializer<ContributorModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'contributor': 'contributor',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'contributor': 'contributor',
  };

  @override
  final Iterable<Type> types = const <Type>[ContributorModelTypeEnum];
  @override
  final String wireName = 'ContributorModelTypeEnum';

  @override
  Object serialize(Serializers serializers, ContributorModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ContributorModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ContributorModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ContributorModel extends ContributorModel {
  @override
  final int id;
  @override
  final ContributorModelTypeEnum type;
  @override
  final bool? isVisible;
  @override
  final String? name;
  @override
  final String? cover;
  @override
  final ContributorContributorMeta? meta;
  @override
  final int? interpretReferences;
  @override
  final int? otherReferences;

  factory _$ContributorModel(
          [void Function(ContributorModelBuilder)? updates]) =>
      (new ContributorModelBuilder()..update(updates))._build();

  _$ContributorModel._(
      {required this.id,
      required this.type,
      this.isVisible,
      this.name,
      this.cover,
      this.meta,
      this.interpretReferences,
      this.otherReferences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ContributorModel', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'ContributorModel', 'type');
  }

  @override
  ContributorModel rebuild(void Function(ContributorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContributorModelBuilder toBuilder() =>
      new ContributorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContributorModel &&
        id == other.id &&
        type == other.type &&
        isVisible == other.isVisible &&
        name == other.name &&
        cover == other.cover &&
        meta == other.meta &&
        interpretReferences == other.interpretReferences &&
        otherReferences == other.otherReferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isVisible.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, cover.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, interpretReferences.hashCode);
    _$hash = $jc(_$hash, otherReferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContributorModel')
          ..add('id', id)
          ..add('type', type)
          ..add('isVisible', isVisible)
          ..add('name', name)
          ..add('cover', cover)
          ..add('meta', meta)
          ..add('interpretReferences', interpretReferences)
          ..add('otherReferences', otherReferences))
        .toString();
  }
}

class ContributorModelBuilder
    implements Builder<ContributorModel, ContributorModelBuilder> {
  _$ContributorModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ContributorModelTypeEnum? _type;
  ContributorModelTypeEnum? get type => _$this._type;
  set type(ContributorModelTypeEnum? type) => _$this._type = type;

  bool? _isVisible;
  bool? get isVisible => _$this._isVisible;
  set isVisible(bool? isVisible) => _$this._isVisible = isVisible;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  ContributorContributorMetaBuilder? _meta;
  ContributorContributorMetaBuilder get meta =>
      _$this._meta ??= new ContributorContributorMetaBuilder();
  set meta(ContributorContributorMetaBuilder? meta) => _$this._meta = meta;

  int? _interpretReferences;
  int? get interpretReferences => _$this._interpretReferences;
  set interpretReferences(int? interpretReferences) =>
      _$this._interpretReferences = interpretReferences;

  int? _otherReferences;
  int? get otherReferences => _$this._otherReferences;
  set otherReferences(int? otherReferences) =>
      _$this._otherReferences = otherReferences;

  ContributorModelBuilder() {
    ContributorModel._defaults(this);
  }

  ContributorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _isVisible = $v.isVisible;
      _name = $v.name;
      _cover = $v.cover;
      _meta = $v.meta?.toBuilder();
      _interpretReferences = $v.interpretReferences;
      _otherReferences = $v.otherReferences;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContributorModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContributorModel;
  }

  @override
  void update(void Function(ContributorModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContributorModel build() => _build();

  _$ContributorModel _build() {
    _$ContributorModel _$result;
    try {
      _$result = _$v ??
          new _$ContributorModel._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ContributorModel', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ContributorModel', 'type'),
              isVisible: isVisible,
              name: name,
              cover: cover,
              meta: _meta?.build(),
              interpretReferences: interpretReferences,
              otherReferences: otherReferences);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ContributorModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
