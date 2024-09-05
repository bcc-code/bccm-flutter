//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/info_message_model.dart';
import 'package:openapi/src/model/section_header_model.dart';
import 'package:openapi/src/model/podcast_model.dart';
import 'package:openapi/src/model/recommendation_model.dart';
import 'package:openapi/src/model/tile_video_model.dart';
import 'package:openapi/src/model/track_model_relation.dart';
import 'package:openapi/src/model/track_model_contributor_relation.dart';
import 'package:openapi/src/model/track_model_songbook_relation.dart';
import 'package:openapi/src/model/track_collection_model.dart';
import 'package:openapi/src/model/day_of_week.dart';
import 'package:openapi/src/model/i_album_or_track.dart';
import 'package:openapi/src/model/current_weeks_streak_vm.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:openapi/src/model/project_box.dart';
import 'package:openapi/src/model/track_reference.dart';
import 'package:openapi/src/model/album_model.dart';
import 'package:openapi/src/model/year_in_review_model.dart';
import 'package:openapi/src/model/playlist_model.dart';
import 'package:openapi/src/model/tile_message_model.dart';
import 'package:openapi/src/model/track_model_external_relation.dart';
import 'package:openapi/src/model/contributor_contributor_meta.dart';
import 'package:openapi/src/model/current_weeks_streak_vm_home_screen_text_options.dart';
import 'package:openapi/src/model/tile_model.dart';
import 'package:openapi/src/model/track_model_track_meta.dart';
import 'package:openapi/src/model/track_model.dart';
import 'package:openapi/src/model/achievement_model.dart';
import 'package:openapi/src/model/contributor_model.dart';
import 'package:openapi/src/model/track_model_medium.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/track_subtype.dart';
import 'package:openapi/src/model/chapter_header.dart';
import 'package:openapi/src/model/track_model_bible_relation.dart';
import 'package:openapi/src/model/achievement_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_all_document_models.g.dart';

/// IAllDocumentModels
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
/// * [access] 
/// * [trackReferences] 
/// * [year] 
/// * [weekOfTheYear] 
/// * [todaysFraKaareTrackId] 
/// * [numberOfPerfectWeeks] 
/// * [isPerfectWeek] 
/// * [total] 
/// * [monday] 
/// * [tuesday] 
/// * [wednesday] 
/// * [thursday] 
/// * [friday] 
/// * [dayOfTheWeek] 
/// * [eligibleUntil] 
/// * [lastChanged] 
/// * [daysInARow] 
/// * [pointColor] 
/// * [homeScreenText] 
/// * [list] 
/// * [translatedMessage] 
/// * [messageText] 
/// * [link] 
/// * [showIcon] 
/// * [openByDefault] 
/// * [points] 
/// * [pointsDescription] 
/// * [buttonTitle] 
/// * [buttonWebsite] 
/// * [buttonShowIcon] 
/// * [achievements] 
/// * [rulesLinkTitle] 
/// * [iconColor] 
/// * [subtitle] 
/// * [contributor] 
/// * [track] 
/// * [playlist] 
/// * [album] 
/// * [useCoverCarousel] 
/// * [header] 
/// * [buttonText] 
/// * [buttonUrl] 
/// * [videoFileName] 
/// * [backgroundColor] 
/// * [coverUrl] 
/// * [label] 
/// * [date] 
/// * [percentage] 
/// * [showAllLink] 
/// * [shufflePodcastId] 
/// * [lastPositionInMs] 
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
/// * [buttonLink] 
/// * [playlistName] 
@BuiltValue()
abstract class IAllDocumentModels implements Built<IAllDocumentModels, IAllDocumentModelsBuilder> {
  /// One Of [AchievementCollection], [AlbumModel], [ChapterHeader], [ContributorModel], [CurrentWeeksStreakVm], [InfoMessageModel], [PlaylistModel], [PodcastModel], [ProjectBox], [RecommendationModel], [SectionHeaderModel], [TileMessageModel], [TileModel], [TileVideoModel], [TrackCollectionModel], [TrackModel], [YearInReviewModel]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'InfoMessage': InfoMessageModel,
    r'Tile': TileModel,
    r'achievement_collection': AchievementCollection,
    r'album': AlbumModel,
    r'chapter_header': ChapterHeader,
    r'contributor': ContributorModel,
    r'listening_streak': CurrentWeeksStreakVm,
    r'playlist': PlaylistModel,
    r'podcast': PodcastModel,
    r'project_box': ProjectBox,
    r'recommendation': RecommendationModel,
    r'section_header': SectionHeaderModel,
    r'tile_message': TileMessageModel,
    r'tile_video': TileVideoModel,
    r'track': TrackModel,
    r'track_collection': TrackCollectionModel,
    r'year_in_review': YearInReviewModel,
  };

  IAllDocumentModels._();

  factory IAllDocumentModels([void updates(IAllDocumentModelsBuilder b)]) = _$IAllDocumentModels;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAllDocumentModelsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAllDocumentModels> get serializer => _$IAllDocumentModelsSerializer();
}

extension IAllDocumentModelsDiscriminatorExt on IAllDocumentModels {
    String? get discriminatorValue {
        if (this is InfoMessageModel) {
            return r'InfoMessage';
        }
        if (this is TileModel) {
            return r'Tile';
        }
        if (this is AchievementCollection) {
            return r'achievement_collection';
        }
        if (this is AlbumModel) {
            return r'album';
        }
        if (this is ChapterHeader) {
            return r'chapter_header';
        }
        if (this is ContributorModel) {
            return r'contributor';
        }
        if (this is CurrentWeeksStreakVm) {
            return r'listening_streak';
        }
        if (this is PlaylistModel) {
            return r'playlist';
        }
        if (this is PodcastModel) {
            return r'podcast';
        }
        if (this is ProjectBox) {
            return r'project_box';
        }
        if (this is RecommendationModel) {
            return r'recommendation';
        }
        if (this is SectionHeaderModel) {
            return r'section_header';
        }
        if (this is TileMessageModel) {
            return r'tile_message';
        }
        if (this is TileVideoModel) {
            return r'tile_video';
        }
        if (this is TrackModel) {
            return r'track';
        }
        if (this is TrackCollectionModel) {
            return r'track_collection';
        }
        if (this is YearInReviewModel) {
            return r'year_in_review';
        }
        return null;
    }
}
extension IAllDocumentModelsBuilderDiscriminatorExt on IAllDocumentModelsBuilder {
    String? get discriminatorValue {
        if (this is InfoMessageModelBuilder) {
            return r'InfoMessage';
        }
        if (this is TileModelBuilder) {
            return r'Tile';
        }
        if (this is AchievementCollectionBuilder) {
            return r'achievement_collection';
        }
        if (this is AlbumModelBuilder) {
            return r'album';
        }
        if (this is ChapterHeaderBuilder) {
            return r'chapter_header';
        }
        if (this is ContributorModelBuilder) {
            return r'contributor';
        }
        if (this is CurrentWeeksStreakVmBuilder) {
            return r'listening_streak';
        }
        if (this is PlaylistModelBuilder) {
            return r'playlist';
        }
        if (this is PodcastModelBuilder) {
            return r'podcast';
        }
        if (this is ProjectBoxBuilder) {
            return r'project_box';
        }
        if (this is RecommendationModelBuilder) {
            return r'recommendation';
        }
        if (this is SectionHeaderModelBuilder) {
            return r'section_header';
        }
        if (this is TileMessageModelBuilder) {
            return r'tile_message';
        }
        if (this is TileVideoModelBuilder) {
            return r'tile_video';
        }
        if (this is TrackModelBuilder) {
            return r'track';
        }
        if (this is TrackCollectionModelBuilder) {
            return r'track_collection';
        }
        if (this is YearInReviewModelBuilder) {
            return r'year_in_review';
        }
        return null;
    }
}

class _$IAllDocumentModelsSerializer implements PrimitiveSerializer<IAllDocumentModels> {
  @override
  final Iterable<Type> types = const [IAllDocumentModels, _$IAllDocumentModels];

  @override
  final String wireName = r'IAllDocumentModels';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAllDocumentModels object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAllDocumentModels object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAllDocumentModels deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAllDocumentModelsBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAllDocumentModels.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [InfoMessageModel, TileModel, AchievementCollection, AlbumModel, ChapterHeader, ContributorModel, CurrentWeeksStreakVm, PlaylistModel, PodcastModel, ProjectBox, RecommendationModel, SectionHeaderModel, TileMessageModel, TileVideoModel, TrackModel, TrackCollectionModel, YearInReviewModel, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'InfoMessage':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(InfoMessageModel),
        ) as InfoMessageModel;
        oneOfType = InfoMessageModel;
        break;
      case r'Tile':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TileModel),
        ) as TileModel;
        oneOfType = TileModel;
        break;
      case r'achievement_collection':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AchievementCollection),
        ) as AchievementCollection;
        oneOfType = AchievementCollection;
        break;
      case r'album':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AlbumModel),
        ) as AlbumModel;
        oneOfType = AlbumModel;
        break;
      case r'chapter_header':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ChapterHeader),
        ) as ChapterHeader;
        oneOfType = ChapterHeader;
        break;
      case r'contributor':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ContributorModel),
        ) as ContributorModel;
        oneOfType = ContributorModel;
        break;
      case r'listening_streak':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(CurrentWeeksStreakVm),
        ) as CurrentWeeksStreakVm;
        oneOfType = CurrentWeeksStreakVm;
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
      case r'project_box':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ProjectBox),
        ) as ProjectBox;
        oneOfType = ProjectBox;
        break;
      case r'recommendation':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RecommendationModel),
        ) as RecommendationModel;
        oneOfType = RecommendationModel;
        break;
      case r'section_header':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(SectionHeaderModel),
        ) as SectionHeaderModel;
        oneOfType = SectionHeaderModel;
        break;
      case r'tile_message':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TileMessageModel),
        ) as TileMessageModel;
        oneOfType = TileMessageModel;
        break;
      case r'tile_video':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TileVideoModel),
        ) as TileVideoModel;
        oneOfType = TileVideoModel;
        break;
      case r'track':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TrackModel),
        ) as TrackModel;
        oneOfType = TrackModel;
        break;
      case r'track_collection':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(TrackCollectionModel),
        ) as TrackCollectionModel;
        oneOfType = TrackCollectionModel;
        break;
      case r'year_in_review':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(YearInReviewModel),
        ) as YearInReviewModel;
        oneOfType = YearInReviewModel;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class IAllDocumentModelsTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const IAllDocumentModelsTypeEnum album = _$iAllDocumentModelsTypeEnum_album;
  @BuiltValueEnumConst(wireName: r'contributor')
  static const IAllDocumentModelsTypeEnum contributor = _$iAllDocumentModelsTypeEnum_contributor;
  @BuiltValueEnumConst(wireName: r'playlist')
  static const IAllDocumentModelsTypeEnum playlist = _$iAllDocumentModelsTypeEnum_playlist;
  @BuiltValueEnumConst(wireName: r'podcast')
  static const IAllDocumentModelsTypeEnum podcast = _$iAllDocumentModelsTypeEnum_podcast;
  @BuiltValueEnumConst(wireName: r'track_collection')
  static const IAllDocumentModelsTypeEnum trackCollection = _$iAllDocumentModelsTypeEnum_trackCollection;
  @BuiltValueEnumConst(wireName: r'listening_streak')
  static const IAllDocumentModelsTypeEnum listeningStreak = _$iAllDocumentModelsTypeEnum_listeningStreak;
  @BuiltValueEnumConst(wireName: r'achievement_collection')
  static const IAllDocumentModelsTypeEnum achievementCollection = _$iAllDocumentModelsTypeEnum_achievementCollection;
  @BuiltValueEnumConst(wireName: r'chapter_header')
  static const IAllDocumentModelsTypeEnum chapterHeader = _$iAllDocumentModelsTypeEnum_chapterHeader;
  @BuiltValueEnumConst(wireName: r'InfoMessage')
  static const IAllDocumentModelsTypeEnum infoMessage = _$iAllDocumentModelsTypeEnum_infoMessage;
  @BuiltValueEnumConst(wireName: r'project_box')
  static const IAllDocumentModelsTypeEnum projectBox = _$iAllDocumentModelsTypeEnum_projectBox;
  @BuiltValueEnumConst(wireName: r'recommendation')
  static const IAllDocumentModelsTypeEnum recommendation = _$iAllDocumentModelsTypeEnum_recommendation;
  @BuiltValueEnumConst(wireName: r'section_header')
  static const IAllDocumentModelsTypeEnum sectionHeader = _$iAllDocumentModelsTypeEnum_sectionHeader;
  @BuiltValueEnumConst(wireName: r'tile_message')
  static const IAllDocumentModelsTypeEnum tileMessage = _$iAllDocumentModelsTypeEnum_tileMessage;
  @BuiltValueEnumConst(wireName: r'tile_video')
  static const IAllDocumentModelsTypeEnum tileVideo = _$iAllDocumentModelsTypeEnum_tileVideo;
  @BuiltValueEnumConst(wireName: r'Tile')
  static const IAllDocumentModelsTypeEnum tile = _$iAllDocumentModelsTypeEnum_tile;
  @BuiltValueEnumConst(wireName: r'track')
  static const IAllDocumentModelsTypeEnum track = _$iAllDocumentModelsTypeEnum_track;
  @BuiltValueEnumConst(wireName: r'year_in_review')
  static const IAllDocumentModelsTypeEnum yearInReview = _$iAllDocumentModelsTypeEnum_yearInReview;

  static Serializer<IAllDocumentModelsTypeEnum> get serializer => _$iAllDocumentModelsTypeEnumSerializer;

  const IAllDocumentModelsTypeEnum._(String name): super(name);

  static BuiltSet<IAllDocumentModelsTypeEnum> get values => _$iAllDocumentModelsTypeEnumValues;
  static IAllDocumentModelsTypeEnum valueOf(String name) => _$iAllDocumentModelsTypeEnumValueOf(name);
}

