// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_short_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionShortAnswer extends QuestionShortAnswer {
  @override
  final String? id;
  @override
  final String? text;
  @override
  final bool? hasPrimaryStyle;

  factory _$QuestionShortAnswer(
          [void Function(QuestionShortAnswerBuilder)? updates]) =>
      (new QuestionShortAnswerBuilder()..update(updates))._build();

  _$QuestionShortAnswer._({this.id, this.text, this.hasPrimaryStyle})
      : super._();

  @override
  QuestionShortAnswer rebuild(
          void Function(QuestionShortAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionShortAnswerBuilder toBuilder() =>
      new QuestionShortAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionShortAnswer &&
        id == other.id &&
        text == other.text &&
        hasPrimaryStyle == other.hasPrimaryStyle;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, hasPrimaryStyle.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionShortAnswer')
          ..add('id', id)
          ..add('text', text)
          ..add('hasPrimaryStyle', hasPrimaryStyle))
        .toString();
  }
}

class QuestionShortAnswerBuilder
    implements Builder<QuestionShortAnswer, QuestionShortAnswerBuilder> {
  _$QuestionShortAnswer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _hasPrimaryStyle;
  bool? get hasPrimaryStyle => _$this._hasPrimaryStyle;
  set hasPrimaryStyle(bool? hasPrimaryStyle) =>
      _$this._hasPrimaryStyle = hasPrimaryStyle;

  QuestionShortAnswerBuilder() {
    QuestionShortAnswer._defaults(this);
  }

  QuestionShortAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _hasPrimaryStyle = $v.hasPrimaryStyle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionShortAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionShortAnswer;
  }

  @override
  void update(void Function(QuestionShortAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionShortAnswer build() => _build();

  _$QuestionShortAnswer _build() {
    final _$result = _$v ??
        new _$QuestionShortAnswer._(
          id: id,
          text: text,
          hasPrimaryStyle: hasPrimaryStyle,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
