//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_external_relation.g.dart';

/// TrackModelExternalRelation
///
/// Properties:
/// * [url] 
/// * [name] 
/// * [hasListened] 
@BuiltValue()
abstract class TrackModelExternalRelation implements Built<TrackModelExternalRelation, TrackModelExternalRelationBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'has_listened')
  bool? get hasListened;

  TrackModelExternalRelation._();

  factory TrackModelExternalRelation([void updates(TrackModelExternalRelationBuilder b)]) = _$TrackModelExternalRelation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelExternalRelationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelExternalRelation> get serializer => _$TrackModelExternalRelationSerializer();
}

class _$TrackModelExternalRelationSerializer implements PrimitiveSerializer<TrackModelExternalRelation> {
  @override
  final Iterable<Type> types = const [TrackModelExternalRelation, _$TrackModelExternalRelation];

  @override
  final String wireName = r'TrackModelExternalRelation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelExternalRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hasListened != null) {
      yield r'has_listened';
      yield serializers.serialize(
        object.hasListened,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelExternalRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelExternalRelationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'has_listened':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasListened = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelExternalRelation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelExternalRelationBuilder();
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

