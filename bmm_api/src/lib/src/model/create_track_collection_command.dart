//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/track_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_track_collection_command.g.dart';

/// CreateTrackCollectionCommand
///
/// Properties:
/// * [name] 
/// * [access] 
/// * [trackReferences] 
@BuiltValue()
abstract class CreateTrackCollectionCommand implements Built<CreateTrackCollectionCommand, CreateTrackCollectionCommandBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @Deprecated('access has been deprecated')
  @BuiltValueField(wireName: r'access')
  BuiltList<String>? get access;

  @BuiltValueField(wireName: r'track_references')
  BuiltList<TrackReference>? get trackReferences;

  CreateTrackCollectionCommand._();

  factory CreateTrackCollectionCommand([void updates(CreateTrackCollectionCommandBuilder b)]) = _$CreateTrackCollectionCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTrackCollectionCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTrackCollectionCommand> get serializer => _$CreateTrackCollectionCommandSerializer();
}

class _$CreateTrackCollectionCommandSerializer implements PrimitiveSerializer<CreateTrackCollectionCommand> {
  @override
  final Iterable<Type> types = const [CreateTrackCollectionCommand, _$CreateTrackCollectionCommand];

  @override
  final String wireName = r'CreateTrackCollectionCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTrackCollectionCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.access != null) {
      yield r'access';
      yield serializers.serialize(
        object.access,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.trackReferences != null) {
      yield r'track_references';
      yield serializers.serialize(
        object.trackReferences,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackReference)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTrackCollectionCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTrackCollectionCommandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.access.replace(valueDes);
          break;
        case r'track_references':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackReference)]),
          ) as BuiltList<TrackReference>?;
          if (valueDes == null) continue;
          result.trackReferences.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTrackCollectionCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrackCollectionCommandBuilder();
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

