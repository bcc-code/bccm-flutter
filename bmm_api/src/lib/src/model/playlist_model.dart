//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_model.g.dart';

/// PlaylistModel
///
/// Properties:
/// * [cover] 
/// * [id] 
/// * [type] 
/// * [languages] 
/// * [language] 
/// * [title] 
@BuiltValue()
abstract class PlaylistModel implements Built<PlaylistModel, PlaylistModelBuilder> {
  @BuiltValueField(wireName: r'cover')
  String? get cover;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  PlaylistModelTypeEnum get type;
  // enum typeEnum {  playlist,  };

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageEnum>? get languages;

  @BuiltValueField(wireName: r'language')
  LanguageEnum? get language;
  // enum languageEnum {  af,  bg,  cs,  de,  en,  el,  et,  es,  fi,  fr,  hr,  hu,  it,  nb,  nl,  pl,  pt,  ro,  ru,  tr,  zh,  sl,  he,  ta,  ml,  yue,  kha,  zxx,  ar,  be,  da,  hi,  id,  mn,  no,  sa,  sr,  sv,  uk,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  PlaylistModel._();

  factory PlaylistModel([void updates(PlaylistModelBuilder b)]) = _$PlaylistModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaylistModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaylistModel> get serializer => _$PlaylistModelSerializer();
}

class _$PlaylistModelSerializer implements PrimitiveSerializer<PlaylistModel> {
  @override
  final Iterable<Type> types = const [PlaylistModel, _$PlaylistModel];

  @override
  final String wireName = r'PlaylistModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaylistModel object, {
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
      specifiedType: const FullType(PlaylistModelTypeEnum),
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
    PlaylistModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlaylistModelBuilder result,
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
            specifiedType: const FullType(PlaylistModelTypeEnum),
          ) as PlaylistModelTypeEnum;
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
  PlaylistModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaylistModelBuilder();
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

class PlaylistModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'playlist')
  static const PlaylistModelTypeEnum playlist = _$playlistModelTypeEnum_playlist;

  static Serializer<PlaylistModelTypeEnum> get serializer => _$playlistModelTypeEnumSerializer;

  const PlaylistModelTypeEnum._(String name): super(name);

  static BuiltSet<PlaylistModelTypeEnum> get values => _$playlistModelTypeEnumValues;
  static PlaylistModelTypeEnum valueOf(String name) => _$playlistModelTypeEnumValueOf(name);
}

