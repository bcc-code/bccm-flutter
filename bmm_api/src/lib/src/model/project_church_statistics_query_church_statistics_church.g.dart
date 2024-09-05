// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_church_statistics_query_church_statistics_church.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectChurchStatisticsQueryChurchStatisticsChurch
    extends ProjectChurchStatisticsQueryChurchStatisticsChurch {
  @override
  final String? id;
  @override
  final String? name;

  factory _$ProjectChurchStatisticsQueryChurchStatisticsChurch(
          [void Function(
                  ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder)?
              updates]) =>
      (new ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder()
            ..update(updates))
          ._build();

  _$ProjectChurchStatisticsQueryChurchStatisticsChurch._({this.id, this.name})
      : super._();

  @override
  ProjectChurchStatisticsQueryChurchStatisticsChurch rebuild(
          void Function(
                  ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder toBuilder() =>
      new ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectChurchStatisticsQueryChurchStatisticsChurch &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ProjectChurchStatisticsQueryChurchStatisticsChurch')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder
    implements
        Builder<ProjectChurchStatisticsQueryChurchStatisticsChurch,
            ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder> {
  _$ProjectChurchStatisticsQueryChurchStatisticsChurch? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder() {
    ProjectChurchStatisticsQueryChurchStatisticsChurch._defaults(this);
  }

  ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectChurchStatisticsQueryChurchStatisticsChurch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectChurchStatisticsQueryChurchStatisticsChurch;
  }

  @override
  void update(
      void Function(ProjectChurchStatisticsQueryChurchStatisticsChurchBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectChurchStatisticsQueryChurchStatisticsChurch build() => _build();

  _$ProjectChurchStatisticsQueryChurchStatisticsChurch _build() {
    final _$result = _$v ??
        new _$ProjectChurchStatisticsQueryChurchStatisticsChurch._(
            id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
