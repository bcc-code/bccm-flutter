//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/playlist_model.dart';
import 'package:bmm_api/src/model/album_model.dart';
import 'package:bmm_api/src/model/album_model_album_meta.dart';
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/track_model.dart';
import 'package:bmm_api/src/model/podcast_model.dart';
import 'package:bmm_api/src/model/language_enum.dart';
import 'package:bmm_api/src/model/playlist_details_model.dart';
import 'package:bmm_api/src/model/section_header_model.dart';
import 'package:bmm_api/src/model/i_album_or_track.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_album_podcast_playlist_or_section_header.g.dart';

/// IAlbumPodcastPlaylistOrSectionHeader
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
/// * [trackCount] 
/// * [totalSeconds] 
/// * [latestTrackId] 
/// * [latestTrackPosition] 
/// * [secondsLeft] 
/// * [tracks] 
/// * [useWeekGrouping] 
/// * [showInChronologicalOrder] 
/// * [link] 
/// * [useCoverCarousel] 
@BuiltValue()
abstract class IAlbumPodcastPlaylistOrSectionHeader implements Built<IAlbumPodcastPlaylistOrSectionHeader, IAlbumPodcastPlaylistOrSectionHeaderBuilder> {
  /// One Of [AlbumModel], [PlaylistDetailsModel], [PlaylistModel], [PodcastModel], [SectionHeaderModel]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'album': AlbumModel,
    r'playlist': PlaylistModel,
    r'playlist_details': PlaylistDetailsModel,
    r'podcast': PodcastModel,
    r'section_header': SectionHeaderModel,
  };

  IAlbumPodcastPlaylistOrSectionHeader._();

  factory IAlbumPodcastPlaylistOrSectionHeader([void updates(IAlbumPodcastPlaylistOrSectionHeaderBuilder b)]) = _$IAlbumPodcastPlaylistOrSectionHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAlbumPodcastPlaylistOrSectionHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAlbumPodcastPlaylistOrSectionHeader> get serializer => _$IAlbumPodcastPlaylistOrSectionHeaderSerializer();
}

extension IAlbumPodcastPlaylistOrSectionHeaderDiscriminatorExt on IAlbumPodcastPlaylistOrSectionHeader {
    String? get discriminatorValue {
        if (this is AlbumModel) {
            return r'album';
        }
        if (this is PlaylistModel) {
            return r'playlist';
        }
        if (this is PlaylistDetailsModel) {
            return r'playlist_details';
        }
        if (this is PodcastModel) {
            return r'podcast';
        }
        if (this is SectionHeaderModel) {
            return r'section_header';
        }
        return null;
    }
}
extension IAlbumPodcastPlaylistOrSectionHeaderBuilderDiscriminatorExt on IAlbumPodcastPlaylistOrSectionHeaderBuilder {
    String? get discriminatorValue {
        if (this is AlbumModelBuilder) {
            return r'album';
        }
        if (this is PlaylistModelBuilder) {
            return r'playlist';
        }
        if (this is PlaylistDetailsModelBuilder) {
            return r'playlist_details';
        }
        if (this is PodcastModelBuilder) {
            return r'podcast';
        }
        if (this is SectionHeaderModelBuilder) {
            return r'section_header';
        }
        return null;
    }
}

class _$IAlbumPodcastPlaylistOrSectionHeaderSerializer implements PrimitiveSerializer<IAlbumPodcastPlaylistOrSectionHeader> {
  @override
  final Iterable<Type> types = const [IAlbumPodcastPlaylistOrSectionHeader, _$IAlbumPodcastPlaylistOrSectionHeader];

  @override
  final String wireName = r'IAlbumPodcastPlaylistOrSectionHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAlbumPodcastPlaylistOrSectionHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAlbumPodcastPlaylistOrSectionHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAlbumPodcastPlaylistOrSectionHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAlbumPodcastPlaylistOrSectionHeaderBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAlbumPodcastPlaylistOrSectionHeader.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [AlbumModel, PlaylistModel, PlaylistDetailsModel, PodcastModel, SectionHeaderModel, ];
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
      case r'playlist':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaylistModel),
        ) as PlaylistModel;
        oneOfType = PlaylistModel;
        break;
      case r'playlist_details':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaylistDetailsModel),
        ) as PlaylistDetailsModel;
        oneOfType = PlaylistDetailsModel;
        break;
      case r'podcast':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PodcastModel),
        ) as PodcastModel;
        oneOfType = PodcastModel;
        break;
      case r'section_header':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(SectionHeaderModel),
        ) as SectionHeaderModel;
        oneOfType = SectionHeaderModel;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class IAlbumPodcastPlaylistOrSectionHeaderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum album = _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_album;
  @BuiltValueEnumConst(wireName: r'playlist_details')
  static const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum playlistDetails = _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlistDetails;
  @BuiltValueEnumConst(wireName: r'playlist')
  static const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum playlist = _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_playlist;
  @BuiltValueEnumConst(wireName: r'podcast')
  static const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum podcast = _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_podcast;
  @BuiltValueEnumConst(wireName: r'section_header')
  static const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum sectionHeader = _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnum_sectionHeader;

  static Serializer<IAlbumPodcastPlaylistOrSectionHeaderTypeEnum> get serializer => _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnumSerializer;

  const IAlbumPodcastPlaylistOrSectionHeaderTypeEnum._(String name): super(name);

  static BuiltSet<IAlbumPodcastPlaylistOrSectionHeaderTypeEnum> get values => _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnumValues;
  static IAlbumPodcastPlaylistOrSectionHeaderTypeEnum valueOf(String name) => _$iAlbumPodcastPlaylistOrSectionHeaderTypeEnumValueOf(name);
}

