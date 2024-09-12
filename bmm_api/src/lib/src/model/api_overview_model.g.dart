// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_overview_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiOverviewModel extends ApiOverviewModel {
  @override
  final String? name;
  @override
  final String? documentation;
  @override
  final ApiOverviewModelStatus? systemStatus;
  @override
  final BuiltList<LanguageEnum>? languages;
  @override
  final bool? updateIndexes;
  @override
  final String? environment;

  factory _$ApiOverviewModel(
          [void Function(ApiOverviewModelBuilder)? updates]) =>
      (new ApiOverviewModelBuilder()..update(updates))._build();

  _$ApiOverviewModel._(
      {this.name,
      this.documentation,
      this.systemStatus,
      this.languages,
      this.updateIndexes,
      this.environment})
      : super._();

  @override
  ApiOverviewModel rebuild(void Function(ApiOverviewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiOverviewModelBuilder toBuilder() =>
      new ApiOverviewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiOverviewModel &&
        name == other.name &&
        documentation == other.documentation &&
        systemStatus == other.systemStatus &&
        languages == other.languages &&
        updateIndexes == other.updateIndexes &&
        environment == other.environment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, documentation.hashCode);
    _$hash = $jc(_$hash, systemStatus.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jc(_$hash, updateIndexes.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiOverviewModel')
          ..add('name', name)
          ..add('documentation', documentation)
          ..add('systemStatus', systemStatus)
          ..add('languages', languages)
          ..add('updateIndexes', updateIndexes)
          ..add('environment', environment))
        .toString();
  }
}

class ApiOverviewModelBuilder
    implements Builder<ApiOverviewModel, ApiOverviewModelBuilder> {
  _$ApiOverviewModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _documentation;
  String? get documentation => _$this._documentation;
  set documentation(String? documentation) =>
      _$this._documentation = documentation;

  ApiOverviewModelStatusBuilder? _systemStatus;
  ApiOverviewModelStatusBuilder get systemStatus =>
      _$this._systemStatus ??= new ApiOverviewModelStatusBuilder();
  set systemStatus(ApiOverviewModelStatusBuilder? systemStatus) =>
      _$this._systemStatus = systemStatus;

  ListBuilder<LanguageEnum>? _languages;
  ListBuilder<LanguageEnum> get languages =>
      _$this._languages ??= new ListBuilder<LanguageEnum>();
  set languages(ListBuilder<LanguageEnum>? languages) =>
      _$this._languages = languages;

  bool? _updateIndexes;
  bool? get updateIndexes => _$this._updateIndexes;
  set updateIndexes(bool? updateIndexes) =>
      _$this._updateIndexes = updateIndexes;

  String? _environment;
  String? get environment => _$this._environment;
  set environment(String? environment) => _$this._environment = environment;

  ApiOverviewModelBuilder() {
    ApiOverviewModel._defaults(this);
  }

  ApiOverviewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _documentation = $v.documentation;
      _systemStatus = $v.systemStatus?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _updateIndexes = $v.updateIndexes;
      _environment = $v.environment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiOverviewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiOverviewModel;
  }

  @override
  void update(void Function(ApiOverviewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiOverviewModel build() => _build();

  _$ApiOverviewModel _build() {
    _$ApiOverviewModel _$result;
    try {
      _$result = _$v ??
          new _$ApiOverviewModel._(
              name: name,
              documentation: documentation,
              systemStatus: _systemStatus?.build(),
              languages: _languages?.build(),
              updateIndexes: updateIndexes,
              environment: environment);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'systemStatus';
        _systemStatus?.build();
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiOverviewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
