//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_answer.g.dart';

/// QuestionAnswer
///
/// Properties:
/// * [id] 
/// * [text] 
/// * [isCorrect] 
@BuiltValue()
abstract class QuestionAnswer implements Built<QuestionAnswer, QuestionAnswerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'is_correct')
  bool? get isCorrect;

  QuestionAnswer._();

  factory QuestionAnswer([void updates(QuestionAnswerBuilder b)]) = _$QuestionAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionAnswer> get serializer => _$QuestionAnswerSerializer();
}

class _$QuestionAnswerSerializer implements PrimitiveSerializer<QuestionAnswer> {
  @override
  final Iterable<Type> types = const [QuestionAnswer, _$QuestionAnswer];

  @override
  final String wireName = r'QuestionAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isCorrect != null) {
      yield r'is_correct';
      yield serializers.serialize(
        object.isCorrect,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'is_correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionAnswerBuilder();
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

