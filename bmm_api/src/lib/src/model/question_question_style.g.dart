// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_question_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionQuestionStyle _$default_ =
    const QuestionQuestionStyle._('default_');
const QuestionQuestionStyle _$gibraltarQuiz =
    const QuestionQuestionStyle._('gibraltarQuiz');

QuestionQuestionStyle _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'gibraltarQuiz':
      return _$gibraltarQuiz;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<QuestionQuestionStyle> _$values =
    new BuiltSet<QuestionQuestionStyle>(const <QuestionQuestionStyle>[
  _$default_,
  _$gibraltarQuiz,
]);

class _$QuestionQuestionStyleMeta {
  const _$QuestionQuestionStyleMeta();
  QuestionQuestionStyle get default_ => _$default_;
  QuestionQuestionStyle get gibraltarQuiz => _$gibraltarQuiz;
  QuestionQuestionStyle valueOf(String name) => _$valueOf(name);
  BuiltSet<QuestionQuestionStyle> get values => _$values;
}

abstract class _$QuestionQuestionStyleMixin {
  // ignore: non_constant_identifier_names
  _$QuestionQuestionStyleMeta get QuestionQuestionStyle =>
      const _$QuestionQuestionStyleMeta();
}

Serializer<QuestionQuestionStyle> _$questionQuestionStyleSerializer =
    new _$QuestionQuestionStyleSerializer();

class _$QuestionQuestionStyleSerializer
    implements PrimitiveSerializer<QuestionQuestionStyle> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'Default',
    'gibraltarQuiz': 'GibraltarQuiz',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Default': 'default_',
    'GibraltarQuiz': 'gibraltarQuiz',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionQuestionStyle];
  @override
  final String wireName = 'QuestionQuestionStyle';

  @override
  Object serialize(Serializers serializers, QuestionQuestionStyle object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionQuestionStyle deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionQuestionStyle.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
