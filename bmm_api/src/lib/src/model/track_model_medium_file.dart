//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_medium_file.g.dart';

/// TrackModelMediumFile
///
/// Properties:
/// * [mimeType] 
/// * [size] 
/// * [duration] 
/// * [url] 
@BuiltValue()
abstract class TrackModelMediumFile implements Built<TrackModelMediumFile, TrackModelMediumFileBuilder> {
  @BuiltValueField(wireName: r'mime_type')
  String? get mimeType;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'duration')
  int? get duration;

  @BuiltValueField(wireName: r'url')
  String? get url;

  TrackModelMediumFile._();

  factory TrackModelMediumFile([void updates(TrackModelMediumFileBuilder b)]) = _$TrackModelMediumFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelMediumFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelMediumFile> get serializer => _$TrackModelMediumFileSerializer();
}

class _$TrackModelMediumFileSerializer implements PrimitiveSerializer<TrackModelMediumFile> {
  @override
  final Iterable<Type> types = const [TrackModelMediumFile, _$TrackModelMediumFile];

  @override
  final String wireName = r'TrackModelMediumFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelMediumFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mimeType != null) {
      yield r'mime_type';
      yield serializers.serialize(
        object.mimeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelMediumFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelMediumFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mime_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mimeType = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelMediumFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelMediumFileBuilder();
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

