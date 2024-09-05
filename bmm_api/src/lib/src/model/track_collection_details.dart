//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_collection_details.g.dart';

/// TrackCollectionDetails
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [trackCount] 
/// * [followerCount] 
/// * [authorName] 
/// * [canEdit] 
/// * [useLikeIcon] 
@BuiltValue()
abstract class TrackCollectionDetails implements Built<TrackCollectionDetails, TrackCollectionDetailsBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'track_count')
  int? get trackCount;

  @BuiltValueField(wireName: r'follower_count')
  int get followerCount;

  @BuiltValueField(wireName: r'author_name')
  String? get authorName;

  @BuiltValueField(wireName: r'can_edit')
  bool get canEdit;

  @BuiltValueField(wireName: r'use_like_icon')
  bool? get useLikeIcon;

  TrackCollectionDetails._();

  factory TrackCollectionDetails([void updates(TrackCollectionDetailsBuilder b)]) = _$TrackCollectionDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackCollectionDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackCollectionDetails> get serializer => _$TrackCollectionDetailsSerializer();
}

class _$TrackCollectionDetailsSerializer implements PrimitiveSerializer<TrackCollectionDetails> {
  @override
  final Iterable<Type> types = const [TrackCollectionDetails, _$TrackCollectionDetails];

  @override
  final String wireName = r'TrackCollectionDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackCollectionDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.trackCount != null) {
      yield r'track_count';
      yield serializers.serialize(
        object.trackCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'follower_count';
    yield serializers.serialize(
      object.followerCount,
      specifiedType: const FullType(int),
    );
    if (object.authorName != null) {
      yield r'author_name';
      yield serializers.serialize(
        object.authorName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'can_edit';
    yield serializers.serialize(
      object.canEdit,
      specifiedType: const FullType(bool),
    );
    if (object.useLikeIcon != null) {
      yield r'use_like_icon';
      yield serializers.serialize(
        object.useLikeIcon,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackCollectionDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackCollectionDetailsBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'track_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.trackCount = valueDes;
          break;
        case r'follower_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followerCount = valueDes;
          break;
        case r'author_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authorName = valueDes;
          break;
        case r'can_edit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canEdit = valueDes;
          break;
        case r'use_like_icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useLikeIcon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackCollectionDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackCollectionDetailsBuilder();
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

