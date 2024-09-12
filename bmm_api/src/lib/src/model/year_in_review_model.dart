//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'year_in_review_model.g.dart';

/// YearInReviewModel
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [title] 
/// * [description] 
/// * [buttonTitle] 
/// * [buttonLink] 
/// * [playlistName] 
@BuiltValue()
abstract class YearInReviewModel implements Built<YearInReviewModel, YearInReviewModelBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  YearInReviewModelTypeEnum get type;
  // enum typeEnum {  year_in_review,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'button_title')
  String? get buttonTitle;

  @BuiltValueField(wireName: r'button_link')
  String? get buttonLink;

  @BuiltValueField(wireName: r'playlist_name')
  String? get playlistName;

  YearInReviewModel._();

  factory YearInReviewModel([void updates(YearInReviewModelBuilder b)]) = _$YearInReviewModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(YearInReviewModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<YearInReviewModel> get serializer => _$YearInReviewModelSerializer();
}

class _$YearInReviewModelSerializer implements PrimitiveSerializer<YearInReviewModel> {
  @override
  final Iterable<Type> types = const [YearInReviewModel, _$YearInReviewModel];

  @override
  final String wireName = r'YearInReviewModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    YearInReviewModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(YearInReviewModelTypeEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
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
    if (object.buttonTitle != null) {
      yield r'button_title';
      yield serializers.serialize(
        object.buttonTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buttonLink != null) {
      yield r'button_link';
      yield serializers.serialize(
        object.buttonLink,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.playlistName != null) {
      yield r'playlist_name';
      yield serializers.serialize(
        object.playlistName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    YearInReviewModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required YearInReviewModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(YearInReviewModelTypeEnum),
          ) as YearInReviewModelTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'button_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buttonTitle = valueDes;
          break;
        case r'button_link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buttonLink = valueDes;
          break;
        case r'playlist_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.playlistName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  YearInReviewModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = YearInReviewModelBuilder();
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

class YearInReviewModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'year_in_review')
  static const YearInReviewModelTypeEnum yearInReview = _$yearInReviewModelTypeEnum_yearInReview;

  static Serializer<YearInReviewModelTypeEnum> get serializer => _$yearInReviewModelTypeEnumSerializer;

  const YearInReviewModelTypeEnum._(String name): super(name);

  static BuiltSet<YearInReviewModelTypeEnum> get values => _$yearInReviewModelTypeEnumValues;
  static YearInReviewModelTypeEnum valueOf(String name) => _$yearInReviewModelTypeEnumValueOf(name);
}

