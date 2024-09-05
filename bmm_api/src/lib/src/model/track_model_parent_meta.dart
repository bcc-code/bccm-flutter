//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_parent_meta.g.dart';

/// TrackModelParentMeta
///
/// Properties:
/// * [containedTypes] 
/// * [isVisible] 
/// * [modifiedAt] 
/// * [modifiedBy] 
@BuiltValue()
abstract class TrackModelParentMeta implements Built<TrackModelParentMeta, TrackModelParentMetaBuilder> {
  @BuiltValueField(wireName: r'contained_types')
  BuiltList<String>? get containedTypes;

  @BuiltValueField(wireName: r'is_visible')
  bool? get isVisible;

  @BuiltValueField(wireName: r'modified_at')
  DateTime? get modifiedAt;

  @BuiltValueField(wireName: r'modified_by')
  String? get modifiedBy;

  TrackModelParentMeta._();

  factory TrackModelParentMeta([void updates(TrackModelParentMetaBuilder b)]) = _$TrackModelParentMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelParentMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelParentMeta> get serializer => _$TrackModelParentMetaSerializer();
}

class _$TrackModelParentMetaSerializer implements PrimitiveSerializer<TrackModelParentMeta> {
  @override
  final Iterable<Type> types = const [TrackModelParentMeta, _$TrackModelParentMeta];

  @override
  final String wireName = r'TrackModelParentMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelParentMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.containedTypes != null) {
      yield r'contained_types';
      yield serializers.serialize(
        object.containedTypes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.isVisible != null) {
      yield r'is_visible';
      yield serializers.serialize(
        object.isVisible,
        specifiedType: const FullType(bool),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelParentMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelParentMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contained_types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.containedTypes.replace(valueDes);
          break;
        case r'is_visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVisible = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelParentMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelParentMetaBuilder();
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

