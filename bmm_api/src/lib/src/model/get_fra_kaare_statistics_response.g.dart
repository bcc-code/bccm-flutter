// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_fra_kaare_statistics_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFraKaareStatisticsResponse extends GetFraKaareStatisticsResponse {
  @override
  final String? highlightedChurchName;
  @override
  final BuiltList<GetFraKaareStatisticsChurchStatistics>? largeChurches;
  @override
  final BuiltList<GetFraKaareStatisticsChurchStatistics>? smallChurches;
  @override
  final BuiltList<GetFraKaareStatisticsChurchStatisticsSnapshot>? timeSeries;

  factory _$GetFraKaareStatisticsResponse(
          [void Function(GetFraKaareStatisticsResponseBuilder)? updates]) =>
      (new GetFraKaareStatisticsResponseBuilder()..update(updates))._build();

  _$GetFraKaareStatisticsResponse._(
      {this.highlightedChurchName,
      this.largeChurches,
      this.smallChurches,
      this.timeSeries})
      : super._();

  @override
  GetFraKaareStatisticsResponse rebuild(
          void Function(GetFraKaareStatisticsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFraKaareStatisticsResponseBuilder toBuilder() =>
      new GetFraKaareStatisticsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFraKaareStatisticsResponse &&
        highlightedChurchName == other.highlightedChurchName &&
        largeChurches == other.largeChurches &&
        smallChurches == other.smallChurches &&
        timeSeries == other.timeSeries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, highlightedChurchName.hashCode);
    _$hash = $jc(_$hash, largeChurches.hashCode);
    _$hash = $jc(_$hash, smallChurches.hashCode);
    _$hash = $jc(_$hash, timeSeries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetFraKaareStatisticsResponse')
          ..add('highlightedChurchName', highlightedChurchName)
          ..add('largeChurches', largeChurches)
          ..add('smallChurches', smallChurches)
          ..add('timeSeries', timeSeries))
        .toString();
  }
}

class GetFraKaareStatisticsResponseBuilder
    implements
        Builder<GetFraKaareStatisticsResponse,
            GetFraKaareStatisticsResponseBuilder> {
  _$GetFraKaareStatisticsResponse? _$v;

  String? _highlightedChurchName;
  String? get highlightedChurchName => _$this._highlightedChurchName;
  set highlightedChurchName(String? highlightedChurchName) =>
      _$this._highlightedChurchName = highlightedChurchName;

  ListBuilder<GetFraKaareStatisticsChurchStatistics>? _largeChurches;
  ListBuilder<GetFraKaareStatisticsChurchStatistics> get largeChurches =>
      _$this._largeChurches ??=
          new ListBuilder<GetFraKaareStatisticsChurchStatistics>();
  set largeChurches(
          ListBuilder<GetFraKaareStatisticsChurchStatistics>? largeChurches) =>
      _$this._largeChurches = largeChurches;

  ListBuilder<GetFraKaareStatisticsChurchStatistics>? _smallChurches;
  ListBuilder<GetFraKaareStatisticsChurchStatistics> get smallChurches =>
      _$this._smallChurches ??=
          new ListBuilder<GetFraKaareStatisticsChurchStatistics>();
  set smallChurches(
          ListBuilder<GetFraKaareStatisticsChurchStatistics>? smallChurches) =>
      _$this._smallChurches = smallChurches;

  ListBuilder<GetFraKaareStatisticsChurchStatisticsSnapshot>? _timeSeries;
  ListBuilder<GetFraKaareStatisticsChurchStatisticsSnapshot> get timeSeries =>
      _$this._timeSeries ??=
          new ListBuilder<GetFraKaareStatisticsChurchStatisticsSnapshot>();
  set timeSeries(
          ListBuilder<GetFraKaareStatisticsChurchStatisticsSnapshot>?
              timeSeries) =>
      _$this._timeSeries = timeSeries;

  GetFraKaareStatisticsResponseBuilder() {
    GetFraKaareStatisticsResponse._defaults(this);
  }

  GetFraKaareStatisticsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _highlightedChurchName = $v.highlightedChurchName;
      _largeChurches = $v.largeChurches?.toBuilder();
      _smallChurches = $v.smallChurches?.toBuilder();
      _timeSeries = $v.timeSeries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFraKaareStatisticsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFraKaareStatisticsResponse;
  }

  @override
  void update(void Function(GetFraKaareStatisticsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFraKaareStatisticsResponse build() => _build();

  _$GetFraKaareStatisticsResponse _build() {
    _$GetFraKaareStatisticsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetFraKaareStatisticsResponse._(
            highlightedChurchName: highlightedChurchName,
            largeChurches: _largeChurches?.build(),
            smallChurches: _smallChurches?.build(),
            timeSeries: _timeSeries?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'largeChurches';
        _largeChurches?.build();
        _$failedField = 'smallChurches';
        _smallChurches?.build();
        _$failedField = 'timeSeries';
        _timeSeries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetFraKaareStatisticsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
