//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:openapi/src/model/api_overview_model_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_overview_model.g.dart';

/// ApiOverviewModel
///
/// Properties:
/// * [name] 
/// * [documentation] 
/// * [systemStatus] 
/// * [languages] 
/// * [updateIndexes] 
/// * [environment] 
@BuiltValue()
abstract class ApiOverviewModel implements Built<ApiOverviewModel, ApiOverviewModelBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'documentation')
  String? get documentation;

  @BuiltValueField(wireName: r'system_status')
  ApiOverviewModelStatus? get systemStatus;

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageEnum>? get languages;

  @BuiltValueField(wireName: r'update_indexes')
  bool? get updateIndexes;

  @BuiltValueField(wireName: r'environment')
  String? get environment;

  ApiOverviewModel._();

  factory ApiOverviewModel([void updates(ApiOverviewModelBuilder b)]) = _$ApiOverviewModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiOverviewModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiOverviewModel> get serializer => _$ApiOverviewModelSerializer();
}

class _$ApiOverviewModelSerializer implements PrimitiveSerializer<ApiOverviewModel> {
  @override
  final Iterable<Type> types = const [ApiOverviewModel, _$ApiOverviewModel];

  @override
  final String wireName = r'ApiOverviewModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiOverviewModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.documentation != null) {
      yield r'documentation';
      yield serializers.serialize(
        object.documentation,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.systemStatus != null) {
      yield r'system_status';
      yield serializers.serialize(
        object.systemStatus,
        specifiedType: const FullType(ApiOverviewModelStatus),
      );
    }
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
      );
    }
    if (object.updateIndexes != null) {
      yield r'update_indexes';
      yield serializers.serialize(
        object.updateIndexes,
        specifiedType: const FullType(bool),
      );
    }
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiOverviewModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiOverviewModelBuilder result,
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
        case r'documentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentation = valueDes;
          break;
        case r'system_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiOverviewModelStatus),
          ) as ApiOverviewModelStatus;
          result.systemStatus.replace(valueDes);
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
          ) as BuiltList<LanguageEnum>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'update_indexes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.updateIndexes = valueDes;
          break;
        case r'environment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiOverviewModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiOverviewModelBuilder();
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

