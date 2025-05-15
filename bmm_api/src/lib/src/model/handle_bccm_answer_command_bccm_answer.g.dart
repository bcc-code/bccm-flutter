// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handle_bccm_answer_command_bccm_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HandleBccmAnswerCommandBccmAnswer
    extends HandleBccmAnswerCommandBccmAnswer {
  @override
  final String? questionId;
  @override
  final bool? answeredCorrectly;
  @override
  final String? selectedAnswerId;
  @override
  final int? personId;

  factory _$HandleBccmAnswerCommandBccmAnswer(
          [void Function(HandleBccmAnswerCommandBccmAnswerBuilder)? updates]) =>
      (new HandleBccmAnswerCommandBccmAnswerBuilder()..update(updates))
          ._build();

  _$HandleBccmAnswerCommandBccmAnswer._(
      {this.questionId,
      this.answeredCorrectly,
      this.selectedAnswerId,
      this.personId})
      : super._();

  @override
  HandleBccmAnswerCommandBccmAnswer rebuild(
          void Function(HandleBccmAnswerCommandBccmAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HandleBccmAnswerCommandBccmAnswerBuilder toBuilder() =>
      new HandleBccmAnswerCommandBccmAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HandleBccmAnswerCommandBccmAnswer &&
        questionId == other.questionId &&
        answeredCorrectly == other.answeredCorrectly &&
        selectedAnswerId == other.selectedAnswerId &&
        personId == other.personId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, answeredCorrectly.hashCode);
    _$hash = $jc(_$hash, selectedAnswerId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HandleBccmAnswerCommandBccmAnswer')
          ..add('questionId', questionId)
          ..add('answeredCorrectly', answeredCorrectly)
          ..add('selectedAnswerId', selectedAnswerId)
          ..add('personId', personId))
        .toString();
  }
}

class HandleBccmAnswerCommandBccmAnswerBuilder
    implements
        Builder<HandleBccmAnswerCommandBccmAnswer,
            HandleBccmAnswerCommandBccmAnswerBuilder> {
  _$HandleBccmAnswerCommandBccmAnswer? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  bool? _answeredCorrectly;
  bool? get answeredCorrectly => _$this._answeredCorrectly;
  set answeredCorrectly(bool? answeredCorrectly) =>
      _$this._answeredCorrectly = answeredCorrectly;

  String? _selectedAnswerId;
  String? get selectedAnswerId => _$this._selectedAnswerId;
  set selectedAnswerId(String? selectedAnswerId) =>
      _$this._selectedAnswerId = selectedAnswerId;

  int? _personId;
  int? get personId => _$this._personId;
  set personId(int? personId) => _$this._personId = personId;

  HandleBccmAnswerCommandBccmAnswerBuilder() {
    HandleBccmAnswerCommandBccmAnswer._defaults(this);
  }

  HandleBccmAnswerCommandBccmAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _answeredCorrectly = $v.answeredCorrectly;
      _selectedAnswerId = $v.selectedAnswerId;
      _personId = $v.personId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HandleBccmAnswerCommandBccmAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HandleBccmAnswerCommandBccmAnswer;
  }

  @override
  void update(
      void Function(HandleBccmAnswerCommandBccmAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HandleBccmAnswerCommandBccmAnswer build() => _build();

  _$HandleBccmAnswerCommandBccmAnswer _build() {
    final _$result = _$v ??
        new _$HandleBccmAnswerCommandBccmAnswer._(
          questionId: questionId,
          answeredCorrectly: answeredCorrectly,
          selectedAnswerId: selectedAnswerId,
          personId: personId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
