//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/media_type_enum.dart';
import 'package:bmm_api/src/model/track_model_medium_file.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_medium.g.dart';

/// TrackModelMedium
///
/// Properties:
/// * [type] 
/// * [isVisible] 
/// * [files] 
@BuiltValue()
abstract class TrackModelMedium implements Built<TrackModelMedium, TrackModelMediumBuilder> {
  @BuiltValueField(wireName: r'type')
  MediaTypeEnum? get type;
  // enum typeEnum {  audio,  video,  };

  @BuiltValueField(wireName: r'is_visible')
  bool? get isVisible;

  @BuiltValueField(wireName: r'files')
  BuiltList<TrackModelMediumFile>? get files;

  TrackModelMedium._();

  factory TrackModelMedium([void updates(TrackModelMediumBuilder b)]) = _$TrackModelMedium;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelMediumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelMedium> get serializer => _$TrackModelMediumSerializer();
}

class _$TrackModelMediumSerializer implements PrimitiveSerializer<TrackModelMedium> {
  @override
  final Iterable<Type> types = const [TrackModelMedium, _$TrackModelMedium];

  @override
  final String wireName = r'TrackModelMedium';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelMedium object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(MediaTypeEnum),
      );
    }
    if (object.isVisible != null) {
      yield r'is_visible';
      yield serializers.serialize(
        object.isVisible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.files != null) {
      yield r'files';
      yield serializers.serialize(
        object.files,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelMediumFile)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelMedium object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelMediumBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaTypeEnum),
          ) as MediaTypeEnum;
          result.type = valueDes;
          break;
        case r'is_visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVisible = valueDes;
          break;
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackModelMediumFile)]),
          ) as BuiltList<TrackModelMediumFile>?;
          if (valueDes == null) continue;
          result.files.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelMedium deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelMediumBuilder();
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

