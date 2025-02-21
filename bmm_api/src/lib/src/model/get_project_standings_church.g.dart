// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_project_standings_church.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetProjectStandingsChurch extends GetProjectStandingsChurch {
  @override
  final String? name;
  @override
  final bool? isHighlighted;
  @override
  final int? boysPoints;
  @override
  final int? girlsPoints;
  @override
  final BuiltList<GetProjectStandingsChurchGameNight>? gameNights;

  factory _$GetProjectStandingsChurch(
          [void Function(GetProjectStandingsChurchBuilder)? updates]) =>
      (new GetProjectStandingsChurchBuilder()..update(updates))._build();

  _$GetProjectStandingsChurch._(
      {this.name,
      this.isHighlighted,
      this.boysPoints,
      this.girlsPoints,
      this.gameNights})
      : super._();

  @override
  GetProjectStandingsChurch rebuild(
          void Function(GetProjectStandingsChurchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProjectStandingsChurchBuilder toBuilder() =>
      new GetProjectStandingsChurchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProjectStandingsChurch &&
        name == other.name &&
        isHighlighted == other.isHighlighted &&
        boysPoints == other.boysPoints &&
        girlsPoints == other.girlsPoints &&
        gameNights == other.gameNights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isHighlighted.hashCode);
    _$hash = $jc(_$hash, boysPoints.hashCode);
    _$hash = $jc(_$hash, girlsPoints.hashCode);
    _$hash = $jc(_$hash, gameNights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetProjectStandingsChurch')
          ..add('name', name)
          ..add('isHighlighted', isHighlighted)
          ..add('boysPoints', boysPoints)
          ..add('girlsPoints', girlsPoints)
          ..add('gameNights', gameNights))
        .toString();
  }
}

class GetProjectStandingsChurchBuilder
    implements
        Builder<GetProjectStandingsChurch, GetProjectStandingsChurchBuilder> {
  _$GetProjectStandingsChurch? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isHighlighted;
  bool? get isHighlighted => _$this._isHighlighted;
  set isHighlighted(bool? isHighlighted) =>
      _$this._isHighlighted = isHighlighted;

  int? _boysPoints;
  int? get boysPoints => _$this._boysPoints;
  set boysPoints(int? boysPoints) => _$this._boysPoints = boysPoints;

  int? _girlsPoints;
  int? get girlsPoints => _$this._girlsPoints;
  set girlsPoints(int? girlsPoints) => _$this._girlsPoints = girlsPoints;

  ListBuilder<GetProjectStandingsChurchGameNight>? _gameNights;
  ListBuilder<GetProjectStandingsChurchGameNight> get gameNights =>
      _$this._gameNights ??=
          new ListBuilder<GetProjectStandingsChurchGameNight>();
  set gameNights(ListBuilder<GetProjectStandingsChurchGameNight>? gameNights) =>
      _$this._gameNights = gameNights;

  GetProjectStandingsChurchBuilder() {
    GetProjectStandingsChurch._defaults(this);
  }

  GetProjectStandingsChurchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isHighlighted = $v.isHighlighted;
      _boysPoints = $v.boysPoints;
      _girlsPoints = $v.girlsPoints;
      _gameNights = $v.gameNights?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProjectStandingsChurch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProjectStandingsChurch;
  }

  @override
  void update(void Function(GetProjectStandingsChurchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetProjectStandingsChurch build() => _build();

  _$GetProjectStandingsChurch _build() {
    _$GetProjectStandingsChurch _$result;
    try {
      _$result = _$v ??
          new _$GetProjectStandingsChurch._(
            name: name,
            isHighlighted: isHighlighted,
            boysPoints: boysPoints,
            girlsPoints: girlsPoints,
            gameNights: _gameNights?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gameNights';
        _gameNights?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetProjectStandingsChurch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
