//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:openapi/src/model/i_album_or_track.dart';
import 'package:openapi/src/model/album_model_album_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'album_model.g.dart';

/// AlbumModel
///
/// Properties:
/// * [meta] 
/// * [bmmId] 
/// * [cover] 
/// * [id] 
/// * [languages] 
/// * [parentId] 
/// * [publishedAt] 
/// * [tags] 
/// * [language] 
/// * [title] 
/// * [description] 
/// * [type] 
/// * [children] 
/// * [latestTrackId] 
/// * [latestTrackPosition] 
@BuiltValue()
abstract class AlbumModel implements Built<AlbumModel, AlbumModelBuilder> {
  @BuiltValueField(wireName: r'_meta')
  AlbumModelAlbumMeta? get meta;

  @BuiltValueField(wireName: r'bmm_id')
  String? get bmmId;

  @BuiltValueField(wireName: r'cover')
  String? get cover;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageEnum>? get languages;

  @BuiltValueField(wireName: r'parent_id')
  int? get parentId;

  @BuiltValueField(wireName: r'published_at')
  DateTime? get publishedAt;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'language')
  LanguageEnum? get language;
  // enum languageEnum {  af,  bg,  cs,  de,  en,  el,  et,  es,  fi,  fr,  hr,  hu,  it,  nb,  nl,  pl,  pt,  ro,  ru,  tr,  zh,  sl,  he,  ta,  ml,  yue,  kha,  zxx,  ar,  be,  da,  hi,  id,  mn,  no,  sa,  sr,  sv,  uk,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'type')
  AlbumModelTypeEnum get type;
  // enum typeEnum {  album,  };

  @BuiltValueField(wireName: r'children')
  BuiltList<IAlbumOrTrack>? get children;

  @BuiltValueField(wireName: r'latest_track_id')
  int? get latestTrackId;

  @BuiltValueField(wireName: r'latest_track_position')
  int? get latestTrackPosition;

  AlbumModel._();

  factory AlbumModel([void updates(AlbumModelBuilder b)]) = _$AlbumModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlbumModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlbumModel> get serializer => _$AlbumModelSerializer();
}

class _$AlbumModelSerializer implements PrimitiveSerializer<AlbumModel> {
  @override
  final Iterable<Type> types = const [AlbumModel, _$AlbumModel];

  @override
  final String wireName = r'AlbumModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlbumModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.meta != null) {
      yield r'_meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(AlbumModelAlbumMeta),
      );
    }
    if (object.bmmId != null) {
      yield r'bmm_id';
      yield serializers.serialize(
        object.bmmId,
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
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
      );
    }
    if (object.parentId != null) {
      yield r'parent_id';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.publishedAt != null) {
      yield r'published_at';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AlbumModelTypeEnum),
    );
    if (object.children != null) {
      yield r'children';
      yield serializers.serialize(
        object.children,
        specifiedType: const FullType.nullable(BuiltList, [FullType(IAlbumOrTrack)]),
      );
    }
    if (object.latestTrackId != null) {
      yield r'latest_track_id';
      yield serializers.serialize(
        object.latestTrackId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.latestTrackPosition != null) {
      yield r'latest_track_position';
      yield serializers.serialize(
        object.latestTrackPosition,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlbumModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlbumModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumModelAlbumMeta),
          ) as AlbumModelAlbumMeta;
          result.meta.replace(valueDes);
          break;
        case r'bmm_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bmmId = valueDes;
          break;
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
        case r'languages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
          ) as BuiltList<LanguageEnum>?;
          if (valueDes == null) continue;
          result.languages.replace(valueDes);
          break;
        case r'parent_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.parentId = valueDes;
          break;
        case r'published_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumModelTypeEnum),
          ) as AlbumModelTypeEnum;
          result.type = valueDes;
          break;
        case r'children':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(IAlbumOrTrack)]),
          ) as BuiltList<IAlbumOrTrack>?;
          if (valueDes == null) continue;
          result.children.replace(valueDes);
          break;
        case r'latest_track_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.latestTrackId = valueDes;
          break;
        case r'latest_track_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.latestTrackPosition = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlbumModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlbumModelBuilder();
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

class AlbumModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const AlbumModelTypeEnum album = _$albumModelTypeEnum_album;

  static Serializer<AlbumModelTypeEnum> get serializer => _$albumModelTypeEnumSerializer;

  const AlbumModelTypeEnum._(String name): super(name);

  static BuiltSet<AlbumModelTypeEnum> get values => _$albumModelTypeEnumValues;
  static AlbumModelTypeEnum valueOf(String name) => _$albumModelTypeEnumValueOf(name);
}

