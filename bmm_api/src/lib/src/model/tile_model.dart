//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/track_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tile_model.g.dart';

/// TileModel
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [backgroundColor] 
/// * [coverUrl] 
/// * [title] 
/// * [label] 
/// * [date] 
/// * [subtitle] 
/// * [percentage] 
/// * [showAllLink] 
/// * [shufflePodcastId] 
/// * [lastPositionInMs] 
/// * [track] 
@BuiltValue()
abstract class TileModel implements Built<TileModel, TileModelBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  TileModelTypeEnum get type;
  // enum typeEnum {  Tile,  };

  @BuiltValueField(wireName: r'background_color')
  String? get backgroundColor;

  @BuiltValueField(wireName: r'cover_url')
  String? get coverUrl;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'date')
  DateTime? get date;

  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  @BuiltValueField(wireName: r'percentage')
  int? get percentage;

  @BuiltValueField(wireName: r'show_all_link')
  String? get showAllLink;

  @BuiltValueField(wireName: r'shuffle_podcast_id')
  int? get shufflePodcastId;

  @BuiltValueField(wireName: r'last_position_in_ms')
  int? get lastPositionInMs;

  @BuiltValueField(wireName: r'track')
  TrackModel? get track;

  TileModel._();

  factory TileModel([void updates(TileModelBuilder b)]) = _$TileModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TileModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TileModel> get serializer => _$TileModelSerializer();
}

class _$TileModelSerializer implements PrimitiveSerializer<TileModel> {
  @override
  final Iterable<Type> types = const [TileModel, _$TileModel];

  @override
  final String wireName = r'TileModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TileModel object, {
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
      specifiedType: const FullType(TileModelTypeEnum),
    );
    if (object.backgroundColor != null) {
      yield r'background_color';
      yield serializers.serialize(
        object.backgroundColor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coverUrl != null) {
      yield r'cover_url';
      yield serializers.serialize(
        object.coverUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.percentage != null) {
      yield r'percentage';
      yield serializers.serialize(
        object.percentage,
        specifiedType: const FullType(int),
      );
    }
    if (object.showAllLink != null) {
      yield r'show_all_link';
      yield serializers.serialize(
        object.showAllLink,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shufflePodcastId != null) {
      yield r'shuffle_podcast_id';
      yield serializers.serialize(
        object.shufflePodcastId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastPositionInMs != null) {
      yield r'last_position_in_ms';
      yield serializers.serialize(
        object.lastPositionInMs,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.track != null) {
      yield r'track';
      yield serializers.serialize(
        object.track,
        specifiedType: const FullType(TrackModel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TileModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TileModelBuilder result,
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
            specifiedType: const FullType(TileModelTypeEnum),
          ) as TileModelTypeEnum;
          result.type = valueDes;
          break;
        case r'background_color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.backgroundColor = valueDes;
          break;
        case r'cover_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coverUrl = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.percentage = valueDes;
          break;
        case r'show_all_link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.showAllLink = valueDes;
          break;
        case r'shuffle_podcast_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.shufflePodcastId = valueDes;
          break;
        case r'last_position_in_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastPositionInMs = valueDes;
          break;
        case r'track':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModel),
          ) as TrackModel;
          result.track.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TileModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TileModelBuilder();
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

class TileModelTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Tile')
  static const TileModelTypeEnum tile = _$tileModelTypeEnum_tile;

  static Serializer<TileModelTypeEnum> get serializer => _$tileModelTypeEnumSerializer;

  const TileModelTypeEnum._(String name): super(name);

  static BuiltSet<TileModelTypeEnum> get values => _$tileModelTypeEnumValues;
  static TileModelTypeEnum valueOf(String name) => _$tileModelTypeEnumValueOf(name);
}

