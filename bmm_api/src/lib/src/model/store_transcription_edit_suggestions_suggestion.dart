//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'store_transcription_edit_suggestions_suggestion.g.dart';

/// StoreTranscriptionEditSuggestionsSuggestion
///
/// Properties:
/// * [segmentIndex] 
/// * [originalText] 
/// * [newText] 
@BuiltValue()
abstract class StoreTranscriptionEditSuggestionsSuggestion implements Built<StoreTranscriptionEditSuggestionsSuggestion, StoreTranscriptionEditSuggestionsSuggestionBuilder> {
  @BuiltValueField(wireName: r'segment_index')
  int? get segmentIndex;

  @BuiltValueField(wireName: r'original_text')
  String? get originalText;

  @BuiltValueField(wireName: r'new_text')
  String? get newText;

  StoreTranscriptionEditSuggestionsSuggestion._();

  factory StoreTranscriptionEditSuggestionsSuggestion([void updates(StoreTranscriptionEditSuggestionsSuggestionBuilder b)]) = _$StoreTranscriptionEditSuggestionsSuggestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StoreTranscriptionEditSuggestionsSuggestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StoreTranscriptionEditSuggestionsSuggestion> get serializer => _$StoreTranscriptionEditSuggestionsSuggestionSerializer();
}

class _$StoreTranscriptionEditSuggestionsSuggestionSerializer implements PrimitiveSerializer<StoreTranscriptionEditSuggestionsSuggestion> {
  @override
  final Iterable<Type> types = const [StoreTranscriptionEditSuggestionsSuggestion, _$StoreTranscriptionEditSuggestionsSuggestion];

  @override
  final String wireName = r'StoreTranscriptionEditSuggestionsSuggestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StoreTranscriptionEditSuggestionsSuggestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.segmentIndex != null) {
      yield r'segment_index';
      yield serializers.serialize(
        object.segmentIndex,
        specifiedType: const FullType(int),
      );
    }
    if (object.originalText != null) {
      yield r'original_text';
      yield serializers.serialize(
        object.originalText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.newText != null) {
      yield r'new_text';
      yield serializers.serialize(
        object.newText,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StoreTranscriptionEditSuggestionsSuggestion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StoreTranscriptionEditSuggestionsSuggestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'segment_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.segmentIndex = valueDes;
          break;
        case r'original_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originalText = valueDes;
          break;
        case r'new_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StoreTranscriptionEditSuggestionsSuggestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoreTranscriptionEditSuggestionsSuggestionBuilder();
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

