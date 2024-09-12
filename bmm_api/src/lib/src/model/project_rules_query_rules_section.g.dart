// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_rules_query_rules_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectRulesQueryRulesSection extends ProjectRulesQueryRulesSection {
  @override
  final String? title;
  @override
  final String? text;

  factory _$ProjectRulesQueryRulesSection(
          [void Function(ProjectRulesQueryRulesSectionBuilder)? updates]) =>
      (new ProjectRulesQueryRulesSectionBuilder()..update(updates))._build();

  _$ProjectRulesQueryRulesSection._({this.title, this.text}) : super._();

  @override
  ProjectRulesQueryRulesSection rebuild(
          void Function(ProjectRulesQueryRulesSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectRulesQueryRulesSectionBuilder toBuilder() =>
      new ProjectRulesQueryRulesSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectRulesQueryRulesSection &&
        title == other.title &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectRulesQueryRulesSection')
          ..add('title', title)
          ..add('text', text))
        .toString();
  }
}

class ProjectRulesQueryRulesSectionBuilder
    implements
        Builder<ProjectRulesQueryRulesSection,
            ProjectRulesQueryRulesSectionBuilder> {
  _$ProjectRulesQueryRulesSection? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  ProjectRulesQueryRulesSectionBuilder() {
    ProjectRulesQueryRulesSection._defaults(this);
  }

  ProjectRulesQueryRulesSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectRulesQueryRulesSection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectRulesQueryRulesSection;
  }

  @override
  void update(void Function(ProjectRulesQueryRulesSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectRulesQueryRulesSection build() => _build();

  _$ProjectRulesQueryRulesSection _build() {
    final _$result =
        _$v ?? new _$ProjectRulesQueryRulesSection._(title: title, text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
