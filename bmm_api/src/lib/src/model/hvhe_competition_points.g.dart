// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hvhe_competition_points.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HvheCompetitionPoints extends HvheCompetitionPoints {
  @override
  final int? boys;
  @override
  final int? girls;

  factory _$HvheCompetitionPoints(
          [void Function(HvheCompetitionPointsBuilder)? updates]) =>
      (new HvheCompetitionPointsBuilder()..update(updates))._build();

  _$HvheCompetitionPoints._({this.boys, this.girls}) : super._();

  @override
  HvheCompetitionPoints rebuild(
          void Function(HvheCompetitionPointsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HvheCompetitionPointsBuilder toBuilder() =>
      new HvheCompetitionPointsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HvheCompetitionPoints &&
        boys == other.boys &&
        girls == other.girls;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, boys.hashCode);
    _$hash = $jc(_$hash, girls.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HvheCompetitionPoints')
          ..add('boys', boys)
          ..add('girls', girls))
        .toString();
  }
}

class HvheCompetitionPointsBuilder
    implements Builder<HvheCompetitionPoints, HvheCompetitionPointsBuilder> {
  _$HvheCompetitionPoints? _$v;

  int? _boys;
  int? get boys => _$this._boys;
  set boys(int? boys) => _$this._boys = boys;

  int? _girls;
  int? get girls => _$this._girls;
  set girls(int? girls) => _$this._girls = girls;

  HvheCompetitionPointsBuilder() {
    HvheCompetitionPoints._defaults(this);
  }

  HvheCompetitionPointsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _boys = $v.boys;
      _girls = $v.girls;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HvheCompetitionPoints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HvheCompetitionPoints;
  }

  @override
  void update(void Function(HvheCompetitionPointsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HvheCompetitionPoints build() => _build();

  _$HvheCompetitionPoints _build() {
    final _$result = _$v ??
        new _$HvheCompetitionPoints._(
          boys: boys,
          girls: girls,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
