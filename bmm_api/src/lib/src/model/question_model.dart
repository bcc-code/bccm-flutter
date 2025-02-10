//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/question_short_answer.dart';
import 'package:bmm_api/src/model/question_question_style.dart';
import 'package:bmm_api/src/model/question_answer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_model.g.dart';

/// QuestionModel
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [questionImageLink] 
/// * [questionText] 
/// * [questionSubtext] 
/// * [linkUrl] 
/// * [linkText] 
/// * [solutionTextPlaceholder] 
/// * [solutionTextCorrect] 
/// * [solutionTextWrong] 
/// * [thankYouText] 
/// * [style] 
/// * [answers] 
/// * [shortAnswers] 
@BuiltValue()
abstract class QuestionModel implements Built<QuestionModel, QuestionModelBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  QuestionModelTypeEnum get type;
  // enum typeEnum {  question,  };

  @BuiltValueField(wireName: r'question_image_link')
  String? get questionImageLink;

  @BuiltValueField(wireName: r'question_text')
  String? get questionText;

  @BuiltValueField(wireName: r'question_subtext')
  String? get questionSubtext;

  @BuiltValueField(wireName: r'link_url')
  String? get linkUrl;

  @BuiltValueField(wireName: r'link_text')
  String? get linkText;

  @BuiltValueField(wireName: r'solution_text_placeholder')
  String? get solutionTextPlaceholder;

  @BuiltValueField(wireName: r'solution_text_correct')
  String? get solutionTextCorrect;

  @BuiltValueField(wireName: r'solution_text_wrong')
  String? get solutionTextWrong;

  @BuiltValueField(wireName: r'thank_you_text')
  String? get thankYouText;

  @BuiltValueField(wireName: r'style')
  QuestionQuestionStyle? get style;
  // enum styleEnum {  Default,  GibraltarQuiz,  };

  @BuiltValueField(wireName: r'answers')
  BuiltList<QuestionAnswer>? get answers;

  @BuiltValueField(wireName: r'short_answers')
  BuiltList<QuestionShortAnswer>? get shortAnswers;

  QuestionModel._();

  factory QuestionModel([void updates(QuestionModelBuilder b)]) = _$QuestionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionModel> get serializer => _$QuestionModelSerializer();
}

class _$QuestionModelSerializer implements PrimitiveSerializer<QuestionModel> {
  @override
  final Iterable<Type> types = const [QuestionModel, _$QuestionModel];

  @override
  final String wireName = r'QuestionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(QuestionModelTypeEnum),
    );
    if (object.questionImageLink != null) {
      yield r'question_image_link';
      yield serializers.serialize(
        object.questionImageLink,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionText != null) {
      yield r'question_text';
      yield serializers.serialize(
        object.questionText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionSubtext != null) {
      yield r'question_subtext';
      yield serializers.serialize(
        object.questionSubtext,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.linkUrl != null) {
      yield r'link_url';
      yield serializers.serialize(
        object.linkUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.linkText != null) {
      yield r'link_text';
      yield serializers.serialize(
        object.linkText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.solutionTextPlaceholder != null) {
      yield r'solution_text_placeholder';
      yield serializers.serialize(
        object.solutionTextPlaceholder,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.solutionTextCorrect != null) {
      yield r'solution_text_correct';
      yield serializers.serialize(
        object.solutionTextCorrect,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.solutionTextWrong != null) {
      yield r'solution_text_wrong';
      yield serializers.serialize(
        object.solutionTextWrong,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.thankYouText != null) {
      yield r'thank_you_text';
      yield serializers.serialize(
        object.thankYouText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.style != null) {
      yield r'style';
      yield serializers.serialize(
        object.style,
        specifiedType: const FullType(QuestionQuestionStyle),
      );
    }
    if (object.answers != null) {
      yield r'answers';
      yield serializers.serialize(
        object.answers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(QuestionAnswer)]),
      );
    }
    if (object.shortAnswers != null) {
      yield r'short_answers';
      yield serializers.serialize(
        object.shortAnswers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(QuestionShortAnswer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionModelTypeEnum),
          ) as QuestionModelTypeEnum;
          result.type = valueDes;
          break;
        case r'question_image_link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.questionImageLink = valueDes;
          break;
        case r'question_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.questionText = valueDes;
          break;
        case r'question_subtext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.questionSubtext = valueDes;
          break;
        case r'link_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.linkUrl = valueDes;
          break;
        case r'link_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.linkText = valueDes;
          break;
        case r'solution_text_placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.solutionTextPlaceholder = valueDes;
          break;
        case r'solution_text_correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.solutionTextCorrect = valueDes;
          break;
        case r'solution_text_wrong':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.solutionTextWrong = valueDes;
          break;
        case r'thank_you_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.thankYouText = valueDes;
          break;
        case r'style':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionQuestionStyle),
          ) as QuestionQuestionStyle;
          result.style = valueDes;
          break;
        case r'answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(QuestionAnswer)]),
          ) as BuiltList<QuestionAnswer>?;
          if (valueDes == null) continue;
          result.answers.replace(valueDes);
          break;
        case r'short_answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(QuestionShortAnswer)]),
          ) as BuiltList<QuestionShortAnswer>?;
          if (valueDes == null) continue;
          result.shortAnswers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class QuestionModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'question')
  static const QuestionModelTypeEnum question = _$questionModelTypeEnum_question;

  static Serializer<QuestionModelTypeEnum> get serializer => _$questionModelTypeEnumSerializer;

  const QuestionModelTypeEnum._(String name): super(name);

  static BuiltSet<QuestionModelTypeEnum> get values => _$questionModelTypeEnumValues;
  static QuestionModelTypeEnum valueOf(String name) => _$questionModelTypeEnumValueOf(name);
}

