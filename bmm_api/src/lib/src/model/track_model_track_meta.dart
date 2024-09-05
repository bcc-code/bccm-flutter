//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/track_model_parent.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_track_meta.g.dart';

/// TrackModelTrackMeta
///
/// Properties:
/// * [parent] 
/// * [rootParent] 
/// * [rootParentId] 
/// * [modifiedAt] 
/// * [modifiedBy] 
/// * [isVisible] 
/// * [title] 
/// * [language] 
/// * [album] 
/// * [tracknumber] 
/// * [artist] 
/// * [lyricist] 
/// * [composer] 
/// * [publisher] 
/// * [itunescompilation] 
/// * [attachedPicture] 
/// * [time] 
/// * [date] 
/// * [year] 
/// * [copyright] 
@BuiltValue()
abstract class TrackModelTrackMeta implements Built<TrackModelTrackMeta, TrackModelTrackMetaBuilder> {
  @BuiltValueField(wireName: r'parent')
  TrackModelParent? get parent;

  @BuiltValueField(wireName: r'root_parent')
  TrackModelParent? get rootParent;

  @BuiltValueField(wireName: r'root_parent_id')
  int? get rootParentId;

  @BuiltValueField(wireName: r'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: r'modified_by')
  String? get modifiedBy;

  @BuiltValueField(wireName: r'is_visible')
  bool? get isVisible;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'album')
  String? get album;

  @BuiltValueField(wireName: r'tracknumber')
  int? get tracknumber;

  @BuiltValueField(wireName: r'artist')
  String? get artist;

  @BuiltValueField(wireName: r'lyricist')
  String? get lyricist;

  @BuiltValueField(wireName: r'composer')
  String? get composer;

  @BuiltValueField(wireName: r'publisher')
  String? get publisher;

  @BuiltValueField(wireName: r'itunescompilation')
  int? get itunescompilation;

  @BuiltValueField(wireName: r'attached_picture')
  String? get attachedPicture;

  @BuiltValueField(wireName: r'time')
  String? get time;

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'year')
  String? get year;

  @BuiltValueField(wireName: r'copyright')
  String? get copyright;

  TrackModelTrackMeta._();

  factory TrackModelTrackMeta([void updates(TrackModelTrackMetaBuilder b)]) = _$TrackModelTrackMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelTrackMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelTrackMeta> get serializer => _$TrackModelTrackMetaSerializer();
}

class _$TrackModelTrackMetaSerializer implements PrimitiveSerializer<TrackModelTrackMeta> {
  @override
  final Iterable<Type> types = const [TrackModelTrackMeta, _$TrackModelTrackMeta];

  @override
  final String wireName = r'TrackModelTrackMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelTrackMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType(TrackModelParent),
      );
    }
    if (object.rootParent != null) {
      yield r'root_parent';
      yield serializers.serialize(
        object.rootParent,
        specifiedType: const FullType(TrackModelParent),
      );
    }
    if (object.rootParentId != null) {
      yield r'root_parent_id';
      yield serializers.serialize(
        object.rootParentId,
        specifiedType: const FullType(int),
      );
    }
    if (object.modifiedAt != null) {
      yield r'modified_at';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.modifiedBy != null) {
      yield r'modified_by';
      yield serializers.serialize(
        object.modifiedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isVisible != null) {
      yield r'is_visible';
      yield serializers.serialize(
        object.isVisible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.album != null) {
      yield r'album';
      yield serializers.serialize(
        object.album,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tracknumber != null) {
      yield r'tracknumber';
      yield serializers.serialize(
        object.tracknumber,
        specifiedType: const FullType(int),
      );
    }
    if (object.artist != null) {
      yield r'artist';
      yield serializers.serialize(
        object.artist,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lyricist != null) {
      yield r'lyricist';
      yield serializers.serialize(
        object.lyricist,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.composer != null) {
      yield r'composer';
      yield serializers.serialize(
        object.composer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publisher != null) {
      yield r'publisher';
      yield serializers.serialize(
        object.publisher,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itunescompilation != null) {
      yield r'itunescompilation';
      yield serializers.serialize(
        object.itunescompilation,
        specifiedType: const FullType(int),
      );
    }
    if (object.attachedPicture != null) {
      yield r'attached_picture';
      yield serializers.serialize(
        object.attachedPicture,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.copyright != null) {
      yield r'copyright';
      yield serializers.serialize(
        object.copyright,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelTrackMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelTrackMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModelParent),
          ) as TrackModelParent;
          result.parent.replace(valueDes);
          break;
        case r'root_parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModelParent),
          ) as TrackModelParent;
          result.rootParent.replace(valueDes);
          break;
        case r'root_parent_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rootParentId = valueDes;
          break;
        case r'modified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.modifiedAt = valueDes;
          break;
        case r'modified_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.modifiedBy = valueDes;
          break;
        case r'is_visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVisible = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'album':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.album = valueDes;
          break;
        case r'tracknumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tracknumber = valueDes;
          break;
        case r'artist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.artist = valueDes;
          break;
        case r'lyricist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lyricist = valueDes;
          break;
        case r'composer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.composer = valueDes;
          break;
        case r'publisher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publisher = valueDes;
          break;
        case r'itunescompilation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.itunescompilation = valueDes;
          break;
        case r'attached_picture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attachedPicture = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.year = valueDes;
          break;
        case r'copyright':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.copyright = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelTrackMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelTrackMetaBuilder();
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

