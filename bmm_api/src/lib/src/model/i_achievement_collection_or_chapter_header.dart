//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/chapter_header.dart';
import 'package:openapi/src/model/achievement_collection.dart';
import 'package:openapi/src/model/achievement_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'i_achievement_collection_or_chapter_header.g.dart';

/// IAchievementCollectionOrChapterHeader
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [list] 
/// * [title] 
@BuiltValue()
abstract class IAchievementCollectionOrChapterHeader implements Built<IAchievementCollectionOrChapterHeader, IAchievementCollectionOrChapterHeaderBuilder> {
  /// One Of [AchievementCollection], [ChapterHeader]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'achievement_collection': AchievementCollection,
    r'chapter_header': ChapterHeader,
  };

  IAchievementCollectionOrChapterHeader._();

  factory IAchievementCollectionOrChapterHeader([void updates(IAchievementCollectionOrChapterHeaderBuilder b)]) = _$IAchievementCollectionOrChapterHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IAchievementCollectionOrChapterHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IAchievementCollectionOrChapterHeader> get serializer => _$IAchievementCollectionOrChapterHeaderSerializer();
}

extension IAchievementCollectionOrChapterHeaderDiscriminatorExt on IAchievementCollectionOrChapterHeader {
    String? get discriminatorValue {
        if (this is AchievementCollection) {
            return r'achievement_collection';
        }
        if (this is ChapterHeader) {
            return r'chapter_header';
        }
        return null;
    }
}
extension IAchievementCollectionOrChapterHeaderBuilderDiscriminatorExt on IAchievementCollectionOrChapterHeaderBuilder {
    String? get discriminatorValue {
        if (this is AchievementCollectionBuilder) {
            return r'achievement_collection';
        }
        if (this is ChapterHeaderBuilder) {
            return r'chapter_header';
        }
        return null;
    }
}

class _$IAchievementCollectionOrChapterHeaderSerializer implements PrimitiveSerializer<IAchievementCollectionOrChapterHeader> {
  @override
  final Iterable<Type> types = const [IAchievementCollectionOrChapterHeader, _$IAchievementCollectionOrChapterHeader];

  @override
  final String wireName = r'IAchievementCollectionOrChapterHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IAchievementCollectionOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    IAchievementCollectionOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  IAchievementCollectionOrChapterHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IAchievementCollectionOrChapterHeaderBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(IAchievementCollectionOrChapterHeader.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [AchievementCollection, ChapterHeader, ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'achievement_collection':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(AchievementCollection),
        ) as AchievementCollection;
        oneOfType = AchievementCollection;
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

class IAchievementCollectionOrChapterHeaderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'achievement_collection')
  static const IAchievementCollectionOrChapterHeaderTypeEnum achievementCollection = _$iAchievementCollectionOrChapterHeaderTypeEnum_achievementCollection;
  @BuiltValueEnumConst(wireName: r'chapter_header')
  static const IAchievementCollectionOrChapterHeaderTypeEnum chapterHeader = _$iAchievementCollectionOrChapterHeaderTypeEnum_chapterHeader;

  static Serializer<IAchievementCollectionOrChapterHeaderTypeEnum> get serializer => _$iAchievementCollectionOrChapterHeaderTypeEnumSerializer;

  const IAchievementCollectionOrChapterHeaderTypeEnum._(String name): super(name);

  static BuiltSet<IAchievementCollectionOrChapterHeaderTypeEnum> get values => _$iAchievementCollectionOrChapterHeaderTypeEnumValues;
  static IAchievementCollectionOrChapterHeaderTypeEnum valueOf(String name) => _$iAchievementCollectionOrChapterHeaderTypeEnumValueOf(name);
}

