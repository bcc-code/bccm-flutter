//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/i_all_document_models.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_list_i_all_document_models.g.dart';

/// DocumentListIAllDocumentModels
///
/// Properties:
/// * [title] 
/// * [translationParent] 
/// * [translationId] 
/// * [supportsPaging] 
/// * [items] 
/// * [totalItems] 
@BuiltValue()
abstract class DocumentListIAllDocumentModels implements Built<DocumentListIAllDocumentModels, DocumentListIAllDocumentModelsBuilder> {
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
  BuiltList<IAllDocumentModels>? get items;

  @BuiltValueField(wireName: r'total_items')
  int? get totalItems;

  DocumentListIAllDocumentModels._();

  factory DocumentListIAllDocumentModels([void updates(DocumentListIAllDocumentModelsBuilder b)]) = _$DocumentListIAllDocumentModels;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocumentListIAllDocumentModelsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocumentListIAllDocumentModels> get serializer => _$DocumentListIAllDocumentModelsSerializer();
}

class _$DocumentListIAllDocumentModelsSerializer implements PrimitiveSerializer<DocumentListIAllDocumentModels> {
  @override
  final Iterable<Type> types = const [DocumentListIAllDocumentModels, _$DocumentListIAllDocumentModels];

  @override
  final String wireName = r'DocumentListIAllDocumentModels';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocumentListIAllDocumentModels object, {
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
        specifiedType: const FullType.nullable(BuiltList, [FullType(IAllDocumentModels)]),
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
    DocumentListIAllDocumentModels object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DocumentListIAllDocumentModelsBuilder result,
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
            specifiedType: const FullType.nullable(BuiltList, [FullType(IAllDocumentModels)]),
          ) as BuiltList<IAllDocumentModels>?;
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
  DocumentListIAllDocumentModels deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentListIAllDocumentModelsBuilder();
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

