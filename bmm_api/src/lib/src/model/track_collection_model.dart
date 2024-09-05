//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/track_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_collection_model.g.dart';

/// TrackCollectionModel
///
/// Properties:
/// * [type] 
/// * [id] 
/// * [name] 
/// * [access] 
/// * [trackReferences] 
@BuiltValue()
abstract class TrackCollectionModel implements Built<TrackCollectionModel, TrackCollectionModelBuilder> {
  @BuiltValueField(wireName: r'type')
  TrackCollectionModelTypeEnum get type;
  // enum typeEnum {  track_collection,  };

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'access')
  BuiltList<String>? get access;

  @BuiltValueField(wireName: r'track_references')
  BuiltList<TrackReference>? get trackReferences;

  TrackCollectionModel._();

  factory TrackCollectionModel([void updates(TrackCollectionModelBuilder b)]) = _$TrackCollectionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackCollectionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackCollectionModel> get serializer => _$TrackCollectionModelSerializer();
}

class _$TrackCollectionModelSerializer implements PrimitiveSerializer<TrackCollectionModel> {
  @override
  final Iterable<Type> types = const [TrackCollectionModel, _$TrackCollectionModel];

  @override
  final String wireName = r'TrackCollectionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackCollectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TrackCollectionModelTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    TrackCollectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackCollectionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackCollectionModelTypeEnum),
          ) as TrackCollectionModelTypeEnum;
          result.type = valueDes;
          break;
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
            specifiedType: const FullType(String),
          ) as String;
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
  TrackCollectionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackCollectionModelBuilder();
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

class TrackCollectionModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'track_collection')
  static const TrackCollectionModelTypeEnum trackCollection = _$trackCollectionModelTypeEnum_trackCollection;

  static Serializer<TrackCollectionModelTypeEnum> get serializer => _$trackCollectionModelTypeEnumSerializer;

  const TrackCollectionModelTypeEnum._(String name): super(name);

  static BuiltSet<TrackCollectionModelTypeEnum> get values => _$trackCollectionModelTypeEnumValues;
  static TrackCollectionModelTypeEnum valueOf(String name) => _$trackCollectionModelTypeEnumValueOf(name);
}

