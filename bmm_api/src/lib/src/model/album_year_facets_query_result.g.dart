// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_year_facets_query_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlbumYearFacetsQueryResult extends AlbumYearFacetsQueryResult {
  @override
  final int? year;
  @override
  final int? count;

  factory _$AlbumYearFacetsQueryResult(
          [void Function(AlbumYearFacetsQueryResultBuilder)? updates]) =>
      (new AlbumYearFacetsQueryResultBuilder()..update(updates))._build();

  _$AlbumYearFacetsQueryResult._({this.year, this.count}) : super._();

  @override
  AlbumYearFacetsQueryResult rebuild(
          void Function(AlbumYearFacetsQueryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlbumYearFacetsQueryResultBuilder toBuilder() =>
      new AlbumYearFacetsQueryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlbumYearFacetsQueryResult &&
        year == other.year &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlbumYearFacetsQueryResult')
          ..add('year', year)
          ..add('count', count))
        .toString();
  }
}

class AlbumYearFacetsQueryResultBuilder
    implements
        Builder<AlbumYearFacetsQueryResult, AlbumYearFacetsQueryResultBuilder> {
  _$AlbumYearFacetsQueryResult? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  AlbumYearFacetsQueryResultBuilder() {
    AlbumYearFacetsQueryResult._defaults(this);
  }

  AlbumYearFacetsQueryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlbumYearFacetsQueryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlbumYearFacetsQueryResult;
  }

  @override
  void update(void Function(AlbumYearFacetsQueryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlbumYearFacetsQueryResult build() => _build();

  _$AlbumYearFacetsQueryResult _build() {
    final _$result = _$v ??
        new _$AlbumYearFacetsQueryResult._(
          year: year,
          count: count,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
