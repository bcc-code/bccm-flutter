// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionAnswer extends QuestionAnswer {
  @override
  final String? id;
  @override
  final String? text;
  @override
  final bool? isCorrect;

  factory _$QuestionAnswer([void Function(QuestionAnswerBuilder)? updates]) =>
      (new QuestionAnswerBuilder()..update(updates))._build();

  _$QuestionAnswer._({this.id, this.text, this.isCorrect}) : super._();

  @override
  QuestionAnswer rebuild(void Function(QuestionAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionAnswerBuilder toBuilder() =>
      new QuestionAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionAnswer &&
        id == other.id &&
        text == other.text &&
        isCorrect == other.isCorrect;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionAnswer')
          ..add('id', id)
          ..add('text', text)
          ..add('isCorrect', isCorrect))
        .toString();
  }
}

class QuestionAnswerBuilder
    implements Builder<QuestionAnswer, QuestionAnswerBuilder> {
  _$QuestionAnswer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  QuestionAnswerBuilder() {
    QuestionAnswer._defaults(this);
  }

  QuestionAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _isCorrect = $v.isCorrect;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionAnswer;
  }

  @override
  void update(void Function(QuestionAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionAnswer build() => _build();

  _$QuestionAnswer _build() {
    final _$result = _$v ??
        new _$QuestionAnswer._(
          id: id,
          text: text,
          isCorrect: isCorrect,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
