// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fra_kaare_draw_command_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FraKaareDrawCommandResponse extends FraKaareDrawCommandResponse {
  @override
  final bool? isSuccess;
  @override
  final String? winnerDisplayName;
  @override
  final PersonGenderEnum? winnerGender;
  @override
  final int? winnerBirthYear;
  @override
  final String? errorMessage;
  @override
  final int? drawsLeft;

  factory _$FraKaareDrawCommandResponse(
          [void Function(FraKaareDrawCommandResponseBuilder)? updates]) =>
      (new FraKaareDrawCommandResponseBuilder()..update(updates))._build();

  _$FraKaareDrawCommandResponse._(
      {this.isSuccess,
      this.winnerDisplayName,
      this.winnerGender,
      this.winnerBirthYear,
      this.errorMessage,
      this.drawsLeft})
      : super._();

  @override
  FraKaareDrawCommandResponse rebuild(
          void Function(FraKaareDrawCommandResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FraKaareDrawCommandResponseBuilder toBuilder() =>
      new FraKaareDrawCommandResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FraKaareDrawCommandResponse &&
        isSuccess == other.isSuccess &&
        winnerDisplayName == other.winnerDisplayName &&
        winnerGender == other.winnerGender &&
        winnerBirthYear == other.winnerBirthYear &&
        errorMessage == other.errorMessage &&
        drawsLeft == other.drawsLeft;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, winnerDisplayName.hashCode);
    _$hash = $jc(_$hash, winnerGender.hashCode);
    _$hash = $jc(_$hash, winnerBirthYear.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, drawsLeft.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FraKaareDrawCommandResponse')
          ..add('isSuccess', isSuccess)
          ..add('winnerDisplayName', winnerDisplayName)
          ..add('winnerGender', winnerGender)
          ..add('winnerBirthYear', winnerBirthYear)
          ..add('errorMessage', errorMessage)
          ..add('drawsLeft', drawsLeft))
        .toString();
  }
}

class FraKaareDrawCommandResponseBuilder
    implements
        Builder<FraKaareDrawCommandResponse,
            FraKaareDrawCommandResponseBuilder> {
  _$FraKaareDrawCommandResponse? _$v;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  String? _winnerDisplayName;
  String? get winnerDisplayName => _$this._winnerDisplayName;
  set winnerDisplayName(String? winnerDisplayName) =>
      _$this._winnerDisplayName = winnerDisplayName;

  PersonGenderEnum? _winnerGender;
  PersonGenderEnum? get winnerGender => _$this._winnerGender;
  set winnerGender(PersonGenderEnum? winnerGender) =>
      _$this._winnerGender = winnerGender;

  int? _winnerBirthYear;
  int? get winnerBirthYear => _$this._winnerBirthYear;
  set winnerBirthYear(int? winnerBirthYear) =>
      _$this._winnerBirthYear = winnerBirthYear;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  int? _drawsLeft;
  int? get drawsLeft => _$this._drawsLeft;
  set drawsLeft(int? drawsLeft) => _$this._drawsLeft = drawsLeft;

  FraKaareDrawCommandResponseBuilder() {
    FraKaareDrawCommandResponse._defaults(this);
  }

  FraKaareDrawCommandResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSuccess = $v.isSuccess;
      _winnerDisplayName = $v.winnerDisplayName;
      _winnerGender = $v.winnerGender;
      _winnerBirthYear = $v.winnerBirthYear;
      _errorMessage = $v.errorMessage;
      _drawsLeft = $v.drawsLeft;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FraKaareDrawCommandResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FraKaareDrawCommandResponse;
  }

  @override
  void update(void Function(FraKaareDrawCommandResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FraKaareDrawCommandResponse build() => _build();

  _$FraKaareDrawCommandResponse _build() {
    final _$result = _$v ??
        new _$FraKaareDrawCommandResponse._(
          isSuccess: isSuccess,
          winnerDisplayName: winnerDisplayName,
          winnerGender: winnerGender,
          winnerBirthYear: winnerBirthYear,
          errorMessage: errorMessage,
          drawsLeft: drawsLeft,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
