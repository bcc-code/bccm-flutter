//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_translation_transcription_segment.g.dart';

/// TrackTranslationTranscriptionSegment
///
/// Properties:
/// * [id] 
/// * [start] 
/// * [end] 
/// * [text] 
@BuiltValue()
abstract class TrackTranslationTranscriptionSegment implements Built<TrackTranslationTranscriptionSegment, TrackTranslationTranscriptionSegmentBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'start')
  double? get start;

  @BuiltValueField(wireName: r'end')
  double? get end;

  @BuiltValueField(wireName: r'text')
  String? get text;

  TrackTranslationTranscriptionSegment._();

  factory TrackTranslationTranscriptionSegment([void updates(TrackTranslationTranscriptionSegmentBuilder b)]) = _$TrackTranslationTranscriptionSegment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackTranslationTranscriptionSegmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackTranslationTranscriptionSegment> get serializer => _$TrackTranslationTranscriptionSegmentSerializer();
}

class _$TrackTranslationTranscriptionSegmentSerializer implements PrimitiveSerializer<TrackTranslationTranscriptionSegment> {
  @override
  final Iterable<Type> types = const [TrackTranslationTranscriptionSegment, _$TrackTranslationTranscriptionSegment];

  @override
  final String wireName = r'TrackTranslationTranscriptionSegment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackTranslationTranscriptionSegment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(double),
      );
    }
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(double),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackTranslationTranscriptionSegment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackTranslationTranscriptionSegmentBuilder result,
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
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.end = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackTranslationTranscriptionSegment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackTranslationTranscriptionSegmentBuilder();
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

