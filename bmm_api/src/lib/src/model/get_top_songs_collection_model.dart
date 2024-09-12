//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/get_top_songs_collection_model_track_and_count.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_top_songs_collection_model.g.dart';

/// GetTopSongsCollectionModel
///
/// Properties:
/// * [type] 
/// * [id] 
/// * [pageTitle] 
/// * [name] 
/// * [tracks] 
@BuiltValue()
abstract class GetTopSongsCollectionModel implements Built<GetTopSongsCollectionModel, GetTopSongsCollectionModelBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'page_title')
  String? get pageTitle;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'tracks')
  BuiltList<GetTopSongsCollectionModelTrackAndCount>? get tracks;

  GetTopSongsCollectionModel._();

  factory GetTopSongsCollectionModel([void updates(GetTopSongsCollectionModelBuilder b)]) = _$GetTopSongsCollectionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTopSongsCollectionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTopSongsCollectionModel> get serializer => _$GetTopSongsCollectionModelSerializer();
}

class _$GetTopSongsCollectionModelSerializer implements PrimitiveSerializer<GetTopSongsCollectionModel> {
  @override
  final Iterable<Type> types = const [GetTopSongsCollectionModel, _$GetTopSongsCollectionModel];

  @override
  final String wireName = r'GetTopSongsCollectionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTopSongsCollectionModel object, {
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
    if (object.pageTitle != null) {
      yield r'page_title';
      yield serializers.serialize(
        object.pageTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tracks != null) {
      yield r'tracks';
      yield serializers.serialize(
        object.tracks,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GetTopSongsCollectionModelTrackAndCount)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetTopSongsCollectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTopSongsCollectionModelBuilder result,
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
        case r'page_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pageTitle = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'tracks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GetTopSongsCollectionModelTrackAndCount)]),
          ) as BuiltList<GetTopSongsCollectionModelTrackAndCount>?;
          if (valueDes == null) continue;
          result.tracks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetTopSongsCollectionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTopSongsCollectionModelBuilder();
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

