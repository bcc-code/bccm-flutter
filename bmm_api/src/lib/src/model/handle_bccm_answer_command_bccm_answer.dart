//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'handle_bccm_answer_command_bccm_answer.g.dart';

/// HandleBccmAnswerCommandBccmAnswer
///
/// Properties:
/// * [questionId] 
/// * [answeredCorrectly] 
/// * [selectedAnswerId] 
/// * [personId] 
@BuiltValue()
abstract class HandleBccmAnswerCommandBccmAnswer implements Built<HandleBccmAnswerCommandBccmAnswer, HandleBccmAnswerCommandBccmAnswerBuilder> {
  @BuiltValueField(wireName: r'question_id')
  String? get questionId;

  @BuiltValueField(wireName: r'answered_correctly')
  bool? get answeredCorrectly;

  @BuiltValueField(wireName: r'selected_answer_id')
  String? get selectedAnswerId;

  @BuiltValueField(wireName: r'person_id')
  int? get personId;

  HandleBccmAnswerCommandBccmAnswer._();

  factory HandleBccmAnswerCommandBccmAnswer([void updates(HandleBccmAnswerCommandBccmAnswerBuilder b)]) = _$HandleBccmAnswerCommandBccmAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HandleBccmAnswerCommandBccmAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HandleBccmAnswerCommandBccmAnswer> get serializer => _$HandleBccmAnswerCommandBccmAnswerSerializer();
}

class _$HandleBccmAnswerCommandBccmAnswerSerializer implements PrimitiveSerializer<HandleBccmAnswerCommandBccmAnswer> {
  @override
  final Iterable<Type> types = const [HandleBccmAnswerCommandBccmAnswer, _$HandleBccmAnswerCommandBccmAnswer];

  @override
  final String wireName = r'HandleBccmAnswerCommandBccmAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HandleBccmAnswerCommandBccmAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.questionId != null) {
      yield r'question_id';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.answeredCorrectly != null) {
      yield r'answered_correctly';
      yield serializers.serialize(
        object.answeredCorrectly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.selectedAnswerId != null) {
      yield r'selected_answer_id';
      yield serializers.serialize(
        object.selectedAnswerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.personId != null) {
      yield r'person_id';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HandleBccmAnswerCommandBccmAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HandleBccmAnswerCommandBccmAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'answered_correctly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.answeredCorrectly = valueDes;
          break;
        case r'selected_answer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectedAnswerId = valueDes;
          break;
        case r'person_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.personId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HandleBccmAnswerCommandBccmAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HandleBccmAnswerCommandBccmAnswerBuilder();
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

