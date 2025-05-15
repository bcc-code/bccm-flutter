// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fra_kaare_draw_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FraKaareDrawCommand extends FraKaareDrawCommand {
  @override
  final String? drawOptionId;
  @override
  final int? earliestBirthYear;
  @override
  final int? latestBirthYear;
  @override
  final String? churchUid;
  @override
  final PersonGenderEnum? gender;

  factory _$FraKaareDrawCommand(
          [void Function(FraKaareDrawCommandBuilder)? updates]) =>
      (new FraKaareDrawCommandBuilder()..update(updates))._build();

  _$FraKaareDrawCommand._(
      {this.drawOptionId,
      this.earliestBirthYear,
      this.latestBirthYear,
      this.churchUid,
      this.gender})
      : super._();

  @override
  FraKaareDrawCommand rebuild(
          void Function(FraKaareDrawCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FraKaareDrawCommandBuilder toBuilder() =>
      new FraKaareDrawCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FraKaareDrawCommand &&
        drawOptionId == other.drawOptionId &&
        earliestBirthYear == other.earliestBirthYear &&
        latestBirthYear == other.latestBirthYear &&
        churchUid == other.churchUid &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, drawOptionId.hashCode);
    _$hash = $jc(_$hash, earliestBirthYear.hashCode);
    _$hash = $jc(_$hash, latestBirthYear.hashCode);
    _$hash = $jc(_$hash, churchUid.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FraKaareDrawCommand')
          ..add('drawOptionId', drawOptionId)
          ..add('earliestBirthYear', earliestBirthYear)
          ..add('latestBirthYear', latestBirthYear)
          ..add('churchUid', churchUid)
          ..add('gender', gender))
        .toString();
  }
}

class FraKaareDrawCommandBuilder
    implements Builder<FraKaareDrawCommand, FraKaareDrawCommandBuilder> {
  _$FraKaareDrawCommand? _$v;

  String? _drawOptionId;
  String? get drawOptionId => _$this._drawOptionId;
  set drawOptionId(String? drawOptionId) => _$this._drawOptionId = drawOptionId;

  int? _earliestBirthYear;
  int? get earliestBirthYear => _$this._earliestBirthYear;
  set earliestBirthYear(int? earliestBirthYear) =>
      _$this._earliestBirthYear = earliestBirthYear;

  int? _latestBirthYear;
  int? get latestBirthYear => _$this._latestBirthYear;
  set latestBirthYear(int? latestBirthYear) =>
      _$this._latestBirthYear = latestBirthYear;

  String? _churchUid;
  String? get churchUid => _$this._churchUid;
  set churchUid(String? churchUid) => _$this._churchUid = churchUid;

  PersonGenderEnum? _gender;
  PersonGenderEnum? get gender => _$this._gender;
  set gender(PersonGenderEnum? gender) => _$this._gender = gender;

  FraKaareDrawCommandBuilder() {
    FraKaareDrawCommand._defaults(this);
  }

  FraKaareDrawCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _drawOptionId = $v.drawOptionId;
      _earliestBirthYear = $v.earliestBirthYear;
      _latestBirthYear = $v.latestBirthYear;
      _churchUid = $v.churchUid;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FraKaareDrawCommand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FraKaareDrawCommand;
  }

  @override
  void update(void Function(FraKaareDrawCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FraKaareDrawCommand build() => _build();

  _$FraKaareDrawCommand _build() {
    final _$result = _$v ??
        new _$FraKaareDrawCommand._(
          drawOptionId: drawOptionId,
          earliestBirthYear: earliestBirthYear,
          latestBirthYear: latestBirthYear,
          churchUid: churchUid,
          gender: gender,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
