//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/track_reference.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_track_collection_command.g.dart';

/// UpdateTrackCollectionCommand
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [access] 
/// * [trackReferences] 
@BuiltValue()
abstract class UpdateTrackCollectionCommand implements Built<UpdateTrackCollectionCommand, UpdateTrackCollectionCommandBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @Deprecated('access has been deprecated')
  @BuiltValueField(wireName: r'access')
  BuiltList<String>? get access;

  @BuiltValueField(wireName: r'track_references')
  BuiltList<TrackReference>? get trackReferences;

  UpdateTrackCollectionCommand._();

  factory UpdateTrackCollectionCommand([void updates(UpdateTrackCollectionCommandBuilder b)]) = _$UpdateTrackCollectionCommand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTrackCollectionCommandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTrackCollectionCommand> get serializer => _$UpdateTrackCollectionCommandSerializer();
}

class _$UpdateTrackCollectionCommandSerializer implements PrimitiveSerializer<UpdateTrackCollectionCommand> {
  @override
  final Iterable<Type> types = const [UpdateTrackCollectionCommand, _$UpdateTrackCollectionCommand];

  @override
  final String wireName = r'UpdateTrackCollectionCommand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTrackCollectionCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
    UpdateTrackCollectionCommand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTrackCollectionCommandBuilder result,
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
  UpdateTrackCollectionCommand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTrackCollectionCommandBuilder();
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

