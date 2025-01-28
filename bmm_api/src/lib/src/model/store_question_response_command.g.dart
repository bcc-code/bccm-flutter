// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_question_response_command.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoreQuestionResponseCommand extends StoreQuestionResponseCommand {
  @override
  final int? questionId;
  @override
  final String? initialAnswerId;
  @override
  final String? finalAnswerId;
  @override
  final int? tries;

  factory _$StoreQuestionResponseCommand(
          [void Function(StoreQuestionResponseCommandBuilder)? updates]) =>
      (new StoreQuestionResponseCommandBuilder()..update(updates))._build();

  _$StoreQuestionResponseCommand._(
      {this.questionId, this.initialAnswerId, this.finalAnswerId, this.tries})
      : super._();

  @override
  StoreQuestionResponseCommand rebuild(
          void Function(StoreQuestionResponseCommandBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreQuestionResponseCommandBuilder toBuilder() =>
      new StoreQuestionResponseCommandBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreQuestionResponseCommand &&
        questionId == other.questionId &&
        initialAnswerId == other.initialAnswerId &&
        finalAnswerId == other.finalAnswerId &&
        tries == other.tries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, initialAnswerId.hashCode);
    _$hash = $jc(_$hash, finalAnswerId.hashCode);
    _$hash = $jc(_$hash, tries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreQuestionResponseCommand')
          ..add('questionId', questionId)
          ..add('initialAnswerId', initialAnswerId)
          ..add('finalAnswerId', finalAnswerId)
          ..add('tries', tries))
        .toString();
  }
}

class StoreQuestionResponseCommandBuilder
    implements
        Builder<StoreQuestionResponseCommand,
            StoreQuestionResponseCommandBuilder> {
  _$StoreQuestionResponseCommand? _$v;

  int? _questionId;
  int? get questionId => _$this._questionId;
  set questionId(int? questionId) => _$this._questionId = questionId;

  String? _initialAnswerId;
  String? get initialAnswerId => _$this._initialAnswerId;
  set initialAnswerId(String? initialAnswerId) =>
      _$this._initialAnswerId = initialAnswerId;

  String? _finalAnswerId;
  String? get finalAnswerId => _$this._finalAnswerId;
  set finalAnswerId(String? finalAnswerId) =>
      _$this._finalAnswerId = finalAnswerId;

  int? _tries;
  int? get tries => _$this._tries;
  set tries(int? tries) => _$this._tries = tries;

  StoreQuestionResponseCommandBuilder() {
    StoreQuestionResponseCommand._defaults(this);
  }

  StoreQuestionResponseCommandBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _initialAnswerId = $v.initialAnswerId;
      _finalAnswerId = $v.finalAnswerId;
      _tries = $v.tries;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreQuestionResponseCommand other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreQuestionResponseCommand;
  }

  @override
  void update(void Function(StoreQuestionResponseCommandBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreQuestionResponseCommand build() => _build();

  _$StoreQuestionResponseCommand _build() {
    final _$result = _$v ??
        new _$StoreQuestionResponseCommand._(
          questionId: questionId,
          initialAnswerId: initialAnswerId,
          finalAnswerId: finalAnswerId,
          tries: tries,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
