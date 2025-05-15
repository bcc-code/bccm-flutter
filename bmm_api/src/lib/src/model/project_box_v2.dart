//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/achievement_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_box_v2.g.dart';

/// ProjectBoxV2
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
/// * [points] 
/// * [pointsDescription] 
/// * [achievements] 
/// * [rulesLinkTitle] 
@BuiltValue()
abstract class ProjectBoxV2 implements Built<ProjectBoxV2, ProjectBoxV2Builder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  ProjectBoxV2TypeEnum get type;
  // enum typeEnum {  project_box_v2,  };

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

  ProjectBoxV2._();

  factory ProjectBoxV2([void updates(ProjectBoxV2Builder b)]) = _$ProjectBoxV2;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBoxV2Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBoxV2> get serializer => _$ProjectBoxV2Serializer();
}

class _$ProjectBoxV2Serializer implements PrimitiveSerializer<ProjectBoxV2> {
  @override
  final Iterable<Type> types = const [ProjectBoxV2, _$ProjectBoxV2];

  @override
  final String wireName = r'ProjectBoxV2';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBoxV2 object, {
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
      specifiedType: const FullType(ProjectBoxV2TypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBoxV2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBoxV2Builder result,
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
            specifiedType: const FullType(ProjectBoxV2TypeEnum),
          ) as ProjectBoxV2TypeEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBoxV2 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBoxV2Builder();
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

class ProjectBoxV2TypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'project_box_v2')
  static const ProjectBoxV2TypeEnum projectBoxV2 = _$projectBoxV2TypeEnum_projectBoxV2;

  static Serializer<ProjectBoxV2TypeEnum> get serializer => _$projectBoxV2TypeEnumSerializer;

  const ProjectBoxV2TypeEnum._(String name): super(name);

  static BuiltSet<ProjectBoxV2TypeEnum> get values => _$projectBoxV2TypeEnumValues;
  static ProjectBoxV2TypeEnum valueOf(String name) => _$projectBoxV2TypeEnumValueOf(name);
}

