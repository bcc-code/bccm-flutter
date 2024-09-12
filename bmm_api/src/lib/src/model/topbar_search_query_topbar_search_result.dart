//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'topbar_search_query_topbar_search_result.g.dart';

/// TopbarSearchQueryTopbarSearchResult
///
/// Properties:
/// * [title] 
/// * [subtitle] 
/// * [image] 
/// * [url] 
@BuiltValue()
abstract class TopbarSearchQueryTopbarSearchResult implements Built<TopbarSearchQueryTopbarSearchResult, TopbarSearchQueryTopbarSearchResultBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'image')
  String? get image;

  @BuiltValueField(wireName: r'url')
  String? get url;

  TopbarSearchQueryTopbarSearchResult._();

  factory TopbarSearchQueryTopbarSearchResult([void updates(TopbarSearchQueryTopbarSearchResultBuilder b)]) = _$TopbarSearchQueryTopbarSearchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TopbarSearchQueryTopbarSearchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TopbarSearchQueryTopbarSearchResult> get serializer => _$TopbarSearchQueryTopbarSearchResultSerializer();
}

class _$TopbarSearchQueryTopbarSearchResultSerializer implements PrimitiveSerializer<TopbarSearchQueryTopbarSearchResult> {
  @override
  final Iterable<Type> types = const [TopbarSearchQueryTopbarSearchResult, _$TopbarSearchQueryTopbarSearchResult];

  @override
  final String wireName = r'TopbarSearchQueryTopbarSearchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TopbarSearchQueryTopbarSearchResult object, {
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
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TopbarSearchQueryTopbarSearchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TopbarSearchQueryTopbarSearchResultBuilder result,
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
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.image = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TopbarSearchQueryTopbarSearchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TopbarSearchQueryTopbarSearchResultBuilder();
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

