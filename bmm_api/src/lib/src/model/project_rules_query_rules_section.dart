//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_rules_query_rules_section.g.dart';

/// ProjectRulesQueryRulesSection
///
/// Properties:
/// * [title] 
/// * [text] 
@BuiltValue()
abstract class ProjectRulesQueryRulesSection implements Built<ProjectRulesQueryRulesSection, ProjectRulesQueryRulesSectionBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'text')
  String? get text;

  ProjectRulesQueryRulesSection._();

  factory ProjectRulesQueryRulesSection([void updates(ProjectRulesQueryRulesSectionBuilder b)]) = _$ProjectRulesQueryRulesSection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectRulesQueryRulesSectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectRulesQueryRulesSection> get serializer => _$ProjectRulesQueryRulesSectionSerializer();
}

class _$ProjectRulesQueryRulesSectionSerializer implements PrimitiveSerializer<ProjectRulesQueryRulesSection> {
  @override
  final Iterable<Type> types = const [ProjectRulesQueryRulesSection, _$ProjectRulesQueryRulesSection];

  @override
  final String wireName = r'ProjectRulesQueryRulesSection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectRulesQueryRulesSection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectRulesQueryRulesSection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectRulesQueryRulesSectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectRulesQueryRulesSection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectRulesQueryRulesSectionBuilder();
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

