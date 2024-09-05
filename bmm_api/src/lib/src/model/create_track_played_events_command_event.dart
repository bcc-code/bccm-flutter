//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/resource_availability.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/track_subtype.dart';
import 'package:openapi/src/model/listened_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_track_played_events_command_event.g.dart';

/// CreateTrackPlayedEventsCommandEvent
///
/// Properties:
/// * [id] 
/// * [personId] 
/// * [trackId] 
/// * [uniqueSecondsListened] 
/// * [status] 
/// * [percentage] 
/// * [trackLength] 
/// * [timestampStart] 
/// * [timestampEnd] 
/// * [spentTime] 
/// * [typeOfTrack] 
/// * [availability] 
/// * [albumId] 
/// * [tags] 
/// * [sentAfterStartup] 
/// * [language] 
/// * [playbackOrigin] 
/// * [lastPosition] 
/// * [adjustedPlaybackSpeed] 
/// * [client] 
@BuiltValue()
abstract class CreateTrackPlayedEventsCommandEvent implements Built<CreateTrackPlayedEventsCommandEvent, CreateTrackPlayedEventsCommandEventBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'person_id')
  int? get personId;

  @BuiltValueField(wireName: r'track_id')
  int? get trackId;

  @BuiltValueField(wireName: r'unique_seconds_listened')
  double? get uniqueSecondsListened;

  @BuiltValueField(wireName: r'status')
  ListenedStatus? get status;
  // enum statusEnum {  PartialFromBeginning,  Jumped,  SkippedBeginning,  Complete,  Skipped,  };

  @BuiltValueField(wireName: r'percentage')
  double? get percentage;

  @BuiltValueField(wireName: r'track_length')
  double? get trackLength;

  @BuiltValueField(wireName: r'timestamp_start')
  DateTime? get timestampStart;

  @BuiltValueField(wireName: r'timestamp_end')
  DateTime? get timestampEnd;

  @BuiltValueField(wireName: r'spent_time')
  double? get spentTime;

  @BuiltValueField(wireName: r'type_of_track')
  TrackSubtype? get typeOfTrack;
  // enum typeOfTrackEnum {  song,  speech,  audiobook,  singsong,  exegesis,  video,  live,  };

  @BuiltValueField(wireName: r'availability')
  ResourceAvailability? get availability;
  // enum availabilityEnum {  Remote,  Local,  };

  @BuiltValueField(wireName: r'album_id')
  int? get albumId;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'sent_after_startup')
  bool? get sentAfterStartup;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'playback_origin')
  String? get playbackOrigin;

  @BuiltValueField(wireName: r'last_position')
  int? get lastPosition;

  @BuiltValueField(wireName: r'adjusted_playback_speed')
  double? get adjustedPlaybackSpeed;

  @BuiltValueField(wireName: r'client')
  String? get client;

  CreateTrackPlayedEventsCommandEvent._();

  factory CreateTrackPlayedEventsCommandEvent([void updates(CreateTrackPlayedEventsCommandEventBuilder b)]) = _$CreateTrackPlayedEventsCommandEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTrackPlayedEventsCommandEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTrackPlayedEventsCommandEvent> get serializer => _$CreateTrackPlayedEventsCommandEventSerializer();
}

class _$CreateTrackPlayedEventsCommandEventSerializer implements PrimitiveSerializer<CreateTrackPlayedEventsCommandEvent> {
  @override
  final Iterable<Type> types = const [CreateTrackPlayedEventsCommandEvent, _$CreateTrackPlayedEventsCommandEvent];

  @override
  final String wireName = r'CreateTrackPlayedEventsCommandEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTrackPlayedEventsCommandEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.personId != null) {
      yield r'person_id';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.trackId != null) {
      yield r'track_id';
      yield serializers.serialize(
        object.trackId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.uniqueSecondsListened != null) {
      yield r'unique_seconds_listened';
      yield serializers.serialize(
        object.uniqueSecondsListened,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ListenedStatus),
      );
    }
    if (object.percentage != null) {
      yield r'percentage';
      yield serializers.serialize(
        object.percentage,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.trackLength != null) {
      yield r'track_length';
      yield serializers.serialize(
        object.trackLength,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.timestampStart != null) {
      yield r'timestamp_start';
      yield serializers.serialize(
        object.timestampStart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.timestampEnd != null) {
      yield r'timestamp_end';
      yield serializers.serialize(
        object.timestampEnd,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.spentTime != null) {
      yield r'spent_time';
      yield serializers.serialize(
        object.spentTime,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.typeOfTrack != null) {
      yield r'type_of_track';
      yield serializers.serialize(
        object.typeOfTrack,
        specifiedType: const FullType(TrackSubtype),
      );
    }
    if (object.availability != null) {
      yield r'availability';
      yield serializers.serialize(
        object.availability,
        specifiedType: const FullType(ResourceAvailability),
      );
    }
    if (object.albumId != null) {
      yield r'album_id';
      yield serializers.serialize(
        object.albumId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.sentAfterStartup != null) {
      yield r'sent_after_startup';
      yield serializers.serialize(
        object.sentAfterStartup,
        specifiedType: const FullType.nullable(bool),
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
    if (object.client != null) {
      yield r'client';
      yield serializers.serialize(
        object.client,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTrackPlayedEventsCommandEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTrackPlayedEventsCommandEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'person_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.personId = valueDes;
          break;
        case r'track_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.trackId = valueDes;
          break;
        case r'unique_seconds_listened':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.uniqueSecondsListened = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListenedStatus),
          ) as ListenedStatus;
          result.status = valueDes;
          break;
        case r'percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.percentage = valueDes;
          break;
        case r'track_length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.trackLength = valueDes;
          break;
        case r'timestamp_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timestampStart = valueDes;
          break;
        case r'timestamp_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.timestampEnd = valueDes;
          break;
        case r'spent_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.spentTime = valueDes;
          break;
        case r'type_of_track':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackSubtype),
          ) as TrackSubtype;
          result.typeOfTrack = valueDes;
          break;
        case r'availability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceAvailability),
          ) as ResourceAvailability;
          result.availability = valueDes;
          break;
        case r'album_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.albumId = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'sent_after_startup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sentAfterStartup = valueDes;
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
        case r'client':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.client = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTrackPlayedEventsCommandEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrackPlayedEventsCommandEventBuilder();
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

