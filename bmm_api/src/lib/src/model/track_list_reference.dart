//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_list_reference.g.dart';

/// TrackListReference
///
/// Properties:
/// * [id] 
@BuiltValue()
abstract class TrackListReference implements Built<TrackListReference, TrackListReferenceBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  TrackListReference._();

  factory TrackListReference([void updates(TrackListReferenceBuilder b)]) = _$TrackListReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackListReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackListReference> get serializer => _$TrackListReferenceSerializer();
}

class _$TrackListReferenceSerializer implements PrimitiveSerializer<TrackListReference> {
  @override
  final Iterable<Type> types = const [TrackListReference, _$TrackListReference];

  @override
  final String wireName = r'TrackListReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackListReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackListReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackListReferenceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackListReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackListReferenceBuilder();
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

