//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_question_style.g.dart';

class QuestionQuestionStyle extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Default')
  static const QuestionQuestionStyle default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'GibraltarQuiz')
  static const QuestionQuestionStyle gibraltarQuiz = _$gibraltarQuiz;

  static Serializer<QuestionQuestionStyle> get serializer => _$questionQuestionStyleSerializer;

  const QuestionQuestionStyle._(String name): super(name);

  static BuiltSet<QuestionQuestionStyle> get values => _$values;
  static QuestionQuestionStyle valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuestionQuestionStyleMixin = Object with _$QuestionQuestionStyleMixin;

