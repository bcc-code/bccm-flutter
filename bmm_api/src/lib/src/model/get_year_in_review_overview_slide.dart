//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_year_in_review_overview_slide.g.dart';

/// GetYearInReviewOverviewSlide
///
/// Properties:
/// * [url] 
/// * [subtitle] 
/// * [description] 
/// * [color] 
@BuiltValue()
abstract class GetYearInReviewOverviewSlide implements Built<GetYearInReviewOverviewSlide, GetYearInReviewOverviewSlideBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'color')
  String? get color;

  GetYearInReviewOverviewSlide._();

  factory GetYearInReviewOverviewSlide([void updates(GetYearInReviewOverviewSlideBuilder b)]) = _$GetYearInReviewOverviewSlide;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetYearInReviewOverviewSlideBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetYearInReviewOverviewSlide> get serializer => _$GetYearInReviewOverviewSlideSerializer();
}

class _$GetYearInReviewOverviewSlideSerializer implements PrimitiveSerializer<GetYearInReviewOverviewSlide> {
  @override
  final Iterable<Type> types = const [GetYearInReviewOverviewSlide, _$GetYearInReviewOverviewSlide];

  @override
  final String wireName = r'GetYearInReviewOverviewSlide';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetYearInReviewOverviewSlide object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetYearInReviewOverviewSlide object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetYearInReviewOverviewSlideBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetYearInReviewOverviewSlide deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetYearInReviewOverviewSlideBuilder();
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

