//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/achievement_model.dart';
import 'package:openapi/src/model/current_weeks_streak_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forbilde_points.g.dart';

/// ForbildePoints
///
/// Properties:
/// * [streak] 
/// * [days] 
/// * [currentBoost] 
/// * [points] 
/// * [achievements] 
@BuiltValue()
abstract class ForbildePoints implements Built<ForbildePoints, ForbildePointsBuilder> {
  @BuiltValueField(wireName: r'streak')
  CurrentWeeksStreakVm? get streak;

  @BuiltValueField(wireName: r'days')
  int? get days;

  @BuiltValueField(wireName: r'current_boost')
  int? get currentBoost;

  @BuiltValueField(wireName: r'points')
  int? get points;

  @BuiltValueField(wireName: r'achievements')
  BuiltList<AchievementModel>? get achievements;

  ForbildePoints._();

  factory ForbildePoints([void updates(ForbildePointsBuilder b)]) = _$ForbildePoints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForbildePointsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForbildePoints> get serializer => _$ForbildePointsSerializer();
}

class _$ForbildePointsSerializer implements PrimitiveSerializer<ForbildePoints> {
  @override
  final Iterable<Type> types = const [ForbildePoints, _$ForbildePoints];

  @override
  final String wireName = r'ForbildePoints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForbildePoints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.streak != null) {
      yield r'streak';
      yield serializers.serialize(
        object.streak,
        specifiedType: const FullType(CurrentWeeksStreakVm),
      );
    }
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType: const FullType(int),
      );
    }
    if (object.currentBoost != null) {
      yield r'current_boost';
      yield serializers.serialize(
        object.currentBoost,
        specifiedType: const FullType(int),
      );
    }
    if (object.points != null) {
      yield r'points';
      yield serializers.serialize(
        object.points,
        specifiedType: const FullType(int),
      );
    }
    if (object.achievements != null) {
      yield r'achievements';
      yield serializers.serialize(
        object.achievements,
        specifiedType: const FullType.nullable(BuiltList, [FullType(AchievementModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForbildePoints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ForbildePointsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streak':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentWeeksStreakVm),
          ) as CurrentWeeksStreakVm;
          result.streak.replace(valueDes);
          break;
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.days = valueDes;
          break;
        case r'current_boost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentBoost = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.points = valueDes;
          break;
        case r'achievements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(AchievementModel)]),
          ) as BuiltList<AchievementModel>?;
          if (valueDes == null) continue;
          result.achievements.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForbildePoints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForbildePointsBuilder();
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

