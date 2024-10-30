//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/i_achievement_collection_or_chapter_header.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_list_i_achievement_collection_or_chapter_header.g.dart';

/// DocumentListIAchievementCollectionOrChapterHeader
///
/// Properties:
/// * [title] 
/// * [translationParent] 
/// * [translationId] 
/// * [supportsPaging] 
/// * [items] 
/// * [totalItems] 
@BuiltValue()
abstract class DocumentListIAchievementCollectionOrChapterHeader implements Built<DocumentListIAchievementCollectionOrChapterHeader, DocumentListIAchievementCollectionOrChapterHeaderBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @Deprecated('translationParent has been deprecated')
  @BuiltValueField(wireName: r'translation_parent')
  String? get translationParent;

  @Deprecated('translationId has been deprecated')
  @BuiltValueField(wireName: r'translation_id')
  String? get translationId;

  @BuiltValueField(wireName: r'supports_paging')
  bool? get supportsPaging;

  @BuiltValueField(wireName: r'items')
  BuiltList<IAchievementCollectionOrChapterHeader>? get items;

  @BuiltValueField(wireName: r'total_items')
  int? get totalItems;

  DocumentListIAchievementCollectionOrChapterHeader._();

  factory DocumentListIAchievementCollectionOrChapterHeader([void updates(DocumentListIAchievementCollectionOrChapterHeaderBuilder b)]) = _$DocumentListIAchievementCollectionOrChapterHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocumentListIAchievementCollectionOrChapterHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocumentListIAchievementCollectionOrChapterHeader> get serializer => _$DocumentListIAchievementCollectionOrChapterHeaderSerializer();
}

class _$DocumentListIAchievementCollectionOrChapterHeaderSerializer implements PrimitiveSerializer<DocumentListIAchievementCollectionOrChapterHeader> {
  @override
  final Iterable<Type> types = const [DocumentListIAchievementCollectionOrChapterHeader, _$DocumentListIAchievementCollectionOrChapterHeader];

  @override
  final String wireName = r'DocumentListIAchievementCollectionOrChapterHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocumentListIAchievementCollectionOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.translationParent != null) {
      yield r'translation_parent';
      yield serializers.serialize(
        object.translationParent,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.translationId != null) {
      yield r'translation_id';
      yield serializers.serialize(
        object.translationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supportsPaging != null) {
      yield r'supports_paging';
      yield serializers.serialize(
        object.supportsPaging,
        specifiedType: const FullType(bool),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(BuiltList, [FullType(IAchievementCollectionOrChapterHeader)]),
      );
    }
    if (object.totalItems != null) {
      yield r'total_items';
      yield serializers.serialize(
        object.totalItems,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DocumentListIAchievementCollectionOrChapterHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DocumentListIAchievementCollectionOrChapterHeaderBuilder result,
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
        case r'translation_parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.translationParent = valueDes;
          break;
        case r'translation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.translationId = valueDes;
          break;
        case r'supports_paging':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.supportsPaging = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(IAchievementCollectionOrChapterHeader)]),
          ) as BuiltList<IAchievementCollectionOrChapterHeader>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'total_items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalItems = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DocumentListIAchievementCollectionOrChapterHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentListIAchievementCollectionOrChapterHeaderBuilder();
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
