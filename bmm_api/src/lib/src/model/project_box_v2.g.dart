// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_box_v2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectBoxV2TypeEnum _$projectBoxV2TypeEnum_projectBoxV2 =
    const ProjectBoxV2TypeEnum._('projectBoxV2');

ProjectBoxV2TypeEnum _$projectBoxV2TypeEnumValueOf(String name) {
  switch (name) {
    case 'projectBoxV2':
      return _$projectBoxV2TypeEnum_projectBoxV2;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProjectBoxV2TypeEnum> _$projectBoxV2TypeEnumValues =
    new BuiltSet<ProjectBoxV2TypeEnum>(const <ProjectBoxV2TypeEnum>[
  _$projectBoxV2TypeEnum_projectBoxV2,
]);

Serializer<ProjectBoxV2TypeEnum> _$projectBoxV2TypeEnumSerializer =
    new _$ProjectBoxV2TypeEnumSerializer();

class _$ProjectBoxV2TypeEnumSerializer
    implements PrimitiveSerializer<ProjectBoxV2TypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'projectBoxV2': 'project_box_v2',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'project_box_v2': 'projectBoxV2',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectBoxV2TypeEnum];
  @override
  final String wireName = 'ProjectBoxV2TypeEnum';

  @override
  Object serialize(Serializers serializers, ProjectBoxV2TypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectBoxV2TypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectBoxV2TypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectBoxV2 extends ProjectBoxV2 {
  @override
  final int id;
  @override
  final ProjectBoxV2TypeEnum type;
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

  factory _$ProjectBoxV2([void Function(ProjectBoxV2Builder)? updates]) =>
      (new ProjectBoxV2Builder()..update(updates))._build();

  _$ProjectBoxV2._(
      {required this.id,
      required this.type,
      this.title,
      this.points,
      this.pointsDescription,
      this.achievements,
      this.rulesLinkTitle})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ProjectBoxV2', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'ProjectBoxV2', 'type');
  }

  @override
  ProjectBoxV2 rebuild(void Function(ProjectBoxV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBoxV2Builder toBuilder() => new ProjectBoxV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBoxV2 &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
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
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, pointsDescription.hashCode);
    _$hash = $jc(_$hash, achievements.hashCode);
    _$hash = $jc(_$hash, rulesLinkTitle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBoxV2')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('points', points)
          ..add('pointsDescription', pointsDescription)
          ..add('achievements', achievements)
          ..add('rulesLinkTitle', rulesLinkTitle))
        .toString();
  }
}

class ProjectBoxV2Builder
    implements Builder<ProjectBoxV2, ProjectBoxV2Builder> {
  _$ProjectBoxV2? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ProjectBoxV2TypeEnum? _type;
  ProjectBoxV2TypeEnum? get type => _$this._type;
  set type(ProjectBoxV2TypeEnum? type) => _$this._type = type;

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

  ProjectBoxV2Builder() {
    ProjectBoxV2._defaults(this);
  }

  ProjectBoxV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _points = $v.points;
      _pointsDescription = $v.pointsDescription;
      _achievements = $v.achievements?.toBuilder();
      _rulesLinkTitle = $v.rulesLinkTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBoxV2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectBoxV2;
  }

  @override
  void update(void Function(ProjectBoxV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBoxV2 build() => _build();

  _$ProjectBoxV2 _build() {
    _$ProjectBoxV2 _$result;
    try {
      _$result = _$v ??
          new _$ProjectBoxV2._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ProjectBoxV2', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ProjectBoxV2', 'type'),
            title: title,
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
            r'ProjectBoxV2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
