// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_rules_query_rules.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectRulesQueryRules extends ProjectRulesQueryRules {
  @override
  final String? pageTitle;
  @override
  final BuiltList<ProjectRulesQueryRulesSection>? sections;

  factory _$ProjectRulesQueryRules(
          [void Function(ProjectRulesQueryRulesBuilder)? updates]) =>
      (new ProjectRulesQueryRulesBuilder()..update(updates))._build();

  _$ProjectRulesQueryRules._({this.pageTitle, this.sections}) : super._();

  @override
  ProjectRulesQueryRules rebuild(
          void Function(ProjectRulesQueryRulesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectRulesQueryRulesBuilder toBuilder() =>
      new ProjectRulesQueryRulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectRulesQueryRules &&
        pageTitle == other.pageTitle &&
        sections == other.sections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageTitle.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectRulesQueryRules')
          ..add('pageTitle', pageTitle)
          ..add('sections', sections))
        .toString();
  }
}

class ProjectRulesQueryRulesBuilder
    implements Builder<ProjectRulesQueryRules, ProjectRulesQueryRulesBuilder> {
  _$ProjectRulesQueryRules? _$v;

  String? _pageTitle;
  String? get pageTitle => _$this._pageTitle;
  set pageTitle(String? pageTitle) => _$this._pageTitle = pageTitle;

  ListBuilder<ProjectRulesQueryRulesSection>? _sections;
  ListBuilder<ProjectRulesQueryRulesSection> get sections =>
      _$this._sections ??= new ListBuilder<ProjectRulesQueryRulesSection>();
  set sections(ListBuilder<ProjectRulesQueryRulesSection>? sections) =>
      _$this._sections = sections;

  ProjectRulesQueryRulesBuilder() {
    ProjectRulesQueryRules._defaults(this);
  }

  ProjectRulesQueryRulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageTitle = $v.pageTitle;
      _sections = $v.sections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectRulesQueryRules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectRulesQueryRules;
  }

  @override
  void update(void Function(ProjectRulesQueryRulesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectRulesQueryRules build() => _build();

  _$ProjectRulesQueryRules _build() {
    _$ProjectRulesQueryRules _$result;
    try {
      _$result = _$v ??
          new _$ProjectRulesQueryRules._(
            pageTitle: pageTitle,
            sections: _sections?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectRulesQueryRules', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
