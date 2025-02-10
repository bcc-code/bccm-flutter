// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_project_question_question_holder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoreProjectQuestionQuestionHolder
    extends StoreProjectQuestionQuestionHolder {
  @override
  final String? question;

  factory _$StoreProjectQuestionQuestionHolder(
          [void Function(StoreProjectQuestionQuestionHolderBuilder)?
              updates]) =>
      (new StoreProjectQuestionQuestionHolderBuilder()..update(updates))
          ._build();

  _$StoreProjectQuestionQuestionHolder._({this.question}) : super._();

  @override
  StoreProjectQuestionQuestionHolder rebuild(
          void Function(StoreProjectQuestionQuestionHolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreProjectQuestionQuestionHolderBuilder toBuilder() =>
      new StoreProjectQuestionQuestionHolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreProjectQuestionQuestionHolder &&
        question == other.question;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreProjectQuestionQuestionHolder')
          ..add('question', question))
        .toString();
  }
}

class StoreProjectQuestionQuestionHolderBuilder
    implements
        Builder<StoreProjectQuestionQuestionHolder,
            StoreProjectQuestionQuestionHolderBuilder> {
  _$StoreProjectQuestionQuestionHolder? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  StoreProjectQuestionQuestionHolderBuilder() {
    StoreProjectQuestionQuestionHolder._defaults(this);
  }

  StoreProjectQuestionQuestionHolderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreProjectQuestionQuestionHolder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreProjectQuestionQuestionHolder;
  }

  @override
  void update(
      void Function(StoreProjectQuestionQuestionHolderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreProjectQuestionQuestionHolder build() => _build();

  _$StoreProjectQuestionQuestionHolder _build() {
    final _$result = _$v ??
        new _$StoreProjectQuestionQuestionHolder._(
          question: question,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
