//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/track_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_track_collection_model.g.dart';

/// GetTrackCollectionModel
///
/// Properties:
/// * [type] 
/// * [id] 
/// * [name] 
/// * [description] 
/// * [followerCount] 
/// * [shareLink] 
/// * [authorName] 
/// * [canEdit] 
/// * [tracks] 
/// * [useLikeIcon] 
@BuiltValue()
abstract class GetTrackCollectionModel implements Built<GetTrackCollectionModel, GetTrackCollectionModelBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'follower_count')
  int? get followerCount;

  @BuiltValueField(wireName: r'share_link')
  String? get shareLink;

  @BuiltValueField(wireName: r'author_name')
  String? get authorName;

  @BuiltValueField(wireName: r'can_edit')
  bool? get canEdit;

  @BuiltValueField(wireName: r'tracks')
  BuiltList<TrackModel>? get tracks;

  @BuiltValueField(wireName: r'use_like_icon')
  bool? get useLikeIcon;

  GetTrackCollectionModel._();

  factory GetTrackCollectionModel([void updates(GetTrackCollectionModelBuilder b)]) = _$GetTrackCollectionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTrackCollectionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTrackCollectionModel> get serializer => _$GetTrackCollectionModelSerializer();
}

class _$GetTrackCollectionModelSerializer implements PrimitiveSerializer<GetTrackCollectionModel> {
  @override
  final Iterable<Type> types = const [GetTrackCollectionModel, _$GetTrackCollectionModel];

  @override
  final String wireName = r'GetTrackCollectionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTrackCollectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.followerCount != null) {
      yield r'follower_count';
      yield serializers.serialize(
        object.followerCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.shareLink != null) {
      yield r'share_link';
      yield serializers.serialize(
        object.shareLink,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.authorName != null) {
      yield r'author_name';
      yield serializers.serialize(
        object.authorName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.canEdit != null) {
      yield r'can_edit';
      yield serializers.serialize(
        object.canEdit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tracks != null) {
      yield r'tracks';
      yield serializers.serialize(
        object.tracks,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModel)]),
      );
    }
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
    GetTrackCollectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTrackCollectionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'follower_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.followerCount = valueDes;
          break;
        case r'share_link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shareLink = valueDes;
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
        case r'tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModel)]),
          ) as BuiltList<TrackModel>?;
          if (valueDes == null) continue;
          result.tracks.replace(valueDes);
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
  GetTrackCollectionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTrackCollectionModelBuilder();
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

