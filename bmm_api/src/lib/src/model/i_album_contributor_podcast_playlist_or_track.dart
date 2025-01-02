//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/playlist_model.dart';
import 'package:bmm_api/src/model/album_model.dart';
import 'package:bmm_api/src/model/track_model_songbook_relation.dart';
import 'package:bmm_api/src/model/track_model.dart';
import 'package:bmm_api/src/model/track_model_medium.dart';
import 'package:bmm_api/src/model/language_enum.dart';
import 'package:bmm_api/src/model/track_model_contributor_relation.dart';
import 'package:bmm_api/src/model/track_model_track_meta.dart';
import 'package:bmm_api/src/model/track_model_external_relation.dart';
import 'package:bmm_api/src/model/contributor_model.dart';
import 'package:bmm_api/src/model/track_model_bible_relation.dart';
import 'package:bmm_api/src/model/track_subtype.dart';
import 'package:bmm_api/src/model/track_model_relation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/contributor_contributor_meta.dart';
import 'package:bmm_api/src/model/podcast_model.dart';
import 'package:bmm_api/src/model/i_album_or_track.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_album_contributor_podcast_playlist_or_track.g.dart';

/// IAlbumContributorPodcastPlaylistOrTrack
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
/// * [isVisible] 
/// * [name] 
/// * [meta] 
/// * [interpretReferences] 
/// * [otherReferences] 
/// * [comment] 
/// * [order] 
/// * [recordedAt] 
/// * [rel] 
/// * [bibleRelations] 
/// * [externalRelations] 
/// * [contributors] 
/// * [songbookRelations] 
/// * [subtype] 
/// * [publisher] 
/// * [copyright] 
/// * [media] 
/// * [hasListened] 
/// * [hasTranscription] 
/// * [isLiked] 
@BuiltValue()
abstract class IAlbumContributorPodcastPlaylistOrTrack implements Built<IAlbumContributorPodcastPlaylistOrTrack, IAlbumContributorPodcastPlaylistOrTrackBuilder> {
  /// One Of [AlbumModel], [ContributorModel], [PlaylistModel], [PodcastModel], [TrackModel]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'album': AlbumModel,
    r'contributor': ContributorModel,
    r'playlist': PlaylistModel,
    r'podcast': PodcastModel,
    r'track': TrackModel,
  };

  IAlbumContributorPodcastPlaylistOrTrack._();

  factory IAlbumContributorPodcastPlaylistOrTrack([void updates(IAlbumContributorPodcastPlaylistOrTrackBuilder b)]) = _$IAlbumContributorPodcastPlaylistOrTrack;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAlbumContributorPodcastPlaylistOrTrackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAlbumContributorPodcastPlaylistOrTrack> get serializer => _$IAlbumContributorPodcastPlaylistOrTrackSerializer();
}

extension IAlbumContributorPodcastPlaylistOrTrackDiscriminatorExt on IAlbumContributorPodcastPlaylistOrTrack {
    String? get discriminatorValue {
        if (this is AlbumModel) {
            return r'album';
        }
        if (this is ContributorModel) {
            return r'contributor';
        }
        if (this is PlaylistModel) {
            return r'playlist';
        }
        if (this is PodcastModel) {
            return r'podcast';
        }
        if (this is TrackModel) {
            return r'track';
        }
        return null;
    }
}
extension IAlbumContributorPodcastPlaylistOrTrackBuilderDiscriminatorExt on IAlbumContributorPodcastPlaylistOrTrackBuilder {
    String? get discriminatorValue {
        if (this is AlbumModelBuilder) {
            return r'album';
        }
        if (this is ContributorModelBuilder) {
            return r'contributor';
        }
        if (this is PlaylistModelBuilder) {
            return r'playlist';
        }
        if (this is PodcastModelBuilder) {
            return r'podcast';
        }
        if (this is TrackModelBuilder) {
            return r'track';
        }
        return null;
    }
}

class _$IAlbumContributorPodcastPlaylistOrTrackSerializer implements PrimitiveSerializer<IAlbumContributorPodcastPlaylistOrTrack> {
  @override
  final Iterable<Type> types = const [IAlbumContributorPodcastPlaylistOrTrack, _$IAlbumContributorPodcastPlaylistOrTrack];

  @override
  final String wireName = r'IAlbumContributorPodcastPlaylistOrTrack';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAlbumContributorPodcastPlaylistOrTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAlbumContributorPodcastPlaylistOrTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAlbumContributorPodcastPlaylistOrTrack deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAlbumContributorPodcastPlaylistOrTrackBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAlbumContributorPodcastPlaylistOrTrack.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [AlbumModel, ContributorModel, PlaylistModel, PodcastModel, TrackModel, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'album':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AlbumModel),
        ) as AlbumModel;
        oneOfType = AlbumModel;
        break;
      case r'contributor':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ContributorModel),
        ) as ContributorModel;
        oneOfType = ContributorModel;
        break;
      case r'playlist':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaylistModel),
        ) as PlaylistModel;
        oneOfType = PlaylistModel;
        break;
      case r'podcast':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PodcastModel),
        ) as PodcastModel;
        oneOfType = PodcastModel;
        break;
      case r'track':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TrackModel),
        ) as TrackModel;
        oneOfType = TrackModel;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class IAlbumContributorPodcastPlaylistOrTrackTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const IAlbumContributorPodcastPlaylistOrTrackTypeEnum album = _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_album;
  @BuiltValueEnumConst(wireName: r'contributor')
  static const IAlbumContributorPodcastPlaylistOrTrackTypeEnum contributor = _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_contributor;
  @BuiltValueEnumConst(wireName: r'playlist')
  static const IAlbumContributorPodcastPlaylistOrTrackTypeEnum playlist = _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_playlist;
  @BuiltValueEnumConst(wireName: r'podcast')
  static const IAlbumContributorPodcastPlaylistOrTrackTypeEnum podcast = _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_podcast;
  @BuiltValueEnumConst(wireName: r'track')
  static const IAlbumContributorPodcastPlaylistOrTrackTypeEnum track = _$iAlbumContributorPodcastPlaylistOrTrackTypeEnum_track;

  static Serializer<IAlbumContributorPodcastPlaylistOrTrackTypeEnum> get serializer => _$iAlbumContributorPodcastPlaylistOrTrackTypeEnumSerializer;

  const IAlbumContributorPodcastPlaylistOrTrackTypeEnum._(String name): super(name);

  static BuiltSet<IAlbumContributorPodcastPlaylistOrTrackTypeEnum> get values => _$iAlbumContributorPodcastPlaylistOrTrackTypeEnumValues;
  static IAlbumContributorPodcastPlaylistOrTrackTypeEnum valueOf(String name) => _$iAlbumContributorPodcastPlaylistOrTrackTypeEnumValueOf(name);
}

