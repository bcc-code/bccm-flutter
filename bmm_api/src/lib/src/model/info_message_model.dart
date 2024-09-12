//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'info_message_model.g.dart';

/// InfoMessageModel
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [translatedMessage] 
/// * [messageText] 
/// * [link] 
@BuiltValue()
abstract class InfoMessageModel implements Built<InfoMessageModel, InfoMessageModelBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  InfoMessageModelTypeEnum get type;
  // enum typeEnum {  InfoMessage,  };

  @BuiltValueField(wireName: r'translated_message')
  String? get translatedMessage;

  @BuiltValueField(wireName: r'message_text')
  String? get messageText;

  @BuiltValueField(wireName: r'link')
  String? get link;

  InfoMessageModel._();

  factory InfoMessageModel([void updates(InfoMessageModelBuilder b)]) = _$InfoMessageModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfoMessageModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfoMessageModel> get serializer => _$InfoMessageModelSerializer();
}

class _$InfoMessageModelSerializer implements PrimitiveSerializer<InfoMessageModel> {
  @override
  final Iterable<Type> types = const [InfoMessageModel, _$InfoMessageModel];

  @override
  final String wireName = r'InfoMessageModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfoMessageModel object, {
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
      specifiedType: const FullType(InfoMessageModelTypeEnum),
    );
    if (object.translatedMessage != null) {
      yield r'translated_message';
      yield serializers.serialize(
        object.translatedMessage,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.messageText != null) {
      yield r'message_text';
      yield serializers.serialize(
        object.messageText,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    InfoMessageModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InfoMessageModelBuilder result,
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
            specifiedType: const FullType(InfoMessageModelTypeEnum),
          ) as InfoMessageModelTypeEnum;
          result.type = valueDes;
          break;
        case r'translated_message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.translatedMessage = valueDes;
          break;
        case r'message_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.messageText = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.link = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfoMessageModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfoMessageModelBuilder();
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

class InfoMessageModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'InfoMessage')
  static const InfoMessageModelTypeEnum infoMessage = _$infoMessageModelTypeEnum_infoMessage;

  static Serializer<InfoMessageModelTypeEnum> get serializer => _$infoMessageModelTypeEnumSerializer;

  const InfoMessageModelTypeEnum._(String name): super(name);

  static BuiltSet<InfoMessageModelTypeEnum> get values => _$infoMessageModelTypeEnumValues;
  static InfoMessageModelTypeEnum valueOf(String name) => _$infoMessageModelTypeEnumValueOf(name);
}

