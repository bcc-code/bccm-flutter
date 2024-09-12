//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_project_question_question_holder.g.dart';

/// StoreProjectQuestionQuestionHolder
///
/// Properties:
/// * [question] 
@BuiltValue()
abstract class StoreProjectQuestionQuestionHolder implements Built<StoreProjectQuestionQuestionHolder, StoreProjectQuestionQuestionHolderBuilder> {
  @BuiltValueField(wireName: r'question')
  String? get question;

  StoreProjectQuestionQuestionHolder._();

  factory StoreProjectQuestionQuestionHolder([void updates(StoreProjectQuestionQuestionHolderBuilder b)]) = _$StoreProjectQuestionQuestionHolder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StoreProjectQuestionQuestionHolderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StoreProjectQuestionQuestionHolder> get serializer => _$StoreProjectQuestionQuestionHolderSerializer();
}

class _$StoreProjectQuestionQuestionHolderSerializer implements PrimitiveSerializer<StoreProjectQuestionQuestionHolder> {
  @override
  final Iterable<Type> types = const [StoreProjectQuestionQuestionHolder, _$StoreProjectQuestionQuestionHolder];

  @override
  final String wireName = r'StoreProjectQuestionQuestionHolder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StoreProjectQuestionQuestionHolder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.question != null) {
      yield r'question';
      yield serializers.serialize(
        object.question,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StoreProjectQuestionQuestionHolder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StoreProjectQuestionQuestionHolderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.question = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StoreProjectQuestionQuestionHolder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoreProjectQuestionQuestionHolderBuilder();
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

