//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hvhe_competition_points.g.dart';

/// HvheCompetitionPoints
///
/// Properties:
/// * [boys] 
/// * [girls] 
@BuiltValue()
abstract class HvheCompetitionPoints implements Built<HvheCompetitionPoints, HvheCompetitionPointsBuilder> {
  @BuiltValueField(wireName: r'boys')
  int? get boys;

  @BuiltValueField(wireName: r'girls')
  int? get girls;

  HvheCompetitionPoints._();

  factory HvheCompetitionPoints([void updates(HvheCompetitionPointsBuilder b)]) = _$HvheCompetitionPoints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HvheCompetitionPointsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HvheCompetitionPoints> get serializer => _$HvheCompetitionPointsSerializer();
}

class _$HvheCompetitionPointsSerializer implements PrimitiveSerializer<HvheCompetitionPoints> {
  @override
  final Iterable<Type> types = const [HvheCompetitionPoints, _$HvheCompetitionPoints];

  @override
  final String wireName = r'HvheCompetitionPoints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HvheCompetitionPoints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.boys != null) {
      yield r'boys';
      yield serializers.serialize(
        object.boys,
        specifiedType: const FullType(int),
      );
    }
    if (object.girls != null) {
      yield r'girls';
      yield serializers.serialize(
        object.girls,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HvheCompetitionPoints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HvheCompetitionPointsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'boys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.boys = valueDes;
          break;
        case r'girls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.girls = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HvheCompetitionPoints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HvheCompetitionPointsBuilder();
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

