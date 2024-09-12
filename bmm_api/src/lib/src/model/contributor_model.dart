//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/contributor_contributor_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contributor_model.g.dart';

/// ContributorModel
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [isVisible] 
/// * [name] 
/// * [cover] 
/// * [meta] 
/// * [interpretReferences] 
/// * [otherReferences] 
@BuiltValue()
abstract class ContributorModel implements Built<ContributorModel, ContributorModelBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  ContributorModelTypeEnum get type;
  // enum typeEnum {  contributor,  };

  @BuiltValueField(wireName: r'is_visible')
  bool? get isVisible;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'cover')
  String? get cover;

  @BuiltValueField(wireName: r'meta')
  ContributorContributorMeta? get meta;

  @BuiltValueField(wireName: r'interpret_references')
  int? get interpretReferences;

  @BuiltValueField(wireName: r'other_references')
  int? get otherReferences;

  ContributorModel._();

  factory ContributorModel([void updates(ContributorModelBuilder b)]) = _$ContributorModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContributorModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContributorModel> get serializer => _$ContributorModelSerializer();
}

class _$ContributorModelSerializer implements PrimitiveSerializer<ContributorModel> {
  @override
  final Iterable<Type> types = const [ContributorModel, _$ContributorModel];

  @override
  final String wireName = r'ContributorModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContributorModel object, {
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
      specifiedType: const FullType(ContributorModelTypeEnum),
    );
    if (object.isVisible != null) {
      yield r'is_visible';
      yield serializers.serialize(
        object.isVisible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cover != null) {
      yield r'cover';
      yield serializers.serialize(
        object.cover,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(ContributorContributorMeta),
      );
    }
    if (object.interpretReferences != null) {
      yield r'interpret_references';
      yield serializers.serialize(
        object.interpretReferences,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.otherReferences != null) {
      yield r'other_references';
      yield serializers.serialize(
        object.otherReferences,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContributorModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContributorModelBuilder result,
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
            specifiedType: const FullType(ContributorModelTypeEnum),
          ) as ContributorModelTypeEnum;
          result.type = valueDes;
          break;
        case r'is_visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVisible = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'cover':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cover = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContributorContributorMeta),
          ) as ContributorContributorMeta;
          result.meta.replace(valueDes);
          break;
        case r'interpret_references':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.interpretReferences = valueDes;
          break;
        case r'other_references':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.otherReferences = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContributorModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContributorModelBuilder();
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

class ContributorModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'contributor')
  static const ContributorModelTypeEnum contributor = _$contributorModelTypeEnum_contributor;

  static Serializer<ContributorModelTypeEnum> get serializer => _$contributorModelTypeEnumSerializer;

  const ContributorModelTypeEnum._(String name): super(name);

  static BuiltSet<ContributorModelTypeEnum> get values => _$contributorModelTypeEnumValues;
  static ContributorModelTypeEnum valueOf(String name) => _$contributorModelTypeEnumValueOf(name);
}

