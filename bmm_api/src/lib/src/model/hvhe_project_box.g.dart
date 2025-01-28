// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hvhe_project_box.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HvheProjectBoxTypeEnum _$hvheProjectBoxTypeEnum_hvheProjectBox =
    const HvheProjectBoxTypeEnum._('hvheProjectBox');

HvheProjectBoxTypeEnum _$hvheProjectBoxTypeEnumValueOf(String name) {
  switch (name) {
    case 'hvheProjectBox':
      return _$hvheProjectBoxTypeEnum_hvheProjectBox;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HvheProjectBoxTypeEnum> _$hvheProjectBoxTypeEnumValues =
    new BuiltSet<HvheProjectBoxTypeEnum>(const <HvheProjectBoxTypeEnum>[
  _$hvheProjectBoxTypeEnum_hvheProjectBox,
]);

Serializer<HvheProjectBoxTypeEnum> _$hvheProjectBoxTypeEnumSerializer =
    new _$HvheProjectBoxTypeEnumSerializer();

class _$HvheProjectBoxTypeEnumSerializer
    implements PrimitiveSerializer<HvheProjectBoxTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hvheProjectBox': 'hvhe_project_box',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hvhe_project_box': 'hvheProjectBox',
  };

  @override
  final Iterable<Type> types = const <Type>[HvheProjectBoxTypeEnum];
  @override
  final String wireName = 'HvheProjectBoxTypeEnum';

  @override
  Object serialize(Serializers serializers, HvheProjectBoxTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HvheProjectBoxTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HvheProjectBoxTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HvheProjectBox extends HvheProjectBox {
  @override
  final int id;
  @override
  final HvheProjectBoxTypeEnum type;
  @override
  final String? title;
  @override
  final int? points;
  @override
  final String? pointsDescription;
  @override
  final BuiltList<AchievementModel>? achievements;
  @override
  final String? rulesLinkTitle;
  @override
  final int? boysPoints;
  @override
  final int? girlsPoints;

  factory _$HvheProjectBox([void Function(HvheProjectBoxBuilder)? updates]) =>
      (new HvheProjectBoxBuilder()..update(updates))._build();

  _$HvheProjectBox._(
      {required this.id,
      required this.type,
      this.title,
      this.points,
      this.pointsDescription,
      this.achievements,
      this.rulesLinkTitle,
      this.boysPoints,
      this.girlsPoints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'HvheProjectBox', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'HvheProjectBox', 'type');
  }

  @override
  HvheProjectBox rebuild(void Function(HvheProjectBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HvheProjectBoxBuilder toBuilder() =>
      new HvheProjectBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HvheProjectBox &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        points == other.points &&
        pointsDescription == other.pointsDescription &&
        achievements == other.achievements &&
        rulesLinkTitle == other.rulesLinkTitle &&
        boysPoints == other.boysPoints &&
        girlsPoints == other.girlsPoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, pointsDescription.hashCode);
    _$hash = $jc(_$hash, achievements.hashCode);
    _$hash = $jc(_$hash, rulesLinkTitle.hashCode);
    _$hash = $jc(_$hash, boysPoints.hashCode);
    _$hash = $jc(_$hash, girlsPoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HvheProjectBox')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('points', points)
          ..add('pointsDescription', pointsDescription)
          ..add('achievements', achievements)
          ..add('rulesLinkTitle', rulesLinkTitle)
          ..add('boysPoints', boysPoints)
          ..add('girlsPoints', girlsPoints))
        .toString();
  }
}

class HvheProjectBoxBuilder
    implements Builder<HvheProjectBox, HvheProjectBoxBuilder> {
  _$HvheProjectBox? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  HvheProjectBoxTypeEnum? _type;
  HvheProjectBoxTypeEnum? get type => _$this._type;
  set type(HvheProjectBoxTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

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

  int? _boysPoints;
  int? get boysPoints => _$this._boysPoints;
  set boysPoints(int? boysPoints) => _$this._boysPoints = boysPoints;

  int? _girlsPoints;
  int? get girlsPoints => _$this._girlsPoints;
  set girlsPoints(int? girlsPoints) => _$this._girlsPoints = girlsPoints;

  HvheProjectBoxBuilder() {
    HvheProjectBox._defaults(this);
  }

  HvheProjectBoxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _points = $v.points;
      _pointsDescription = $v.pointsDescription;
      _achievements = $v.achievements?.toBuilder();
      _rulesLinkTitle = $v.rulesLinkTitle;
      _boysPoints = $v.boysPoints;
      _girlsPoints = $v.girlsPoints;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HvheProjectBox other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HvheProjectBox;
  }

  @override
  void update(void Function(HvheProjectBoxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HvheProjectBox build() => _build();

  _$HvheProjectBox _build() {
    _$HvheProjectBox _$result;
    try {
      _$result = _$v ??
          new _$HvheProjectBox._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'HvheProjectBox', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'HvheProjectBox', 'type'),
            title: title,
            points: points,
            pointsDescription: pointsDescription,
            achievements: _achievements?.build(),
            rulesLinkTitle: rulesLinkTitle,
            boysPoints: boysPoints,
            girlsPoints: girlsPoints,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'achievements';
        _achievements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HvheProjectBox', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
