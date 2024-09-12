//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/current_weeks_streak_vm_home_screen_text_options.dart';
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/day_of_week.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'current_weeks_streak_vm.g.dart';

/// CurrentWeeksStreakVm
///
/// Properties:
/// * [year] 
/// * [weekOfTheYear] 
/// * [todaysFraKaareTrackId] 
/// * [numberOfPerfectWeeks] 
/// * [isPerfectWeek] 
/// * [total] 
/// * [monday] 
/// * [tuesday] 
/// * [wednesday] 
/// * [thursday] 
/// * [friday] 
/// * [id] 
/// * [type] 
/// * [dayOfTheWeek] 
/// * [eligibleUntil] 
/// * [lastChanged] 
/// * [daysInARow] 
/// * [pointColor] 
/// * [homeScreenText] 
@BuiltValue()
abstract class CurrentWeeksStreakVm implements Built<CurrentWeeksStreakVm, CurrentWeeksStreakVmBuilder> {
  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'week_of_the_year')
  int? get weekOfTheYear;

  @BuiltValueField(wireName: r'todays_fra_kaare_track_id')
  int? get todaysFraKaareTrackId;

  @BuiltValueField(wireName: r'number_of_perfect_weeks')
  int? get numberOfPerfectWeeks;

  @BuiltValueField(wireName: r'is_perfect_week')
  bool? get isPerfectWeek;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'monday')
  bool? get monday;

  @BuiltValueField(wireName: r'tuesday')
  bool? get tuesday;

  @BuiltValueField(wireName: r'wednesday')
  bool? get wednesday;

  @BuiltValueField(wireName: r'thursday')
  bool? get thursday;

  @BuiltValueField(wireName: r'friday')
  bool? get friday;

  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'type')
  CurrentWeeksStreakVmTypeEnum get type;
  // enum typeEnum {  listening_streak,  };

  @BuiltValueField(wireName: r'day_of_the_week')
  DayOfWeek? get dayOfTheWeek;
  // enum dayOfTheWeekEnum {  Sunday,  Monday,  Tuesday,  Wednesday,  Thursday,  Friday,  Saturday,  };

  @BuiltValueField(wireName: r'eligible_until')
  DateTime? get eligibleUntil;

  @BuiltValueField(wireName: r'last_changed')
  DateTime? get lastChanged;

  @BuiltValueField(wireName: r'days_in_a_row')
  int? get daysInARow;

  @BuiltValueField(wireName: r'point_color')
  String? get pointColor;

  @BuiltValueField(wireName: r'home_screen_text')
  CurrentWeeksStreakVmHomeScreenTextOptions? get homeScreenText;
  // enum homeScreenTextEnum {  PerfectWeeks,  DaysInRow,  };

  CurrentWeeksStreakVm._();

  factory CurrentWeeksStreakVm([void updates(CurrentWeeksStreakVmBuilder b)]) = _$CurrentWeeksStreakVm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CurrentWeeksStreakVmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CurrentWeeksStreakVm> get serializer => _$CurrentWeeksStreakVmSerializer();
}

class _$CurrentWeeksStreakVmSerializer implements PrimitiveSerializer<CurrentWeeksStreakVm> {
  @override
  final Iterable<Type> types = const [CurrentWeeksStreakVm, _$CurrentWeeksStreakVm];

  @override
  final String wireName = r'CurrentWeeksStreakVm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CurrentWeeksStreakVm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.weekOfTheYear != null) {
      yield r'week_of_the_year';
      yield serializers.serialize(
        object.weekOfTheYear,
        specifiedType: const FullType(int),
      );
    }
    if (object.todaysFraKaareTrackId != null) {
      yield r'todays_fra_kaare_track_id';
      yield serializers.serialize(
        object.todaysFraKaareTrackId,
        specifiedType: const FullType(int),
      );
    }
    if (object.numberOfPerfectWeeks != null) {
      yield r'number_of_perfect_weeks';
      yield serializers.serialize(
        object.numberOfPerfectWeeks,
        specifiedType: const FullType(int),
      );
    }
    if (object.isPerfectWeek != null) {
      yield r'is_perfect_week';
      yield serializers.serialize(
        object.isPerfectWeek,
        specifiedType: const FullType(bool),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.monday != null) {
      yield r'monday';
      yield serializers.serialize(
        object.monday,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.tuesday != null) {
      yield r'tuesday';
      yield serializers.serialize(
        object.tuesday,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.wednesday != null) {
      yield r'wednesday';
      yield serializers.serialize(
        object.wednesday,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.thursday != null) {
      yield r'thursday';
      yield serializers.serialize(
        object.thursday,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.friday != null) {
      yield r'friday';
      yield serializers.serialize(
        object.friday,
        specifiedType: const FullType.nullable(bool),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CurrentWeeksStreakVmTypeEnum),
    );
    if (object.dayOfTheWeek != null) {
      yield r'day_of_the_week';
      yield serializers.serialize(
        object.dayOfTheWeek,
        specifiedType: const FullType(DayOfWeek),
      );
    }
    if (object.eligibleUntil != null) {
      yield r'eligible_until';
      yield serializers.serialize(
        object.eligibleUntil,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastChanged != null) {
      yield r'last_changed';
      yield serializers.serialize(
        object.lastChanged,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.daysInARow != null) {
      yield r'days_in_a_row';
      yield serializers.serialize(
        object.daysInARow,
        specifiedType: const FullType(int),
      );
    }
    if (object.pointColor != null) {
      yield r'point_color';
      yield serializers.serialize(
        object.pointColor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.homeScreenText != null) {
      yield r'home_screen_text';
      yield serializers.serialize(
        object.homeScreenText,
        specifiedType: const FullType(CurrentWeeksStreakVmHomeScreenTextOptions),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CurrentWeeksStreakVm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CurrentWeeksStreakVmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'week_of_the_year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weekOfTheYear = valueDes;
          break;
        case r'todays_fra_kaare_track_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.todaysFraKaareTrackId = valueDes;
          break;
        case r'number_of_perfect_weeks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberOfPerfectWeeks = valueDes;
          break;
        case r'is_perfect_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPerfectWeek = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'monday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.monday = valueDes;
          break;
        case r'tuesday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.tuesday = valueDes;
          break;
        case r'wednesday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.wednesday = valueDes;
          break;
        case r'thursday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.thursday = valueDes;
          break;
        case r'friday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.friday = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentWeeksStreakVmTypeEnum),
          ) as CurrentWeeksStreakVmTypeEnum;
          result.type = valueDes;
          break;
        case r'day_of_the_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DayOfWeek),
          ) as DayOfWeek;
          result.dayOfTheWeek = valueDes;
          break;
        case r'eligible_until':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.eligibleUntil = valueDes;
          break;
        case r'last_changed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastChanged = valueDes;
          break;
        case r'days_in_a_row':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysInARow = valueDes;
          break;
        case r'point_color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pointColor = valueDes;
          break;
        case r'home_screen_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CurrentWeeksStreakVmHomeScreenTextOptions),
          ) as CurrentWeeksStreakVmHomeScreenTextOptions;
          result.homeScreenText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CurrentWeeksStreakVm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CurrentWeeksStreakVmBuilder();
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

class CurrentWeeksStreakVmTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'listening_streak')
  static const CurrentWeeksStreakVmTypeEnum listeningStreak = _$currentWeeksStreakVmTypeEnum_listeningStreak;

  static Serializer<CurrentWeeksStreakVmTypeEnum> get serializer => _$currentWeeksStreakVmTypeEnumSerializer;

  const CurrentWeeksStreakVmTypeEnum._(String name): super(name);

  static BuiltSet<CurrentWeeksStreakVmTypeEnum> get values => _$currentWeeksStreakVmTypeEnumValues;
  static CurrentWeeksStreakVmTypeEnum valueOf(String name) => _$currentWeeksStreakVmTypeEnumValueOf(name);
}

