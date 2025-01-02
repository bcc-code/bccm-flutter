//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/track_model_bible_relation.dart';
import 'package:bmm_api/src/model/track_subtype.dart';
import 'package:bmm_api/src/model/track_model_relation.dart';
import 'package:bmm_api/src/model/track_model_songbook_relation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/track_model_medium.dart';
import 'package:bmm_api/src/model/language_enum.dart';
import 'package:bmm_api/src/model/track_model_contributor_relation.dart';
import 'package:bmm_api/src/model/track_model_track_meta.dart';
import 'package:bmm_api/src/model/track_model_external_relation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model.g.dart';

/// TrackModel
///
/// Properties:
/// * [comment] 
/// * [cover] 
/// * [id] 
/// * [isVisible] 
/// * [order] 
/// * [parentId] 
/// * [publishedAt] 
/// * [recordedAt] 
/// * [rel] 
/// * [bibleRelations] 
/// * [externalRelations] 
/// * [contributors] 
/// * [songbookRelations] 
/// * [subtype] 
/// * [tags] 
/// * [meta] 
/// * [type] 
/// * [languages] 
/// * [language] 
/// * [title] 
/// * [publisher] 
/// * [copyright] 
/// * [media] 
/// * [hasListened] 
/// * [hasTranscription] 
/// * [isLiked] 
@BuiltValue()
abstract class TrackModel implements Built<TrackModel, TrackModelBuilder> {
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'cover')
  String? get cover;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'is_visible')
  bool? get isVisible;

  @BuiltValueField(wireName: r'order')
  int? get order;

  @BuiltValueField(wireName: r'parent_id')
  int get parentId;

  @BuiltValueField(wireName: r'published_at')
  DateTime get publishedAt;

  @BuiltValueField(wireName: r'recorded_at')
  DateTime get recordedAt;

  @BuiltValueField(wireName: r'rel')
  BuiltList<TrackModelRelation>? get rel;

  @BuiltValueField(wireName: r'bible_relations')
  BuiltList<TrackModelBibleRelation>? get bibleRelations;

  @BuiltValueField(wireName: r'external_relations')
  BuiltList<TrackModelExternalRelation>? get externalRelations;

  @BuiltValueField(wireName: r'contributors')
  BuiltList<TrackModelContributorRelation>? get contributors;

  @BuiltValueField(wireName: r'songbook_relations')
  BuiltList<TrackModelSongbookRelation>? get songbookRelations;

  @BuiltValueField(wireName: r'subtype')
  TrackSubtype get subtype;
  // enum subtypeEnum {  song,  speech,  audiobook,  singsong,  exegesis,  video,  live,  };

  @BuiltValueField(wireName: r'tags')
  BuiltList<String> get tags;

  @BuiltValueField(wireName: r'_meta')
  TrackModelTrackMeta get meta;

  @BuiltValueField(wireName: r'type')
  TrackModelTypeEnum get type;
  // enum typeEnum {  track,  };

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageEnum>? get languages;

  @BuiltValueField(wireName: r'language')
  LanguageEnum get language;
  // enum languageEnum {  af,  bg,  cs,  de,  en,  el,  et,  es,  fi,  fr,  hr,  hu,  it,  nb,  nl,  pl,  pt,  ro,  ru,  tr,  zh,  sl,  he,  ta,  ml,  yue,  kha,  zxx,  ar,  be,  da,  hi,  id,  mn,  no,  sa,  sr,  sv,  uk,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'publisher')
  String? get publisher;

  @BuiltValueField(wireName: r'copyright')
  String? get copyright;

  @BuiltValueField(wireName: r'media')
  BuiltList<TrackModelMedium>? get media;

  @BuiltValueField(wireName: r'has_listened')
  bool? get hasListened;

  @BuiltValueField(wireName: r'has_transcription')
  bool? get hasTranscription;

  @BuiltValueField(wireName: r'is_liked')
  bool? get isLiked;

  TrackModel._();

  factory TrackModel([void updates(TrackModelBuilder b)]) = _$TrackModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModel> get serializer => _$TrackModelSerializer();
}

class _$TrackModelSerializer implements PrimitiveSerializer<TrackModel> {
  @override
  final Iterable<Type> types = const [TrackModel, _$TrackModel];

  @override
  final String wireName = r'TrackModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
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
    if (object.isVisible != null) {
      yield r'is_visible';
      yield serializers.serialize(
        object.isVisible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(int),
      );
    }
    yield r'parent_id';
    yield serializers.serialize(
      object.parentId,
      specifiedType: const FullType(int),
    );
    yield r'published_at';
    yield serializers.serialize(
      object.publishedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'recorded_at';
    yield serializers.serialize(
      object.recordedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.rel != null) {
      yield r'rel';
      yield serializers.serialize(
        object.rel,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelRelation)]),
      );
    }
    if (object.bibleRelations != null) {
      yield r'bible_relations';
      yield serializers.serialize(
        object.bibleRelations,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelBibleRelation)]),
      );
    }
    if (object.externalRelations != null) {
      yield r'external_relations';
      yield serializers.serialize(
        object.externalRelations,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelExternalRelation)]),
      );
    }
    if (object.contributors != null) {
      yield r'contributors';
      yield serializers.serialize(
        object.contributors,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelContributorRelation)]),
      );
    }
    if (object.songbookRelations != null) {
      yield r'songbook_relations';
      yield serializers.serialize(
        object.songbookRelations,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelSongbookRelation)]),
      );
    }
    yield r'subtype';
    yield serializers.serialize(
      object.subtype,
      specifiedType: const FullType(TrackSubtype),
    );
    yield r'tags';
    yield serializers.serialize(
      object.tags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'_meta';
    yield serializers.serialize(
      object.meta,
      specifiedType: const FullType(TrackModelTrackMeta),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TrackModelTypeEnum),
    );
    if (object.languages != null) {
      yield r'languages';
      yield serializers.serialize(
        object.languages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(LanguageEnum)]),
      );
    }
    yield r'language';
    yield serializers.serialize(
      object.language,
      specifiedType: const FullType(LanguageEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publisher != null) {
      yield r'publisher';
      yield serializers.serialize(
        object.publisher,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.copyright != null) {
      yield r'copyright';
      yield serializers.serialize(
        object.copyright,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelMedium)]),
      );
    }
    if (object.hasListened != null) {
      yield r'has_listened';
      yield serializers.serialize(
        object.hasListened,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasTranscription != null) {
      yield r'has_transcription';
      yield serializers.serialize(
        object.hasTranscription,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isLiked != null) {
      yield r'is_liked';
      yield serializers.serialize(
        object.isLiked,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
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
        case r'is_visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVisible = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.order = valueDes;
          break;
        case r'parent_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.parentId = valueDes;
          break;
        case r'published_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'recorded_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.recordedAt = valueDes;
          break;
        case r'rel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelRelation)]),
          ) as BuiltList<TrackModelRelation>?;
          if (valueDes == null) continue;
          result.rel.replace(valueDes);
          break;
        case r'bible_relations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelBibleRelation)]),
          ) as BuiltList<TrackModelBibleRelation>?;
          if (valueDes == null) continue;
          result.bibleRelations.replace(valueDes);
          break;
        case r'external_relations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelExternalRelation)]),
          ) as BuiltList<TrackModelExternalRelation>?;
          if (valueDes == null) continue;
          result.externalRelations.replace(valueDes);
          break;
        case r'contributors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelContributorRelation)]),
          ) as BuiltList<TrackModelContributorRelation>?;
          if (valueDes == null) continue;
          result.contributors.replace(valueDes);
          break;
        case r'songbook_relations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelSongbookRelation)]),
          ) as BuiltList<TrackModelSongbookRelation>?;
          if (valueDes == null) continue;
          result.songbookRelations.replace(valueDes);
          break;
        case r'subtype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackSubtype),
          ) as TrackSubtype;
          result.subtype = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'_meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModelTrackMeta),
          ) as TrackModelTrackMeta;
          result.meta.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModelTypeEnum),
          ) as TrackModelTypeEnum;
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
        case r'publisher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publisher = valueDes;
          break;
        case r'copyright':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.copyright = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelMedium)]),
          ) as BuiltList<TrackModelMedium>?;
          if (valueDes == null) continue;
          result.media.replace(valueDes);
          break;
        case r'has_listened':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasListened = valueDes;
          break;
        case r'has_transcription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasTranscription = valueDes;
          break;
        case r'is_liked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLiked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelBuilder();
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

class TrackModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'track')
  static const TrackModelTypeEnum track = _$trackModelTypeEnum_track;

  static Serializer<TrackModelTypeEnum> get serializer => _$trackModelTypeEnumSerializer;

  const TrackModelTypeEnum._(String name): super(name);

  static BuiltSet<TrackModelTypeEnum> get values => _$trackModelTypeEnumValues;
  static TrackModelTypeEnum valueOf(String name) => _$trackModelTypeEnumValueOf(name);
}

