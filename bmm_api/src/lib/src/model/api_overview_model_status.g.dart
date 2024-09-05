// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_overview_model_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiOverviewModelStatus extends ApiOverviewModelStatus {
  @override
  final bool? database;
  @override
  final bool? search;

  factory _$ApiOverviewModelStatus(
          [void Function(ApiOverviewModelStatusBuilder)? updates]) =>
      (new ApiOverviewModelStatusBuilder()..update(updates))._build();

  _$ApiOverviewModelStatus._({this.database, this.search}) : super._();

  @override
  ApiOverviewModelStatus rebuild(
          void Function(ApiOverviewModelStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiOverviewModelStatusBuilder toBuilder() =>
      new ApiOverviewModelStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiOverviewModelStatus &&
        database == other.database &&
        search == other.search;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, database.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiOverviewModelStatus')
          ..add('database', database)
          ..add('search', search))
        .toString();
  }
}

class ApiOverviewModelStatusBuilder
    implements Builder<ApiOverviewModelStatus, ApiOverviewModelStatusBuilder> {
  _$ApiOverviewModelStatus? _$v;

  bool? _database;
  bool? get database => _$this._database;
  set database(bool? database) => _$this._database = database;

  bool? _search;
  bool? get search => _$this._search;
  set search(bool? search) => _$this._search = search;

  ApiOverviewModelStatusBuilder() {
    ApiOverviewModelStatus._defaults(this);
  }

  ApiOverviewModelStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _database = $v.database;
      _search = $v.search;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiOverviewModelStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiOverviewModelStatus;
  }

  @override
  void update(void Function(ApiOverviewModelStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiOverviewModelStatus build() => _build();

  _$ApiOverviewModelStatus _build() {
    final _$result = _$v ??
        new _$ApiOverviewModelStatus._(database: database, search: search);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
