//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transcription_segment.g.dart';

/// TranscriptionSegment
///
/// Properties:
/// * [id] 
/// * [start] 
/// * [end] 
/// * [text] 
/// * [isHeader] 
@BuiltValue()
abstract class TranscriptionSegment implements Built<TranscriptionSegment, TranscriptionSegmentBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'start')
  double? get start;

  @BuiltValueField(wireName: r'end')
  double? get end;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'is_header')
  bool? get isHeader;

  TranscriptionSegment._();

  factory TranscriptionSegment([void updates(TranscriptionSegmentBuilder b)]) = _$TranscriptionSegment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TranscriptionSegmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TranscriptionSegment> get serializer => _$TranscriptionSegmentSerializer();
}

class _$TranscriptionSegmentSerializer implements PrimitiveSerializer<TranscriptionSegment> {
  @override
  final Iterable<Type> types = const [TranscriptionSegment, _$TranscriptionSegment];

  @override
  final String wireName = r'TranscriptionSegment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TranscriptionSegment object, {
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
    if (object.isHeader != null) {
      yield r'is_header';
      yield serializers.serialize(
        object.isHeader,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TranscriptionSegment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TranscriptionSegmentBuilder result,
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
        case r'is_header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isHeader = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TranscriptionSegment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TranscriptionSegmentBuilder();
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

