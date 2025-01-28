//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/achievement_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hvhe_project_box.g.dart';

/// HvheProjectBox
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
/// * [points] 
/// * [pointsDescription] 
/// * [achievements] 
/// * [rulesLinkTitle] 
/// * [boysPoints] 
/// * [girlsPoints] 
@BuiltValue()
abstract class HvheProjectBox implements Built<HvheProjectBox, HvheProjectBoxBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  HvheProjectBoxTypeEnum get type;
  // enum typeEnum {  hvhe_project_box,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'points')
  int? get points;

  @BuiltValueField(wireName: r'points_description')
  String? get pointsDescription;

  @BuiltValueField(wireName: r'achievements')
  BuiltList<AchievementModel>? get achievements;

  @BuiltValueField(wireName: r'rules_link_title')
  String? get rulesLinkTitle;

  @BuiltValueField(wireName: r'boys_points')
  int? get boysPoints;

  @BuiltValueField(wireName: r'girls_points')
  int? get girlsPoints;

  HvheProjectBox._();

  factory HvheProjectBox([void updates(HvheProjectBoxBuilder b)]) = _$HvheProjectBox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HvheProjectBoxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HvheProjectBox> get serializer => _$HvheProjectBoxSerializer();
}

class _$HvheProjectBoxSerializer implements PrimitiveSerializer<HvheProjectBox> {
  @override
  final Iterable<Type> types = const [HvheProjectBox, _$HvheProjectBox];

  @override
  final String wireName = r'HvheProjectBox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HvheProjectBox object, {
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
      specifiedType: const FullType(HvheProjectBoxTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.points != null) {
      yield r'points';
      yield serializers.serialize(
        object.points,
        specifiedType: const FullType(int),
      );
    }
    if (object.pointsDescription != null) {
      yield r'points_description';
      yield serializers.serialize(
        object.pointsDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.achievements != null) {
      yield r'achievements';
      yield serializers.serialize(
        object.achievements,
        specifiedType: const FullType.nullable(BuiltList, [FullType(AchievementModel)]),
      );
    }
    if (object.rulesLinkTitle != null) {
      yield r'rules_link_title';
      yield serializers.serialize(
        object.rulesLinkTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.boysPoints != null) {
      yield r'boys_points';
      yield serializers.serialize(
        object.boysPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.girlsPoints != null) {
      yield r'girls_points';
      yield serializers.serialize(
        object.girlsPoints,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HvheProjectBox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HvheProjectBoxBuilder result,
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
            specifiedType: const FullType(HvheProjectBoxTypeEnum),
          ) as HvheProjectBoxTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.points = valueDes;
          break;
        case r'points_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pointsDescription = valueDes;
          break;
        case r'achievements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AchievementModel)]),
          ) as BuiltList<AchievementModel>?;
          if (valueDes == null) continue;
          result.achievements.replace(valueDes);
          break;
        case r'rules_link_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rulesLinkTitle = valueDes;
          break;
        case r'boys_points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.boysPoints = valueDes;
          break;
        case r'girls_points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.girlsPoints = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HvheProjectBox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HvheProjectBoxBuilder();
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

class HvheProjectBoxTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hvhe_project_box')
  static const HvheProjectBoxTypeEnum hvheProjectBox = _$hvheProjectBoxTypeEnum_hvheProjectBox;

  static Serializer<HvheProjectBoxTypeEnum> get serializer => _$hvheProjectBoxTypeEnumSerializer;

  const HvheProjectBoxTypeEnum._(String name): super(name);

  static BuiltSet<HvheProjectBoxTypeEnum> get values => _$hvheProjectBoxTypeEnumValues;
  static HvheProjectBoxTypeEnum valueOf(String name) => _$hvheProjectBoxTypeEnumValueOf(name);
}

