//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/language_enum.dart';
import 'package:openapi/src/model/album_model.dart';
import 'package:openapi/src/model/chapter_header.dart';
import 'package:openapi/src/model/i_album_or_track.dart';
import 'package:openapi/src/model/album_model_album_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_album_or_chapter_header.g.dart';

/// IAlbumOrChapterHeader
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
abstract class IAlbumOrChapterHeader implements Built<IAlbumOrChapterHeader, IAlbumOrChapterHeaderBuilder> {
  /// One Of [AlbumModel], [ChapterHeader]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'album': AlbumModel,
    r'chapter_header': ChapterHeader,
  };

  IAlbumOrChapterHeader._();

  factory IAlbumOrChapterHeader([void updates(IAlbumOrChapterHeaderBuilder b)]) = _$IAlbumOrChapterHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAlbumOrChapterHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAlbumOrChapterHeader> get serializer => _$IAlbumOrChapterHeaderSerializer();
}

extension IAlbumOrChapterHeaderDiscriminatorExt on IAlbumOrChapterHeader {
    String? get discriminatorValue {
        if (this is AlbumModel) {
            return r'album';
        }
        if (this is ChapterHeader) {
            return r'chapter_header';
        }
        return null;
    }
}
extension IAlbumOrChapterHeaderBuilderDiscriminatorExt on IAlbumOrChapterHeaderBuilder {
    String? get discriminatorValue {
        if (this is AlbumModelBuilder) {
            return r'album';
        }
        if (this is ChapterHeaderBuilder) {
            return r'chapter_header';
        }
        return null;
    }
}

class _$IAlbumOrChapterHeaderSerializer implements PrimitiveSerializer<IAlbumOrChapterHeader> {
  @override
  final Iterable<Type> types = const [IAlbumOrChapterHeader, _$IAlbumOrChapterHeader];

  @override
  final String wireName = r'IAlbumOrChapterHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAlbumOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAlbumOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAlbumOrChapterHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAlbumOrChapterHeaderBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAlbumOrChapterHeader.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [AlbumModel, ChapterHeader, ];
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
      default:
        throw UnsupportedError("Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(typeIndex: oneOfTypes.indexOf(oneOfType), types: oneOfTypes, value: oneOfResult);
    return result.build();
  }
}

class IAlbumOrChapterHeaderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'album')
  static const IAlbumOrChapterHeaderTypeEnum album = _$iAlbumOrChapterHeaderTypeEnum_album;
  @BuiltValueEnumConst(wireName: r'chapter_header')
  static const IAlbumOrChapterHeaderTypeEnum chapterHeader = _$iAlbumOrChapterHeaderTypeEnum_chapterHeader;

  static Serializer<IAlbumOrChapterHeaderTypeEnum> get serializer => _$iAlbumOrChapterHeaderTypeEnumSerializer;

  const IAlbumOrChapterHeaderTypeEnum._(String name): super(name);

  static BuiltSet<IAlbumOrChapterHeaderTypeEnum> get values => _$iAlbumOrChapterHeaderTypeEnumValues;
  static IAlbumOrChapterHeaderTypeEnum valueOf(String name) => _$iAlbumOrChapterHeaderTypeEnumValueOf(name);
}

