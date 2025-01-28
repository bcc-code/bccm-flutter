// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gibraltar_project_box.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GibraltarProjectBoxTypeEnum
    _$gibraltarProjectBoxTypeEnum_gibraltarProjectBox =
    const GibraltarProjectBoxTypeEnum._('gibraltarProjectBox');

GibraltarProjectBoxTypeEnum _$gibraltarProjectBoxTypeEnumValueOf(String name) {
  switch (name) {
    case 'gibraltarProjectBox':
      return _$gibraltarProjectBoxTypeEnum_gibraltarProjectBox;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GibraltarProjectBoxTypeEnum>
    _$gibraltarProjectBoxTypeEnumValues = new BuiltSet<
        GibraltarProjectBoxTypeEnum>(const <GibraltarProjectBoxTypeEnum>[
  _$gibraltarProjectBoxTypeEnum_gibraltarProjectBox,
]);

Serializer<GibraltarProjectBoxTypeEnum>
    _$gibraltarProjectBoxTypeEnumSerializer =
    new _$GibraltarProjectBoxTypeEnumSerializer();

class _$GibraltarProjectBoxTypeEnumSerializer
    implements PrimitiveSerializer<GibraltarProjectBoxTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'gibraltarProjectBox': 'gibraltar_project_box',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'gibraltar_project_box': 'gibraltarProjectBox',
  };

  @override
  final Iterable<Type> types = const <Type>[GibraltarProjectBoxTypeEnum];
  @override
  final String wireName = 'GibraltarProjectBoxTypeEnum';

  @override
  Object serialize(Serializers serializers, GibraltarProjectBoxTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GibraltarProjectBoxTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GibraltarProjectBoxTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GibraltarProjectBox extends GibraltarProjectBox {
  @override
  final int id;
  @override
  final GibraltarProjectBoxTypeEnum type;
  @override
  final String? title;
  @override
  final bool? openByDefault;
  @override
  final int? points;
  @override
  final String? pointsDescription;
  @override
  final BuiltList<AchievementModel>? achievements;
  @override
  final String? rulesLinkTitle;

  factory _$GibraltarProjectBox(
          [void Function(GibraltarProjectBoxBuilder)? updates]) =>
      (new GibraltarProjectBoxBuilder()..update(updates))._build();

  _$GibraltarProjectBox._(
      {required this.id,
      required this.type,
      this.title,
      this.openByDefault,
      this.points,
      this.pointsDescription,
      this.achievements,
      this.rulesLinkTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GibraltarProjectBox', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'GibraltarProjectBox', 'type');
  }

  @override
  GibraltarProjectBox rebuild(
          void Function(GibraltarProjectBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GibraltarProjectBoxBuilder toBuilder() =>
      new GibraltarProjectBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GibraltarProjectBox &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        openByDefault == other.openByDefault &&
        points == other.points &&
        pointsDescription == other.pointsDescription &&
        achievements == other.achievements &&
        rulesLinkTitle == other.rulesLinkTitle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, openByDefault.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, pointsDescription.hashCode);
    _$hash = $jc(_$hash, achievements.hashCode);
    _$hash = $jc(_$hash, rulesLinkTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GibraltarProjectBox')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('openByDefault', openByDefault)
          ..add('points', points)
          ..add('pointsDescription', pointsDescription)
          ..add('achievements', achievements)
          ..add('rulesLinkTitle', rulesLinkTitle))
        .toString();
  }
}

class GibraltarProjectBoxBuilder
    implements Builder<GibraltarProjectBox, GibraltarProjectBoxBuilder> {
  _$GibraltarProjectBox? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GibraltarProjectBoxTypeEnum? _type;
  GibraltarProjectBoxTypeEnum? get type => _$this._type;
  set type(GibraltarProjectBoxTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _openByDefault;
  bool? get openByDefault => _$this._openByDefault;
  set openByDefault(bool? openByDefault) =>
      _$this._openByDefault = openByDefault;

  int? _points;
  int? get points => _$this._points;
  set points(int? points) => _$this._points = points;

  String? _pointsDescription;
  String? get pointsDescription => _$this._pointsDescription;
  set pointsDescription(String? pointsDescription) =>
      _$this._pointsDescription = pointsDescription;

  ListBuilder<AchievementModel>? _achievements;
  ListBuilder<AchievementModel> get achievements =>
      _$this._achievements ??= new ListBuilder<AchievementModel>();
  set achievements(ListBuilder<AchievementModel>? achievements) =>
      _$this._achievements = achievements;

  String? _rulesLinkTitle;
  String? get rulesLinkTitle => _$this._rulesLinkTitle;
  set rulesLinkTitle(String? rulesLinkTitle) =>
      _$this._rulesLinkTitle = rulesLinkTitle;

  GibraltarProjectBoxBuilder() {
    GibraltarProjectBox._defaults(this);
  }

  GibraltarProjectBoxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _openByDefault = $v.openByDefault;
      _points = $v.points;
      _pointsDescription = $v.pointsDescription;
      _achievements = $v.achievements?.toBuilder();
      _rulesLinkTitle = $v.rulesLinkTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GibraltarProjectBox other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GibraltarProjectBox;
  }

  @override
  void update(void Function(GibraltarProjectBoxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GibraltarProjectBox build() => _build();

  _$GibraltarProjectBox _build() {
    _$GibraltarProjectBox _$result;
    try {
      _$result = _$v ??
          new _$GibraltarProjectBox._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GibraltarProjectBox', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GibraltarProjectBox', 'type'),
            title: title,
            openByDefault: openByDefault,
            points: points,
            pointsDescription: pointsDescription,
            achievements: _achievements?.build(),
            rulesLinkTitle: rulesLinkTitle,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'achievements';
        _achievements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GibraltarProjectBox', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
