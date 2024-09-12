//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/achievement_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'achievement_collection.g.dart';

/// AchievementCollection
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [list] 
@BuiltValue()
abstract class AchievementCollection implements Built<AchievementCollection, AchievementCollectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  AchievementCollectionTypeEnum get type;
  // enum typeEnum {  achievement_collection,  };

  @BuiltValueField(wireName: r'list')
  BuiltList<AchievementModel>? get list;

  AchievementCollection._();

  factory AchievementCollection([void updates(AchievementCollectionBuilder b)]) = _$AchievementCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AchievementCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AchievementCollection> get serializer => _$AchievementCollectionSerializer();
}

class _$AchievementCollectionSerializer implements PrimitiveSerializer<AchievementCollection> {
  @override
  final Iterable<Type> types = const [AchievementCollection, _$AchievementCollection];

  @override
  final String wireName = r'AchievementCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AchievementCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AchievementCollectionTypeEnum),
    );
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType.nullable(BuiltList, [FullType(AchievementModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AchievementCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AchievementCollectionBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AchievementCollectionTypeEnum),
          ) as AchievementCollectionTypeEnum;
          result.type = valueDes;
          break;
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AchievementModel)]),
          ) as BuiltList<AchievementModel>?;
          if (valueDes == null) continue;
          result.list.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AchievementCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AchievementCollectionBuilder();
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

class AchievementCollectionTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'achievement_collection')
  static const AchievementCollectionTypeEnum achievementCollection = _$achievementCollectionTypeEnum_achievementCollection;

  static Serializer<AchievementCollectionTypeEnum> get serializer => _$achievementCollectionTypeEnumSerializer;

  const AchievementCollectionTypeEnum._(String name): super(name);

  static BuiltSet<AchievementCollectionTypeEnum> get values => _$achievementCollectionTypeEnumValues;
  static AchievementCollectionTypeEnum valueOf(String name) => _$achievementCollectionTypeEnumValueOf(name);
}

