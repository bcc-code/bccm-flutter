//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fra_kaare_draw_command_draw_option.g.dart';

/// FraKaareDrawCommandDrawOption
///
/// Properties:
/// * [id] 
/// * [description] 
/// * [trackIds] 
@BuiltValue()
abstract class FraKaareDrawCommandDrawOption implements Built<FraKaareDrawCommandDrawOption, FraKaareDrawCommandDrawOptionBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'track_ids')
  BuiltList<int>? get trackIds;

  FraKaareDrawCommandDrawOption._();

  factory FraKaareDrawCommandDrawOption([void updates(FraKaareDrawCommandDrawOptionBuilder b)]) = _$FraKaareDrawCommandDrawOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FraKaareDrawCommandDrawOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FraKaareDrawCommandDrawOption> get serializer => _$FraKaareDrawCommandDrawOptionSerializer();
}

class _$FraKaareDrawCommandDrawOptionSerializer implements PrimitiveSerializer<FraKaareDrawCommandDrawOption> {
  @override
  final Iterable<Type> types = const [FraKaareDrawCommandDrawOption, _$FraKaareDrawCommandDrawOption];

  @override
  final String wireName = r'FraKaareDrawCommandDrawOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FraKaareDrawCommandDrawOption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.trackIds != null) {
      yield r'track_ids';
      yield serializers.serialize(
        object.trackIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FraKaareDrawCommandDrawOption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FraKaareDrawCommandDrawOptionBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'track_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.trackIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FraKaareDrawCommandDrawOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FraKaareDrawCommandDrawOptionBuilder();
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

