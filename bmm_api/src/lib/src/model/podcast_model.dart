//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'podcast_model.g.dart';

/// PodcastModel
///
/// Properties:
/// * [cover] 
/// * [id] 
/// * [type] 
/// * [languages] 
/// * [language] 
/// * [title] 
@BuiltValue()
abstract class PodcastModel implements Built<PodcastModel, PodcastModelBuilder> {
  @BuiltValueField(wireName: r'cover')
  String? get cover;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  PodcastModelTypeEnum get type;
  // enum typeEnum {  podcast,  };

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageEnum>? get languages;

  @BuiltValueField(wireName: r'language')
  LanguageEnum? get language;
  // enum languageEnum {  af,  bg,  cs,  de,  en,  el,  et,  es,  fi,  fr,  hr,  hu,  it,  nb,  nl,  pl,  pt,  ro,  ru,  tr,  zh,  sl,  he,  ta,  ml,  yue,  kha,  zxx,  ar,  be,  da,  hi,  id,  mn,  no,  sa,  sr,  sv,  uk,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  PodcastModel._();

  factory PodcastModel([void updates(PodcastModelBuilder b)]) = _$PodcastModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PodcastModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PodcastModel> get serializer => _$PodcastModelSerializer();
}

class _$PodcastModelSerializer implements PrimitiveSerializer<PodcastModel> {
  @override
  final Iterable<Type> types = const [PodcastModel, _$PodcastModel];

  @override
  final String wireName = r'PodcastModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PodcastModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cover != null) {
      yield r'cover';
      yield serializers.serialize(
        object.cover,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PodcastModelTypeEnum),
    );
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(LanguageEnum),
      );
    }
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
    PodcastModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PodcastModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cover':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cover = valueDes;
          break;
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
            specifiedType: const FullType(PodcastModelTypeEnum),
          ) as PodcastModelTypeEnum;
          result.type = valueDes;
          break;
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
          ) as BuiltList<LanguageEnum>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LanguageEnum),
          ) as LanguageEnum;
          result.language = valueDes;
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
  PodcastModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PodcastModelBuilder();
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

class PodcastModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'podcast')
  static const PodcastModelTypeEnum podcast = _$podcastModelTypeEnum_podcast;

  static Serializer<PodcastModelTypeEnum> get serializer => _$podcastModelTypeEnumSerializer;

  const PodcastModelTypeEnum._(String name): super(name);

  static BuiltSet<PodcastModelTypeEnum> get values => _$podcastModelTypeEnumValues;
  static PodcastModelTypeEnum valueOf(String name) => _$podcastModelTypeEnumValueOf(name);
}

