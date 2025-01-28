//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_short_answer.g.dart';

/// QuestionShortAnswer
///
/// Properties:
/// * [id] 
/// * [text] 
/// * [hasPrimaryStyle] 
@BuiltValue()
abstract class QuestionShortAnswer implements Built<QuestionShortAnswer, QuestionShortAnswerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'has_primary_style')
  bool? get hasPrimaryStyle;

  QuestionShortAnswer._();

  factory QuestionShortAnswer([void updates(QuestionShortAnswerBuilder b)]) = _$QuestionShortAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionShortAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionShortAnswer> get serializer => _$QuestionShortAnswerSerializer();
}

class _$QuestionShortAnswerSerializer implements PrimitiveSerializer<QuestionShortAnswer> {
  @override
  final Iterable<Type> types = const [QuestionShortAnswer, _$QuestionShortAnswer];

  @override
  final String wireName = r'QuestionShortAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionShortAnswer object, {
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
    if (object.hasPrimaryStyle != null) {
      yield r'has_primary_style';
      yield serializers.serialize(
        object.hasPrimaryStyle,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionShortAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QuestionShortAnswerBuilder result,
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
        case r'has_primary_style':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPrimaryStyle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionShortAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionShortAnswerBuilder();
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

