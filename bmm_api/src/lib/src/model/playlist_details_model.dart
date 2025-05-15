//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/track_model.dart';
import 'package:bmm_api/src/model/language_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'playlist_details_model.g.dart';

/// PlaylistDetailsModel
///
/// Properties:
/// * [cover] 
/// * [id] 
/// * [type] 
/// * [languages] 
/// * [language] 
/// * [title] 
/// * [description] 
/// * [tracks] 
/// * [trackCount] 
/// * [totalSeconds] 
@BuiltValue()
abstract class PlaylistDetailsModel implements Built<PlaylistDetailsModel, PlaylistDetailsModelBuilder> {
  @BuiltValueField(wireName: r'cover')
  String? get cover;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  PlaylistDetailsModelTypeEnum get type;
  // enum typeEnum {  playlist_details,  };

  @BuiltValueField(wireName: r'languages')
  BuiltList<LanguageEnum>? get languages;

  @BuiltValueField(wireName: r'language')
  LanguageEnum? get language;
  // enum languageEnum {  af,  bg,  cs,  de,  en,  el,  et,  es,  fi,  fr,  hr,  hu,  it,  nb,  nl,  pl,  pt,  ro,  ru,  tr,  zh,  sl,  he,  ta,  ml,  yue,  kha,  zxx,  ar,  be,  da,  hi,  id,  mn,  no,  sa,  sr,  sv,  uk,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'tracks')
  BuiltList<TrackModel>? get tracks;

  @BuiltValueField(wireName: r'track_count')
  int get trackCount;

  @BuiltValueField(wireName: r'total_seconds')
  int get totalSeconds;

  PlaylistDetailsModel._();

  factory PlaylistDetailsModel([void updates(PlaylistDetailsModelBuilder b)]) = _$PlaylistDetailsModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaylistDetailsModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaylistDetailsModel> get serializer => _$PlaylistDetailsModelSerializer();
}

class _$PlaylistDetailsModelSerializer implements PrimitiveSerializer<PlaylistDetailsModel> {
  @override
  final Iterable<Type> types = const [PlaylistDetailsModel, _$PlaylistDetailsModel];

  @override
  final String wireName = r'PlaylistDetailsModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaylistDetailsModel object, {
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
      specifiedType: const FullType(PlaylistDetailsModelTypeEnum),
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tracks != null) {
      yield r'tracks';
      yield serializers.serialize(
        object.tracks,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModel)]),
      );
    }
    yield r'track_count';
    yield serializers.serialize(
      object.trackCount,
      specifiedType: const FullType(int),
    );
    yield r'total_seconds';
    yield serializers.serialize(
      object.totalSeconds,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaylistDetailsModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlaylistDetailsModelBuilder result,
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
            specifiedType: const FullType(PlaylistDetailsModelTypeEnum),
          ) as PlaylistDetailsModelTypeEnum;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModel)]),
          ) as BuiltList<TrackModel>?;
          if (valueDes == null) continue;
          result.tracks.replace(valueDes);
          break;
        case r'track_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.trackCount = valueDes;
          break;
        case r'total_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaylistDetailsModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaylistDetailsModelBuilder();
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

class PlaylistDetailsModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'playlist_details')
  static const PlaylistDetailsModelTypeEnum playlistDetails = _$playlistDetailsModelTypeEnum_playlistDetails;

  static Serializer<PlaylistDetailsModelTypeEnum> get serializer => _$playlistDetailsModelTypeEnumSerializer;

  const PlaylistDetailsModelTypeEnum._(String name): super(name);

  static BuiltSet<PlaylistDetailsModelTypeEnum> get values => _$playlistDetailsModelTypeEnumValues;
  static PlaylistDetailsModelTypeEnum valueOf(String name) => _$playlistDetailsModelTypeEnumValueOf(name);
}

