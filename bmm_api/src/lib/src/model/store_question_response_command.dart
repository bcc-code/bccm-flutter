//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_question_response_command.g.dart';

/// StoreQuestionResponseCommand
///
/// Properties:
/// * [questionId] 
/// * [initialAnswerId] 
/// * [finalAnswerId] 
/// * [tries] 
@BuiltValue()
abstract class StoreQuestionResponseCommand implements Built<StoreQuestionResponseCommand, StoreQuestionResponseCommandBuilder> {
  @BuiltValueField(wireName: r'question_id')
  int? get questionId;

  @BuiltValueField(wireName: r'initial_answer_id')
  String? get initialAnswerId;

  @BuiltValueField(wireName: r'final_answer_id')
  String? get finalAnswerId;

  @BuiltValueField(wireName: r'tries')
  int? get tries;

  StoreQuestionResponseCommand._();

  factory StoreQuestionResponseCommand([void updates(StoreQuestionResponseCommandBuilder b)]) = _$StoreQuestionResponseCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StoreQuestionResponseCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StoreQuestionResponseCommand> get serializer => _$StoreQuestionResponseCommandSerializer();
}

class _$StoreQuestionResponseCommandSerializer implements PrimitiveSerializer<StoreQuestionResponseCommand> {
  @override
  final Iterable<Type> types = const [StoreQuestionResponseCommand, _$StoreQuestionResponseCommand];

  @override
  final String wireName = r'StoreQuestionResponseCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StoreQuestionResponseCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.questionId != null) {
      yield r'question_id';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType(int),
      );
    }
    if (object.initialAnswerId != null) {
      yield r'initial_answer_id';
      yield serializers.serialize(
        object.initialAnswerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.finalAnswerId != null) {
      yield r'final_answer_id';
      yield serializers.serialize(
        object.finalAnswerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tries != null) {
      yield r'tries';
      yield serializers.serialize(
        object.tries,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StoreQuestionResponseCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StoreQuestionResponseCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.questionId = valueDes;
          break;
        case r'initial_answer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.initialAnswerId = valueDes;
          break;
        case r'final_answer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.finalAnswerId = valueDes;
          break;
        case r'tries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tries = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StoreQuestionResponseCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoreQuestionResponseCommandBuilder();
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

