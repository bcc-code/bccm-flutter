//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/achievement_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gibraltar_project_box.g.dart';

/// GibraltarProjectBox
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
/// * [openByDefault] 
/// * [points] 
/// * [pointsDescription] 
/// * [achievements] 
/// * [rulesLinkTitle] 
@BuiltValue()
abstract class GibraltarProjectBox implements Built<GibraltarProjectBox, GibraltarProjectBoxBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  GibraltarProjectBoxTypeEnum get type;
  // enum typeEnum {  gibraltar_project_box,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'open_by_default')
  bool? get openByDefault;

  @BuiltValueField(wireName: r'points')
  int? get points;

  @BuiltValueField(wireName: r'points_description')
  String? get pointsDescription;

  @BuiltValueField(wireName: r'achievements')
  BuiltList<AchievementModel>? get achievements;

  @BuiltValueField(wireName: r'rules_link_title')
  String? get rulesLinkTitle;

  GibraltarProjectBox._();

  factory GibraltarProjectBox([void updates(GibraltarProjectBoxBuilder b)]) = _$GibraltarProjectBox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GibraltarProjectBoxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GibraltarProjectBox> get serializer => _$GibraltarProjectBoxSerializer();
}

class _$GibraltarProjectBoxSerializer implements PrimitiveSerializer<GibraltarProjectBox> {
  @override
  final Iterable<Type> types = const [GibraltarProjectBox, _$GibraltarProjectBox];

  @override
  final String wireName = r'GibraltarProjectBox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GibraltarProjectBox object, {
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
      specifiedType: const FullType(GibraltarProjectBoxTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.openByDefault != null) {
      yield r'open_by_default';
      yield serializers.serialize(
        object.openByDefault,
        specifiedType: const FullType(bool),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    GibraltarProjectBox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GibraltarProjectBoxBuilder result,
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
            specifiedType: const FullType(GibraltarProjectBoxTypeEnum),
          ) as GibraltarProjectBoxTypeEnum;
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
        case r'open_by_default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.openByDefault = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GibraltarProjectBox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GibraltarProjectBoxBuilder();
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

class GibraltarProjectBoxTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'gibraltar_project_box')
  static const GibraltarProjectBoxTypeEnum gibraltarProjectBox = _$gibraltarProjectBoxTypeEnum_gibraltarProjectBox;

  static Serializer<GibraltarProjectBoxTypeEnum> get serializer => _$gibraltarProjectBoxTypeEnumSerializer;

  const GibraltarProjectBoxTypeEnum._(String name): super(name);

  static BuiltSet<GibraltarProjectBoxTypeEnum> get values => _$gibraltarProjectBoxTypeEnumValues;
  static GibraltarProjectBoxTypeEnum valueOf(String name) => _$gibraltarProjectBoxTypeEnumValueOf(name);
}

