//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/chapter_header.dart';
import 'package:bmm_api/src/model/playlist_model.dart';
import 'package:bmm_api/src/model/album_model.dart';
import 'package:bmm_api/src/model/album_model_album_meta.dart';
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/language_enum.dart';
import 'package:bmm_api/src/model/i_album_or_track.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_album_playlist_or_chapter_header.g.dart';

/// IAlbumPlaylistOrChapterHeader
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
abstract class IAlbumPlaylistOrChapterHeader implements Built<IAlbumPlaylistOrChapterHeader, IAlbumPlaylistOrChapterHeaderBuilder> {
  /// One Of [AlbumModel], [ChapterHeader], [PlaylistModel]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'album': AlbumModel,
    r'chapter_header': ChapterHeader,
    r'playlist': PlaylistModel,
  };

  IAlbumPlaylistOrChapterHeader._();

  factory IAlbumPlaylistOrChapterHeader([void updates(IAlbumPlaylistOrChapterHeaderBuilder b)]) = _$IAlbumPlaylistOrChapterHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAlbumPlaylistOrChapterHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAlbumPlaylistOrChapterHeader> get serializer => _$IAlbumPlaylistOrChapterHeaderSerializer();
}

extension IAlbumPlaylistOrChapterHeaderDiscriminatorExt on IAlbumPlaylistOrChapterHeader {
    String? get discriminatorValue {
        if (this is AlbumModel) {
            return r'album';
        }
        if (this is ChapterHeader) {
            return r'chapter_header';
        }
        if (this is PlaylistModel) {
            return r'playlist';
        }
        return null;
    }
}
extension IAlbumPlaylistOrChapterHeaderBuilderDiscriminatorExt on IAlbumPlaylistOrChapterHeaderBuilder {
    String? get discriminatorValue {
        if (this is AlbumModelBuilder) {
            return r'album';
        }
        if (this is ChapterHeaderBuilder) {
            return r'chapter_header';
        }
        if (this is PlaylistModelBuilder) {
            return r'playlist';
        }
        return null;
    }
}

class _$IAlbumPlaylistOrChapterHeaderSerializer implements PrimitiveSerializer<IAlbumPlaylistOrChapterHeader> {
  @override
  final Iterable<Type> types = const [IAlbumPlaylistOrChapterHeader, _$IAlbumPlaylistOrChapterHeader];

  @override
  final String wireName = r'IAlbumPlaylistOrChapterHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAlbumPlaylistOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAlbumPlaylistOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAlbumPlaylistOrChapterHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAlbumPlaylistOrChapterHeaderBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAlbumPlaylistOrChapterHeader.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [AlbumModel, ChapterHeader, PlaylistModel, ];
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
      case r'chapter_header':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ChapterHeader),
        ) as ChapterHeader;
        oneOfType = ChapterHeader;
        break;
      case r'playlist':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(PlaylistModel),
        ) as PlaylistModel;
        oneOfType = PlaylistModel;
        break;
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class IAlbumPlaylistOrChapterHeaderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const IAlbumPlaylistOrChapterHeaderTypeEnum album = _$iAlbumPlaylistOrChapterHeaderTypeEnum_album;
  @BuiltValueEnumConst(wireName: r'playlist')
  static const IAlbumPlaylistOrChapterHeaderTypeEnum playlist = _$iAlbumPlaylistOrChapterHeaderTypeEnum_playlist;
  @BuiltValueEnumConst(wireName: r'chapter_header')
  static const IAlbumPlaylistOrChapterHeaderTypeEnum chapterHeader = _$iAlbumPlaylistOrChapterHeaderTypeEnum_chapterHeader;

  static Serializer<IAlbumPlaylistOrChapterHeaderTypeEnum> get serializer => _$iAlbumPlaylistOrChapterHeaderTypeEnumSerializer;

  const IAlbumPlaylistOrChapterHeaderTypeEnum._(String name): super(name);

  static BuiltSet<IAlbumPlaylistOrChapterHeaderTypeEnum> get values => _$iAlbumPlaylistOrChapterHeaderTypeEnumValues;
  static IAlbumPlaylistOrChapterHeaderTypeEnum valueOf(String name) => _$iAlbumPlaylistOrChapterHeaderTypeEnumValueOf(name);
}

