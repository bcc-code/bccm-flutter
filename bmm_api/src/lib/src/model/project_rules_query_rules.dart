//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/project_rules_query_rules_section.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_rules_query_rules.g.dart';

/// ProjectRulesQueryRules
///
/// Properties:
/// * [pageTitle] 
/// * [sections] 
@BuiltValue()
abstract class ProjectRulesQueryRules implements Built<ProjectRulesQueryRules, ProjectRulesQueryRulesBuilder> {
  @BuiltValueField(wireName: r'page_title')
  String? get pageTitle;

  @BuiltValueField(wireName: r'sections')
  BuiltList<ProjectRulesQueryRulesSection>? get sections;

  ProjectRulesQueryRules._();

  factory ProjectRulesQueryRules([void updates(ProjectRulesQueryRulesBuilder b)]) = _$ProjectRulesQueryRules;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectRulesQueryRulesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectRulesQueryRules> get serializer => _$ProjectRulesQueryRulesSerializer();
}

class _$ProjectRulesQueryRulesSerializer implements PrimitiveSerializer<ProjectRulesQueryRules> {
  @override
  final Iterable<Type> types = const [ProjectRulesQueryRules, _$ProjectRulesQueryRules];

  @override
  final String wireName = r'ProjectRulesQueryRules';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectRulesQueryRules object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pageTitle != null) {
      yield r'page_title';
      yield serializers.serialize(
        object.pageTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sections != null) {
      yield r'sections';
      yield serializers.serialize(
        object.sections,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProjectRulesQueryRulesSection)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectRulesQueryRules object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectRulesQueryRulesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'page_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pageTitle = valueDes;
          break;
        case r'sections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProjectRulesQueryRulesSection)]),
          ) as BuiltList<ProjectRulesQueryRulesSection>?;
          if (valueDes == null) continue;
          result.sections.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectRulesQueryRules deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectRulesQueryRulesBuilder();
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

