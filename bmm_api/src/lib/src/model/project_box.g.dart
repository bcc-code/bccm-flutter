// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_box.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectBoxTypeEnum _$projectBoxTypeEnum_projectBox =
    const ProjectBoxTypeEnum._('projectBox');

ProjectBoxTypeEnum _$projectBoxTypeEnumValueOf(String name) {
  switch (name) {
    case 'projectBox':
      return _$projectBoxTypeEnum_projectBox;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProjectBoxTypeEnum> _$projectBoxTypeEnumValues =
    new BuiltSet<ProjectBoxTypeEnum>(const <ProjectBoxTypeEnum>[
  _$projectBoxTypeEnum_projectBox,
]);

Serializer<ProjectBoxTypeEnum> _$projectBoxTypeEnumSerializer =
    new _$ProjectBoxTypeEnumSerializer();

class _$ProjectBoxTypeEnumSerializer
    implements PrimitiveSerializer<ProjectBoxTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'projectBox': 'project_box',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'project_box': 'projectBox',
  };

  @override
  final Iterable<Type> types = const <Type>[ProjectBoxTypeEnum];
  @override
  final String wireName = 'ProjectBoxTypeEnum';

  @override
  Object serialize(Serializers serializers, ProjectBoxTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectBoxTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectBoxTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectBox extends ProjectBox {
  @override
  final int id;
  @override
  final ProjectBoxTypeEnum type;
  @override
  final String? title;
  @override
  final bool? showIcon;
  @override
  final bool? openByDefault;
  @override
  final int? points;
  @override
  final String? pointsDescription;
  @override
  final String? buttonTitle;
  @override
  final String? buttonWebsite;
  @override
  final bool? buttonShowIcon;
  @override
  final BuiltList<AchievementModel>? achievements;
  @override
  final String? rulesLinkTitle;
  @override
  final String? iconColor;

  factory _$ProjectBox([void Function(ProjectBoxBuilder)? updates]) =>
      (new ProjectBoxBuilder()..update(updates))._build();

  _$ProjectBox._(
      {required this.id,
      required this.type,
      this.title,
      this.showIcon,
      this.openByDefault,
      this.points,
      this.pointsDescription,
      this.buttonTitle,
      this.buttonWebsite,
      this.buttonShowIcon,
      this.achievements,
      this.rulesLinkTitle,
      this.iconColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ProjectBox', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'ProjectBox', 'type');
  }

  @override
  ProjectBox rebuild(void Function(ProjectBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBoxBuilder toBuilder() => new ProjectBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectBox &&
        id == other.id &&
        type == other.type &&
        title == other.title &&
        showIcon == other.showIcon &&
        openByDefault == other.openByDefault &&
        points == other.points &&
        pointsDescription == other.pointsDescription &&
        buttonTitle == other.buttonTitle &&
        buttonWebsite == other.buttonWebsite &&
        buttonShowIcon == other.buttonShowIcon &&
        achievements == other.achievements &&
        rulesLinkTitle == other.rulesLinkTitle &&
        iconColor == other.iconColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, showIcon.hashCode);
    _$hash = $jc(_$hash, openByDefault.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, pointsDescription.hashCode);
    _$hash = $jc(_$hash, buttonTitle.hashCode);
    _$hash = $jc(_$hash, buttonWebsite.hashCode);
    _$hash = $jc(_$hash, buttonShowIcon.hashCode);
    _$hash = $jc(_$hash, achievements.hashCode);
    _$hash = $jc(_$hash, rulesLinkTitle.hashCode);
    _$hash = $jc(_$hash, iconColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectBox')
          ..add('id', id)
          ..add('type', type)
          ..add('title', title)
          ..add('showIcon', showIcon)
          ..add('openByDefault', openByDefault)
          ..add('points', points)
          ..add('pointsDescription', pointsDescription)
          ..add('buttonTitle', buttonTitle)
          ..add('buttonWebsite', buttonWebsite)
          ..add('buttonShowIcon', buttonShowIcon)
          ..add('achievements', achievements)
          ..add('rulesLinkTitle', rulesLinkTitle)
          ..add('iconColor', iconColor))
        .toString();
  }
}

class ProjectBoxBuilder implements Builder<ProjectBox, ProjectBoxBuilder> {
  _$ProjectBox? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ProjectBoxTypeEnum? _type;
  ProjectBoxTypeEnum? get type => _$this._type;
  set type(ProjectBoxTypeEnum? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _showIcon;
  bool? get showIcon => _$this._showIcon;
  set showIcon(bool? showIcon) => _$this._showIcon = showIcon;

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

  String? _buttonTitle;
  String? get buttonTitle => _$this._buttonTitle;
  set buttonTitle(String? buttonTitle) => _$this._buttonTitle = buttonTitle;

  String? _buttonWebsite;
  String? get buttonWebsite => _$this._buttonWebsite;
  set buttonWebsite(String? buttonWebsite) =>
      _$this._buttonWebsite = buttonWebsite;

  bool? _buttonShowIcon;
  bool? get buttonShowIcon => _$this._buttonShowIcon;
  set buttonShowIcon(bool? buttonShowIcon) =>
      _$this._buttonShowIcon = buttonShowIcon;

  ListBuilder<AchievementModel>? _achievements;
  ListBuilder<AchievementModel> get achievements =>
      _$this._achievements ??= new ListBuilder<AchievementModel>();
  set achievements(ListBuilder<AchievementModel>? achievements) =>
      _$this._achievements = achievements;

  String? _rulesLinkTitle;
  String? get rulesLinkTitle => _$this._rulesLinkTitle;
  set rulesLinkTitle(String? rulesLinkTitle) =>
      _$this._rulesLinkTitle = rulesLinkTitle;

  String? _iconColor;
  String? get iconColor => _$this._iconColor;
  set iconColor(String? iconColor) => _$this._iconColor = iconColor;

  ProjectBoxBuilder() {
    ProjectBox._defaults(this);
  }

  ProjectBoxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _title = $v.title;
      _showIcon = $v.showIcon;
      _openByDefault = $v.openByDefault;
      _points = $v.points;
      _pointsDescription = $v.pointsDescription;
      _buttonTitle = $v.buttonTitle;
      _buttonWebsite = $v.buttonWebsite;
      _buttonShowIcon = $v.buttonShowIcon;
      _achievements = $v.achievements?.toBuilder();
      _rulesLinkTitle = $v.rulesLinkTitle;
      _iconColor = $v.iconColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectBox other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectBox;
  }

  @override
  void update(void Function(ProjectBoxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectBox build() => _build();

  _$ProjectBox _build() {
    _$ProjectBox _$result;
    try {
      _$result = _$v ??
          new _$ProjectBox._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ProjectBox', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ProjectBox', 'type'),
              title: title,
              showIcon: showIcon,
              openByDefault: openByDefault,
              points: points,
              pointsDescription: pointsDescription,
              buttonTitle: buttonTitle,
              buttonWebsite: buttonWebsite,
              buttonShowIcon: buttonShowIcon,
              achievements: _achievements?.build(),
              rulesLinkTitle: rulesLinkTitle,
              iconColor: iconColor);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'achievements';
        _achievements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectBox', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
