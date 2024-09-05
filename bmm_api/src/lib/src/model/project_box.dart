//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/achievement_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_box.g.dart';

/// ProjectBox
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
/// * [showIcon] 
/// * [openByDefault] 
/// * [points] 
/// * [pointsDescription] 
/// * [buttonTitle] 
/// * [buttonWebsite] 
/// * [buttonShowIcon] 
/// * [achievements] 
/// * [rulesLinkTitle] 
/// * [iconColor] 
@BuiltValue()
abstract class ProjectBox implements Built<ProjectBox, ProjectBoxBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  ProjectBoxTypeEnum get type;
  // enum typeEnum {  project_box,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'show_icon')
  bool? get showIcon;

  @BuiltValueField(wireName: r'open_by_default')
  bool? get openByDefault;

  @BuiltValueField(wireName: r'points')
  int? get points;

  @BuiltValueField(wireName: r'points_description')
  String? get pointsDescription;

  @BuiltValueField(wireName: r'button_title')
  String? get buttonTitle;

  @BuiltValueField(wireName: r'button_website')
  String? get buttonWebsite;

  @BuiltValueField(wireName: r'button_show_icon')
  bool? get buttonShowIcon;

  @BuiltValueField(wireName: r'achievements')
  BuiltList<AchievementModel>? get achievements;

  @BuiltValueField(wireName: r'rules_link_title')
  String? get rulesLinkTitle;

  @BuiltValueField(wireName: r'icon_color')
  String? get iconColor;

  ProjectBox._();

  factory ProjectBox([void updates(ProjectBoxBuilder b)]) = _$ProjectBox;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectBoxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectBox> get serializer => _$ProjectBoxSerializer();
}

class _$ProjectBoxSerializer implements PrimitiveSerializer<ProjectBox> {
  @override
  final Iterable<Type> types = const [ProjectBox, _$ProjectBox];

  @override
  final String wireName = r'ProjectBox';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectBox object, {
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
      specifiedType: const FullType(ProjectBoxTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.showIcon != null) {
      yield r'show_icon';
      yield serializers.serialize(
        object.showIcon,
        specifiedType: const FullType(bool),
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
    if (object.buttonTitle != null) {
      yield r'button_title';
      yield serializers.serialize(
        object.buttonTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buttonWebsite != null) {
      yield r'button_website';
      yield serializers.serialize(
        object.buttonWebsite,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buttonShowIcon != null) {
      yield r'button_show_icon';
      yield serializers.serialize(
        object.buttonShowIcon,
        specifiedType: const FullType(bool),
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
    if (object.iconColor != null) {
      yield r'icon_color';
      yield serializers.serialize(
        object.iconColor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectBox object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectBoxBuilder result,
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
            specifiedType: const FullType(ProjectBoxTypeEnum),
          ) as ProjectBoxTypeEnum;
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
        case r'show_icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showIcon = valueDes;
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
        case r'button_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buttonTitle = valueDes;
          break;
        case r'button_website':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buttonWebsite = valueDes;
          break;
        case r'button_show_icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.buttonShowIcon = valueDes;
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
        case r'icon_color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iconColor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectBox deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectBoxBuilder();
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

class ProjectBoxTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'project_box')
  static const ProjectBoxTypeEnum projectBox = _$projectBoxTypeEnum_projectBox;

  static Serializer<ProjectBoxTypeEnum> get serializer => _$projectBoxTypeEnumSerializer;

  const ProjectBoxTypeEnum._(String name): super(name);

  static BuiltSet<ProjectBoxTypeEnum> get values => _$projectBoxTypeEnumValues;
  static ProjectBoxTypeEnum valueOf(String name) => _$projectBoxTypeEnumValueOf(name);
}

