//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chapter_header.g.dart';

/// ChapterHeader
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
@BuiltValue()
abstract class ChapterHeader implements Built<ChapterHeader, ChapterHeaderBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  ChapterHeaderTypeEnum get type;
  // enum typeEnum {  chapter_header,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  ChapterHeader._();

  factory ChapterHeader([void updates(ChapterHeaderBuilder b)]) = _$ChapterHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChapterHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChapterHeader> get serializer => _$ChapterHeaderSerializer();
}

class _$ChapterHeaderSerializer implements PrimitiveSerializer<ChapterHeader> {
  @override
  final Iterable<Type> types = const [ChapterHeader, _$ChapterHeader];

  @override
  final String wireName = r'ChapterHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChapterHeader object, {
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
      specifiedType: const FullType(ChapterHeaderTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChapterHeaderBuilder result,
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
            specifiedType: const FullType(ChapterHeaderTypeEnum),
          ) as ChapterHeaderTypeEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChapterHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChapterHeaderBuilder();
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

class ChapterHeaderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'chapter_header')
  static const ChapterHeaderTypeEnum chapterHeader = _$chapterHeaderTypeEnum_chapterHeader;

  static Serializer<ChapterHeaderTypeEnum> get serializer => _$chapterHeaderTypeEnumSerializer;

  const ChapterHeaderTypeEnum._(String name): super(name);

  static BuiltSet<ChapterHeaderTypeEnum> get values => _$chapterHeaderTypeEnumValues;
  static ChapterHeaderTypeEnum valueOf(String name) => _$chapterHeaderTypeEnumValueOf(name);
}

