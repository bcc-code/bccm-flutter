// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forbilde_points.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForbildePoints extends ForbildePoints {
  @override
  final CurrentWeeksStreakVm? streak;
  @override
  final int? days;
  @override
  final int? currentBoost;
  @override
  final int? points;
  @override
  final BuiltList<AchievementModel>? achievements;

  factory _$ForbildePoints([void Function(ForbildePointsBuilder)? updates]) =>
      (new ForbildePointsBuilder()..update(updates))._build();

  _$ForbildePoints._(
      {this.streak,
      this.days,
      this.currentBoost,
      this.points,
      this.achievements})
      : super._();

  @override
  ForbildePoints rebuild(void Function(ForbildePointsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForbildePointsBuilder toBuilder() =>
      new ForbildePointsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForbildePoints &&
        streak == other.streak &&
        days == other.days &&
        currentBoost == other.currentBoost &&
        points == other.points &&
        achievements == other.achievements;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streak.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, currentBoost.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, achievements.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForbildePoints')
          ..add('streak', streak)
          ..add('days', days)
          ..add('currentBoost', currentBoost)
          ..add('points', points)
          ..add('achievements', achievements))
        .toString();
  }
}

class ForbildePointsBuilder
    implements Builder<ForbildePoints, ForbildePointsBuilder> {
  _$ForbildePoints? _$v;

  CurrentWeeksStreakVmBuilder? _streak;
  CurrentWeeksStreakVmBuilder get streak =>
      _$this._streak ??= new CurrentWeeksStreakVmBuilder();
  set streak(CurrentWeeksStreakVmBuilder? streak) => _$this._streak = streak;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  int? _currentBoost;
  int? get currentBoost => _$this._currentBoost;
  set currentBoost(int? currentBoost) => _$this._currentBoost = currentBoost;

  int? _points;
  int? get points => _$this._points;
  set points(int? points) => _$this._points = points;

  ListBuilder<AchievementModel>? _achievements;
  ListBuilder<AchievementModel> get achievements =>
      _$this._achievements ??= new ListBuilder<AchievementModel>();
  set achievements(ListBuilder<AchievementModel>? achievements) =>
      _$this._achievements = achievements;

  ForbildePointsBuilder() {
    ForbildePoints._defaults(this);
  }

  ForbildePointsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streak = $v.streak?.toBuilder();
      _days = $v.days;
      _currentBoost = $v.currentBoost;
      _points = $v.points;
      _achievements = $v.achievements?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForbildePoints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForbildePoints;
  }

  @override
  void update(void Function(ForbildePointsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForbildePoints build() => _build();

  _$ForbildePoints _build() {
    _$ForbildePoints _$result;
    try {
      _$result = _$v ??
          new _$ForbildePoints._(
            streak: _streak?.build(),
            days: days,
            currentBoost: currentBoost,
            points: points,
            achievements: _achievements?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'streak';
        _streak?.build();

        _$failedField = 'achievements';
        _achievements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ForbildePoints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
