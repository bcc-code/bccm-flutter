// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_fra_kaare_statistics_church_statistics_snapshot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFraKaareStatisticsChurchStatisticsSnapshot
    extends GetFraKaareStatisticsChurchStatisticsSnapshot {
  @override
  final DateTime? snapshotDate;
  @override
  final double? oneEpisodePercentAverage;
  @override
  final double? allEpisodesPercentAverage;

  factory _$GetFraKaareStatisticsChurchStatisticsSnapshot(
          [void Function(GetFraKaareStatisticsChurchStatisticsSnapshotBuilder)?
              updates]) =>
      (new GetFraKaareStatisticsChurchStatisticsSnapshotBuilder()
            ..update(updates))
          ._build();

  _$GetFraKaareStatisticsChurchStatisticsSnapshot._(
      {this.snapshotDate,
      this.oneEpisodePercentAverage,
      this.allEpisodesPercentAverage})
      : super._();

  @override
  GetFraKaareStatisticsChurchStatisticsSnapshot rebuild(
          void Function(GetFraKaareStatisticsChurchStatisticsSnapshotBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFraKaareStatisticsChurchStatisticsSnapshotBuilder toBuilder() =>
      new GetFraKaareStatisticsChurchStatisticsSnapshotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFraKaareStatisticsChurchStatisticsSnapshot &&
        snapshotDate == other.snapshotDate &&
        oneEpisodePercentAverage == other.oneEpisodePercentAverage &&
        allEpisodesPercentAverage == other.allEpisodesPercentAverage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, snapshotDate.hashCode);
    _$hash = $jc(_$hash, oneEpisodePercentAverage.hashCode);
    _$hash = $jc(_$hash, allEpisodesPercentAverage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetFraKaareStatisticsChurchStatisticsSnapshot')
          ..add('snapshotDate', snapshotDate)
          ..add('oneEpisodePercentAverage', oneEpisodePercentAverage)
          ..add('allEpisodesPercentAverage', allEpisodesPercentAverage))
        .toString();
  }
}

class GetFraKaareStatisticsChurchStatisticsSnapshotBuilder
    implements
        Builder<GetFraKaareStatisticsChurchStatisticsSnapshot,
            GetFraKaareStatisticsChurchStatisticsSnapshotBuilder> {
  _$GetFraKaareStatisticsChurchStatisticsSnapshot? _$v;

  DateTime? _snapshotDate;
  DateTime? get snapshotDate => _$this._snapshotDate;
  set snapshotDate(DateTime? snapshotDate) =>
      _$this._snapshotDate = snapshotDate;

  double? _oneEpisodePercentAverage;
  double? get oneEpisodePercentAverage => _$this._oneEpisodePercentAverage;
  set oneEpisodePercentAverage(double? oneEpisodePercentAverage) =>
      _$this._oneEpisodePercentAverage = oneEpisodePercentAverage;

  double? _allEpisodesPercentAverage;
  double? get allEpisodesPercentAverage => _$this._allEpisodesPercentAverage;
  set allEpisodesPercentAverage(double? allEpisodesPercentAverage) =>
      _$this._allEpisodesPercentAverage = allEpisodesPercentAverage;

  GetFraKaareStatisticsChurchStatisticsSnapshotBuilder() {
    GetFraKaareStatisticsChurchStatisticsSnapshot._defaults(this);
  }

  GetFraKaareStatisticsChurchStatisticsSnapshotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _snapshotDate = $v.snapshotDate;
      _oneEpisodePercentAverage = $v.oneEpisodePercentAverage;
      _allEpisodesPercentAverage = $v.allEpisodesPercentAverage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFraKaareStatisticsChurchStatisticsSnapshot other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFraKaareStatisticsChurchStatisticsSnapshot;
  }

  @override
  void update(
      void Function(GetFraKaareStatisticsChurchStatisticsSnapshotBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFraKaareStatisticsChurchStatisticsSnapshot build() => _build();

  _$GetFraKaareStatisticsChurchStatisticsSnapshot _build() {
    final _$result = _$v ??
        new _$GetFraKaareStatisticsChurchStatisticsSnapshot._(
          snapshotDate: snapshotDate,
          oneEpisodePercentAverage: oneEpisodePercentAverage,
          allEpisodesPercentAverage: allEpisodesPercentAverage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
