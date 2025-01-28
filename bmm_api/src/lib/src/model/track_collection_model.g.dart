// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_collection_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackCollectionModelTypeEnum
    _$trackCollectionModelTypeEnum_trackCollection =
    const TrackCollectionModelTypeEnum._('trackCollection');

TrackCollectionModelTypeEnum _$trackCollectionModelTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'trackCollection':
      return _$trackCollectionModelTypeEnum_trackCollection;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TrackCollectionModelTypeEnum>
    _$trackCollectionModelTypeEnumValues = new BuiltSet<
        TrackCollectionModelTypeEnum>(const <TrackCollectionModelTypeEnum>[
  _$trackCollectionModelTypeEnum_trackCollection,
]);

Serializer<TrackCollectionModelTypeEnum>
    _$trackCollectionModelTypeEnumSerializer =
    new _$TrackCollectionModelTypeEnumSerializer();

class _$TrackCollectionModelTypeEnumSerializer
    implements PrimitiveSerializer<TrackCollectionModelTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'trackCollection': 'track_collection',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'track_collection': 'trackCollection',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackCollectionModelTypeEnum];
  @override
  final String wireName = 'TrackCollectionModelTypeEnum';

  @override
  Object serialize(Serializers serializers, TrackCollectionModelTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackCollectionModelTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackCollectionModelTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TrackCollectionModel extends TrackCollectionModel {
  @override
  final TrackCollectionModelTypeEnum type;
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<String>? access;
  @override
  final BuiltList<TrackReference>? trackReferences;

  factory _$TrackCollectionModel(
          [void Function(TrackCollectionModelBuilder)? updates]) =>
      (new TrackCollectionModelBuilder()..update(updates))._build();

  _$TrackCollectionModel._(
      {required this.type,
      required this.id,
      required this.name,
      this.access,
      this.trackReferences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'TrackCollectionModel', 'type');
    BuiltValueNullFieldError.checkNotNull(id, r'TrackCollectionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'TrackCollectionModel', 'name');
  }

  @override
  TrackCollectionModel rebuild(
          void Function(TrackCollectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackCollectionModelBuilder toBuilder() =>
      new TrackCollectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackCollectionModel &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        access == other.access &&
        trackReferences == other.trackReferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, trackReferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackCollectionModel')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('access', access)
          ..add('trackReferences', trackReferences))
        .toString();
  }
}

class TrackCollectionModelBuilder
    implements Builder<TrackCollectionModel, TrackCollectionModelBuilder> {
  _$TrackCollectionModel? _$v;

  TrackCollectionModelTypeEnum? _type;
  TrackCollectionModelTypeEnum? get type => _$this._type;
  set type(TrackCollectionModelTypeEnum? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _access;
  ListBuilder<String> get access =>
      _$this._access ??= new ListBuilder<String>();
  set access(ListBuilder<String>? access) => _$this._access = access;

  ListBuilder<TrackReference>? _trackReferences;
  ListBuilder<TrackReference> get trackReferences =>
      _$this._trackReferences ??= new ListBuilder<TrackReference>();
  set trackReferences(ListBuilder<TrackReference>? trackReferences) =>
      _$this._trackReferences = trackReferences;

  TrackCollectionModelBuilder() {
    TrackCollectionModel._defaults(this);
  }

  TrackCollectionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _access = $v.access?.toBuilder();
      _trackReferences = $v.trackReferences?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackCollectionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrackCollectionModel;
  }

  @override
  void update(void Function(TrackCollectionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackCollectionModel build() => _build();

  _$TrackCollectionModel _build() {
    _$TrackCollectionModel _$result;
    try {
      _$result = _$v ??
          new _$TrackCollectionModel._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TrackCollectionModel', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TrackCollectionModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'TrackCollectionModel', 'name'),
            access: _access?.build(),
            trackReferences: _trackReferences?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'access';
        _access?.build();
        _$failedField = 'trackReferences';
        _trackReferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TrackCollectionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
