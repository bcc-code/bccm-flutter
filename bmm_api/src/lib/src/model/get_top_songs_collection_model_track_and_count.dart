//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/track_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_top_songs_collection_model_track_and_count.g.dart';

/// GetTopSongsCollectionModelTrackAndCount
///
/// Properties:
/// * [track] 
/// * [playCount] 
@BuiltValue()
abstract class GetTopSongsCollectionModelTrackAndCount implements Built<GetTopSongsCollectionModelTrackAndCount, GetTopSongsCollectionModelTrackAndCountBuilder> {
  @BuiltValueField(wireName: r'track')
  TrackModel? get track;

  @BuiltValueField(wireName: r'play_count')
  int? get playCount;

  GetTopSongsCollectionModelTrackAndCount._();

  factory GetTopSongsCollectionModelTrackAndCount([void updates(GetTopSongsCollectionModelTrackAndCountBuilder b)]) = _$GetTopSongsCollectionModelTrackAndCount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetTopSongsCollectionModelTrackAndCountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetTopSongsCollectionModelTrackAndCount> get serializer => _$GetTopSongsCollectionModelTrackAndCountSerializer();
}

class _$GetTopSongsCollectionModelTrackAndCountSerializer implements PrimitiveSerializer<GetTopSongsCollectionModelTrackAndCount> {
  @override
  final Iterable<Type> types = const [GetTopSongsCollectionModelTrackAndCount, _$GetTopSongsCollectionModelTrackAndCount];

  @override
  final String wireName = r'GetTopSongsCollectionModelTrackAndCount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetTopSongsCollectionModelTrackAndCount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.track != null) {
      yield r'track';
      yield serializers.serialize(
        object.track,
        specifiedType: const FullType(TrackModel),
      );
    }
    if (object.playCount != null) {
      yield r'play_count';
      yield serializers.serialize(
        object.playCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetTopSongsCollectionModelTrackAndCount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetTopSongsCollectionModelTrackAndCountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'track':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModel),
          ) as TrackModel;
          result.track.replace(valueDes);
          break;
        case r'play_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.playCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetTopSongsCollectionModelTrackAndCount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTopSongsCollectionModelTrackAndCountBuilder();
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

