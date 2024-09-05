//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_message_model.g.dart';

/// TileMessageModel
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [header] 
/// * [title] 
/// * [subtitle] 
/// * [buttonText] 
/// * [buttonUrl] 
@BuiltValue()
abstract class TileMessageModel implements Built<TileMessageModel, TileMessageModelBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  TileMessageModelTypeEnum get type;
  // enum typeEnum {  tile_message,  };

  @BuiltValueField(wireName: r'header')
  String? get header;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'button_text')
  String? get buttonText;

  @BuiltValueField(wireName: r'button_url')
  String? get buttonUrl;

  TileMessageModel._();

  factory TileMessageModel([void updates(TileMessageModelBuilder b)]) = _$TileMessageModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileMessageModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileMessageModel> get serializer => _$TileMessageModelSerializer();
}

class _$TileMessageModelSerializer implements PrimitiveSerializer<TileMessageModel> {
  @override
  final Iterable<Type> types = const [TileMessageModel, _$TileMessageModel];

  @override
  final String wireName = r'TileMessageModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileMessageModel object, {
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
      specifiedType: const FullType(TileMessageModelTypeEnum),
    );
    if (object.header != null) {
      yield r'header';
      yield serializers.serialize(
        object.header,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buttonText != null) {
      yield r'button_text';
      yield serializers.serialize(
        object.buttonText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buttonUrl != null) {
      yield r'button_url';
      yield serializers.serialize(
        object.buttonUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TileMessageModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TileMessageModelBuilder result,
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
            specifiedType: const FullType(TileMessageModelTypeEnum),
          ) as TileMessageModelTypeEnum;
          result.type = valueDes;
          break;
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.header = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'button_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buttonText = valueDes;
          break;
        case r'button_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buttonUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileMessageModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileMessageModelBuilder();
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

class TileMessageModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'tile_message')
  static const TileMessageModelTypeEnum tileMessage = _$tileMessageModelTypeEnum_tileMessage;

  static Serializer<TileMessageModelTypeEnum> get serializer => _$tileMessageModelTypeEnumSerializer;

  const TileMessageModelTypeEnum._(String name): super(name);

  static BuiltSet<TileMessageModelTypeEnum> get values => _$tileMessageModelTypeEnumValues;
  static TileMessageModelTypeEnum valueOf(String name) => _$tileMessageModelTypeEnumValueOf(name);
}

