//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/track_model_medium.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:openapi/src/model/track_model_relation.dart';
import 'package:openapi/src/model/album_model.dart';
import 'package:openapi/src/model/track_model_contributor_relation.dart';
import 'package:openapi/src/model/track_model_songbook_relation.dart';
import 'package:openapi/src/model/track_model_track_meta.dart';
import 'package:openapi/src/model/track_subtype.dart';
import 'package:openapi/src/model/track_model.dart';
import 'package:openapi/src/model/track_model_bible_relation.dart';
import 'package:openapi/src/model/track_model_external_relation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_album_or_track.g.dart';

/// IAlbumOrTrack
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
/// * [comment] 
/// * [isVisible] 
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
abstract class IAlbumOrTrack implements Built<IAlbumOrTrack, IAlbumOrTrackBuilder> {
  /// One Of [AlbumModel], [TrackModel]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'album': AlbumModel,
    r'track': TrackModel,
  };

  IAlbumOrTrack._();

  factory IAlbumOrTrack([void updates(IAlbumOrTrackBuilder b)]) = _$IAlbumOrTrack;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAlbumOrTrackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAlbumOrTrack> get serializer => _$IAlbumOrTrackSerializer();
}

extension IAlbumOrTrackDiscriminatorExt on IAlbumOrTrack {
    String? get discriminatorValue {
        if (this is AlbumModel) {
            return r'album';
        }
        if (this is TrackModel) {
            return r'track';
        }
        return null;
    }
}
extension IAlbumOrTrackBuilderDiscriminatorExt on IAlbumOrTrackBuilder {
    String? get discriminatorValue {
        if (this is AlbumModelBuilder) {
            return r'album';
        }
        if (this is TrackModelBuilder) {
            return r'track';
        }
        return null;
    }
}

class _$IAlbumOrTrackSerializer implements PrimitiveSerializer<IAlbumOrTrack> {
  @override
  final Iterable<Type> types = const [IAlbumOrTrack, _$IAlbumOrTrack];

  @override
  final String wireName = r'IAlbumOrTrack';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAlbumOrTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAlbumOrTrack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAlbumOrTrack deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAlbumOrTrackBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAlbumOrTrack.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [AlbumModel, TrackModel, ];
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

class IAlbumOrTrackTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const IAlbumOrTrackTypeEnum album = _$iAlbumOrTrackTypeEnum_album;
  @BuiltValueEnumConst(wireName: r'track')
  static const IAlbumOrTrackTypeEnum track = _$iAlbumOrTrackTypeEnum_track;

  static Serializer<IAlbumOrTrackTypeEnum> get serializer => _$iAlbumOrTrackTypeEnumSerializer;

  const IAlbumOrTrackTypeEnum._(String name): super(name);

  static BuiltSet<IAlbumOrTrackTypeEnum> get values => _$iAlbumOrTrackTypeEnumValues;
  static IAlbumOrTrackTypeEnum valueOf(String name) => _$iAlbumOrTrackTypeEnumValueOf(name);
}

