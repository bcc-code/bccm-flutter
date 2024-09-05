//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/contributor_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/album_model.dart';
import 'package:openapi/src/model/playlist_model.dart';
import 'package:openapi/src/model/track_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_model.g.dart';

/// RecommendationModel
///
/// Properties:
/// * [title] 
/// * [subtitle] 
/// * [contributor] 
/// * [track] 
/// * [playlist] 
/// * [album] 
/// * [id] 
/// * [type] 
@BuiltValue()
abstract class RecommendationModel implements Built<RecommendationModel, RecommendationModelBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'contributor')
  ContributorModel? get contributor;

  @BuiltValueField(wireName: r'track')
  TrackModel? get track;

  @BuiltValueField(wireName: r'playlist')
  PlaylistModel? get playlist;

  @BuiltValueField(wireName: r'album')
  AlbumModel? get album;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  RecommendationModelTypeEnum get type;
  // enum typeEnum {  recommendation,  };

  RecommendationModel._();

  factory RecommendationModel([void updates(RecommendationModelBuilder b)]) = _$RecommendationModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecommendationModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecommendationModel> get serializer => _$RecommendationModelSerializer();
}

class _$RecommendationModelSerializer implements PrimitiveSerializer<RecommendationModel> {
  @override
  final Iterable<Type> types = const [RecommendationModel, _$RecommendationModel];

  @override
  final String wireName = r'RecommendationModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecommendationModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.contributor != null) {
      yield r'contributor';
      yield serializers.serialize(
        object.contributor,
        specifiedType: const FullType(ContributorModel),
      );
    }
    if (object.track != null) {
      yield r'track';
      yield serializers.serialize(
        object.track,
        specifiedType: const FullType(TrackModel),
      );
    }
    if (object.playlist != null) {
      yield r'playlist';
      yield serializers.serialize(
        object.playlist,
        specifiedType: const FullType(PlaylistModel),
      );
    }
    if (object.album != null) {
      yield r'album';
      yield serializers.serialize(
        object.album,
        specifiedType: const FullType(AlbumModel),
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
      specifiedType: const FullType(RecommendationModelTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RecommendationModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecommendationModelBuilder result,
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
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'contributor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContributorModel),
          ) as ContributorModel;
          result.contributor.replace(valueDes);
          break;
        case r'track':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModel),
          ) as TrackModel;
          result.track.replace(valueDes);
          break;
        case r'playlist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlaylistModel),
          ) as PlaylistModel;
          result.playlist.replace(valueDes);
          break;
        case r'album':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlbumModel),
          ) as AlbumModel;
          result.album.replace(valueDes);
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
            specifiedType: const FullType(RecommendationModelTypeEnum),
          ) as RecommendationModelTypeEnum;
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
  RecommendationModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecommendationModelBuilder();
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

class RecommendationModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'recommendation')
  static const RecommendationModelTypeEnum recommendation = _$recommendationModelTypeEnum_recommendation;

  static Serializer<RecommendationModelTypeEnum> get serializer => _$recommendationModelTypeEnumSerializer;

  const RecommendationModelTypeEnum._(String name): super(name);

  static BuiltSet<RecommendationModelTypeEnum> get values => _$recommendationModelTypeEnumValues;
  static RecommendationModelTypeEnum valueOf(String name) => _$recommendationModelTypeEnumValueOf(name);
}

