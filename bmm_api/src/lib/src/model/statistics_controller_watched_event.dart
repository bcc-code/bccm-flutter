//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'statistics_controller_watched_event.g.dart';

/// StatisticsControllerWatchedEvent
///
/// Properties:
/// * [episodeId] 
/// * [timestampStart] 
/// * [language] 
/// * [playbackOrigin] 
/// * [lastPosition] 
/// * [adjustedPlaybackSpeed] 
/// * [os] 
@BuiltValue()
abstract class StatisticsControllerWatchedEvent implements Built<StatisticsControllerWatchedEvent, StatisticsControllerWatchedEventBuilder> {
  @BuiltValueField(wireName: r'episode_id')
  String? get episodeId;

  @BuiltValueField(wireName: r'timestamp_start')
  DateTime? get timestampStart;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'playback_origin')
  String? get playbackOrigin;

  @BuiltValueField(wireName: r'last_position')
  int? get lastPosition;

  @BuiltValueField(wireName: r'adjusted_playback_speed')
  double? get adjustedPlaybackSpeed;

  @BuiltValueField(wireName: r'os')
  String? get os;

  StatisticsControllerWatchedEvent._();

  factory StatisticsControllerWatchedEvent([void updates(StatisticsControllerWatchedEventBuilder b)]) = _$StatisticsControllerWatchedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatisticsControllerWatchedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatisticsControllerWatchedEvent> get serializer => _$StatisticsControllerWatchedEventSerializer();
}

class _$StatisticsControllerWatchedEventSerializer implements PrimitiveSerializer<StatisticsControllerWatchedEvent> {
  @override
  final Iterable<Type> types = const [StatisticsControllerWatchedEvent, _$StatisticsControllerWatchedEvent];

  @override
  final String wireName = r'StatisticsControllerWatchedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatisticsControllerWatchedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.episodeId != null) {
      yield r'episode_id';
      yield serializers.serialize(
        object.episodeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampStart != null) {
      yield r'timestamp_start';
      yield serializers.serialize(
        object.timestampStart,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.playbackOrigin != null) {
      yield r'playback_origin';
      yield serializers.serialize(
        object.playbackOrigin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastPosition != null) {
      yield r'last_position';
      yield serializers.serialize(
        object.lastPosition,
        specifiedType: const FullType(int),
      );
    }
    if (object.adjustedPlaybackSpeed != null) {
      yield r'adjusted_playback_speed';
      yield serializers.serialize(
        object.adjustedPlaybackSpeed,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.os != null) {
      yield r'os';
      yield serializers.serialize(
        object.os,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatisticsControllerWatchedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StatisticsControllerWatchedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'episode_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.episodeId = valueDes;
          break;
        case r'timestamp_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestampStart = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'playback_origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.playbackOrigin = valueDes;
          break;
        case r'last_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastPosition = valueDes;
          break;
        case r'adjusted_playback_speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.adjustedPlaybackSpeed = valueDes;
          break;
        case r'os':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.os = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatisticsControllerWatchedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatisticsControllerWatchedEventBuilder();
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

