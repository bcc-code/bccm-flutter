//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'section_header_model.g.dart';

/// SectionHeaderModel
///
/// Properties:
/// * [title] 
/// * [link] 
/// * [id] 
/// * [useCoverCarousel] 
/// * [type] 
@BuiltValue()
abstract class SectionHeaderModel implements Built<SectionHeaderModel, SectionHeaderModelBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'use_cover_carousel')
  bool? get useCoverCarousel;

  @BuiltValueField(wireName: r'type')
  SectionHeaderModelTypeEnum get type;
  // enum typeEnum {  section_header,  };

  SectionHeaderModel._();

  factory SectionHeaderModel([void updates(SectionHeaderModelBuilder b)]) = _$SectionHeaderModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SectionHeaderModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SectionHeaderModel> get serializer => _$SectionHeaderModelSerializer();
}

class _$SectionHeaderModelSerializer implements PrimitiveSerializer<SectionHeaderModel> {
  @override
  final Iterable<Type> types = const [SectionHeaderModel, _$SectionHeaderModel];

  @override
  final String wireName = r'SectionHeaderModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SectionHeaderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.useCoverCarousel != null) {
      yield r'use_cover_carousel';
      yield serializers.serialize(
        object.useCoverCarousel,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SectionHeaderModelTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SectionHeaderModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SectionHeaderModelBuilder result,
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
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'use_cover_carousel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useCoverCarousel = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SectionHeaderModelTypeEnum),
          ) as SectionHeaderModelTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SectionHeaderModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SectionHeaderModelBuilder();
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

class SectionHeaderModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'section_header')
  static const SectionHeaderModelTypeEnum sectionHeader = _$sectionHeaderModelTypeEnum_sectionHeader;

  static Serializer<SectionHeaderModelTypeEnum> get serializer => _$sectionHeaderModelTypeEnumSerializer;

  const SectionHeaderModelTypeEnum._(String name): super(name);

  static BuiltSet<SectionHeaderModelTypeEnum> get values => _$sectionHeaderModelTypeEnumValues;
  static SectionHeaderModelTypeEnum valueOf(String name) => _$sectionHeaderModelTypeEnumValueOf(name);
}

