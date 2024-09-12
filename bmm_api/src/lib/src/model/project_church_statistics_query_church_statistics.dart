//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/project_church_statistics_query_church_statistics_church.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_church_statistics_query_church_statistics.g.dart';

/// ProjectChurchStatisticsQueryChurchStatistics
///
/// Properties:
/// * [churchName] 
/// * [churchId] 
/// * [limitToYouth] 
/// * [hasBmmAccountPercent13to17] 
/// * [hasBmmAccountPercent18to25] 
/// * [hasBmmAccountPercent26to35] 
/// * [hasBmmAccountPercentYouth] 
/// * [percent13to17] 
/// * [percent18to25] 
/// * [percent26to35] 
/// * [percentYouth] 
/// * [onTrackPercent13to17] 
/// * [onTrackPercent18to25] 
/// * [onTrackPercent26to35] 
/// * [onTrackPercentYouth] 
/// * [lastWeekPercent13to17] 
/// * [lastWeekPercent18to25] 
/// * [lastWeekPercent26to35] 
/// * [lastWeekPercentYouth] 
/// * [sinceFebruary12Percent13to17] 
/// * [sinceFebruary12Percent18to25] 
/// * [sinceFebruary12Percent26to35] 
/// * [sinceFebruary12PercentYouth] 
/// * [availableChurches] 
@BuiltValue()
abstract class ProjectChurchStatisticsQueryChurchStatistics implements Built<ProjectChurchStatisticsQueryChurchStatistics, ProjectChurchStatisticsQueryChurchStatisticsBuilder> {
  @BuiltValueField(wireName: r'church_name')
  String? get churchName;

  @BuiltValueField(wireName: r'church_id')
  String? get churchId;

  @BuiltValueField(wireName: r'limit_to_youth')
  bool? get limitToYouth;

  @BuiltValueField(wireName: r'has_bmm_account_percent13to17')
  double? get hasBmmAccountPercent13to17;

  @BuiltValueField(wireName: r'has_bmm_account_percent18to25')
  double? get hasBmmAccountPercent18to25;

  @BuiltValueField(wireName: r'has_bmm_account_percent26to35')
  double? get hasBmmAccountPercent26to35;

  @BuiltValueField(wireName: r'has_bmm_account_percent_youth')
  double? get hasBmmAccountPercentYouth;

  @BuiltValueField(wireName: r'percent13to17')
  double? get percent13to17;

  @BuiltValueField(wireName: r'percent18to25')
  double? get percent18to25;

  @BuiltValueField(wireName: r'percent26to35')
  double? get percent26to35;

  @BuiltValueField(wireName: r'percent_youth')
  double? get percentYouth;

  @BuiltValueField(wireName: r'on_track_percent13to17')
  double? get onTrackPercent13to17;

  @BuiltValueField(wireName: r'on_track_percent18to25')
  double? get onTrackPercent18to25;

  @BuiltValueField(wireName: r'on_track_percent26to35')
  double? get onTrackPercent26to35;

  @BuiltValueField(wireName: r'on_track_percent_youth')
  double? get onTrackPercentYouth;

  @BuiltValueField(wireName: r'last_week_percent13to17')
  double? get lastWeekPercent13to17;

  @BuiltValueField(wireName: r'last_week_percent18to25')
  double? get lastWeekPercent18to25;

  @BuiltValueField(wireName: r'last_week_percent26to35')
  double? get lastWeekPercent26to35;

  @BuiltValueField(wireName: r'last_week_percent_youth')
  double? get lastWeekPercentYouth;

  @BuiltValueField(wireName: r'since_february12_percent13to17')
  double? get sinceFebruary12Percent13to17;

  @BuiltValueField(wireName: r'since_february12_percent18to25')
  double? get sinceFebruary12Percent18to25;

  @BuiltValueField(wireName: r'since_february12_percent26to35')
  double? get sinceFebruary12Percent26to35;

  @BuiltValueField(wireName: r'since_february12_percent_youth')
  double? get sinceFebruary12PercentYouth;

  @BuiltValueField(wireName: r'available_churches')
  BuiltList<ProjectChurchStatisticsQueryChurchStatisticsChurch>? get availableChurches;

  ProjectChurchStatisticsQueryChurchStatistics._();

  factory ProjectChurchStatisticsQueryChurchStatistics([void updates(ProjectChurchStatisticsQueryChurchStatisticsBuilder b)]) = _$ProjectChurchStatisticsQueryChurchStatistics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectChurchStatisticsQueryChurchStatisticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectChurchStatisticsQueryChurchStatistics> get serializer => _$ProjectChurchStatisticsQueryChurchStatisticsSerializer();
}

class _$ProjectChurchStatisticsQueryChurchStatisticsSerializer implements PrimitiveSerializer<ProjectChurchStatisticsQueryChurchStatistics> {
  @override
  final Iterable<Type> types = const [ProjectChurchStatisticsQueryChurchStatistics, _$ProjectChurchStatisticsQueryChurchStatistics];

  @override
  final String wireName = r'ProjectChurchStatisticsQueryChurchStatistics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectChurchStatisticsQueryChurchStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.churchName != null) {
      yield r'church_name';
      yield serializers.serialize(
        object.churchName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.churchId != null) {
      yield r'church_id';
      yield serializers.serialize(
        object.churchId,
        specifiedType: const FullType(String),
      );
    }
    if (object.limitToYouth != null) {
      yield r'limit_to_youth';
      yield serializers.serialize(
        object.limitToYouth,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasBmmAccountPercent13to17 != null) {
      yield r'has_bmm_account_percent13to17';
      yield serializers.serialize(
        object.hasBmmAccountPercent13to17,
        specifiedType: const FullType(double),
      );
    }
    if (object.hasBmmAccountPercent18to25 != null) {
      yield r'has_bmm_account_percent18to25';
      yield serializers.serialize(
        object.hasBmmAccountPercent18to25,
        specifiedType: const FullType(double),
      );
    }
    if (object.hasBmmAccountPercent26to35 != null) {
      yield r'has_bmm_account_percent26to35';
      yield serializers.serialize(
        object.hasBmmAccountPercent26to35,
        specifiedType: const FullType(double),
      );
    }
    if (object.hasBmmAccountPercentYouth != null) {
      yield r'has_bmm_account_percent_youth';
      yield serializers.serialize(
        object.hasBmmAccountPercentYouth,
        specifiedType: const FullType(double),
      );
    }
    if (object.percent13to17 != null) {
      yield r'percent13to17';
      yield serializers.serialize(
        object.percent13to17,
        specifiedType: const FullType(double),
      );
    }
    if (object.percent18to25 != null) {
      yield r'percent18to25';
      yield serializers.serialize(
        object.percent18to25,
        specifiedType: const FullType(double),
      );
    }
    if (object.percent26to35 != null) {
      yield r'percent26to35';
      yield serializers.serialize(
        object.percent26to35,
        specifiedType: const FullType(double),
      );
    }
    if (object.percentYouth != null) {
      yield r'percent_youth';
      yield serializers.serialize(
        object.percentYouth,
        specifiedType: const FullType(double),
      );
    }
    if (object.onTrackPercent13to17 != null) {
      yield r'on_track_percent13to17';
      yield serializers.serialize(
        object.onTrackPercent13to17,
        specifiedType: const FullType(double),
      );
    }
    if (object.onTrackPercent18to25 != null) {
      yield r'on_track_percent18to25';
      yield serializers.serialize(
        object.onTrackPercent18to25,
        specifiedType: const FullType(double),
      );
    }
    if (object.onTrackPercent26to35 != null) {
      yield r'on_track_percent26to35';
      yield serializers.serialize(
        object.onTrackPercent26to35,
        specifiedType: const FullType(double),
      );
    }
    if (object.onTrackPercentYouth != null) {
      yield r'on_track_percent_youth';
      yield serializers.serialize(
        object.onTrackPercentYouth,
        specifiedType: const FullType(double),
      );
    }
    if (object.lastWeekPercent13to17 != null) {
      yield r'last_week_percent13to17';
      yield serializers.serialize(
        object.lastWeekPercent13to17,
        specifiedType: const FullType(double),
      );
    }
    if (object.lastWeekPercent18to25 != null) {
      yield r'last_week_percent18to25';
      yield serializers.serialize(
        object.lastWeekPercent18to25,
        specifiedType: const FullType(double),
      );
    }
    if (object.lastWeekPercent26to35 != null) {
      yield r'last_week_percent26to35';
      yield serializers.serialize(
        object.lastWeekPercent26to35,
        specifiedType: const FullType(double),
      );
    }
    if (object.lastWeekPercentYouth != null) {
      yield r'last_week_percent_youth';
      yield serializers.serialize(
        object.lastWeekPercentYouth,
        specifiedType: const FullType(double),
      );
    }
    if (object.sinceFebruary12Percent13to17 != null) {
      yield r'since_february12_percent13to17';
      yield serializers.serialize(
        object.sinceFebruary12Percent13to17,
        specifiedType: const FullType(double),
      );
    }
    if (object.sinceFebruary12Percent18to25 != null) {
      yield r'since_february12_percent18to25';
      yield serializers.serialize(
        object.sinceFebruary12Percent18to25,
        specifiedType: const FullType(double),
      );
    }
    if (object.sinceFebruary12Percent26to35 != null) {
      yield r'since_february12_percent26to35';
      yield serializers.serialize(
        object.sinceFebruary12Percent26to35,
        specifiedType: const FullType(double),
      );
    }
    if (object.sinceFebruary12PercentYouth != null) {
      yield r'since_february12_percent_youth';
      yield serializers.serialize(
        object.sinceFebruary12PercentYouth,
        specifiedType: const FullType(double),
      );
    }
    if (object.availableChurches != null) {
      yield r'available_churches';
      yield serializers.serialize(
        object.availableChurches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProjectChurchStatisticsQueryChurchStatisticsChurch)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectChurchStatisticsQueryChurchStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectChurchStatisticsQueryChurchStatisticsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'church_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.churchName = valueDes;
          break;
        case r'church_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.churchId = valueDes;
          break;
        case r'limit_to_youth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.limitToYouth = valueDes;
          break;
        case r'has_bmm_account_percent13to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.hasBmmAccountPercent13to17 = valueDes;
          break;
        case r'has_bmm_account_percent18to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.hasBmmAccountPercent18to25 = valueDes;
          break;
        case r'has_bmm_account_percent26to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.hasBmmAccountPercent26to35 = valueDes;
          break;
        case r'has_bmm_account_percent_youth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.hasBmmAccountPercentYouth = valueDes;
          break;
        case r'percent13to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.percent13to17 = valueDes;
          break;
        case r'percent18to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.percent18to25 = valueDes;
          break;
        case r'percent26to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.percent26to35 = valueDes;
          break;
        case r'percent_youth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.percentYouth = valueDes;
          break;
        case r'on_track_percent13to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.onTrackPercent13to17 = valueDes;
          break;
        case r'on_track_percent18to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.onTrackPercent18to25 = valueDes;
          break;
        case r'on_track_percent26to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.onTrackPercent26to35 = valueDes;
          break;
        case r'on_track_percent_youth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.onTrackPercentYouth = valueDes;
          break;
        case r'last_week_percent13to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.lastWeekPercent13to17 = valueDes;
          break;
        case r'last_week_percent18to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.lastWeekPercent18to25 = valueDes;
          break;
        case r'last_week_percent26to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.lastWeekPercent26to35 = valueDes;
          break;
        case r'last_week_percent_youth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.lastWeekPercentYouth = valueDes;
          break;
        case r'since_february12_percent13to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sinceFebruary12Percent13to17 = valueDes;
          break;
        case r'since_february12_percent18to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sinceFebruary12Percent18to25 = valueDes;
          break;
        case r'since_february12_percent26to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sinceFebruary12Percent26to35 = valueDes;
          break;
        case r'since_february12_percent_youth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sinceFebruary12PercentYouth = valueDes;
          break;
        case r'available_churches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProjectChurchStatisticsQueryChurchStatisticsChurch)]),
          ) as BuiltList<ProjectChurchStatisticsQueryChurchStatisticsChurch>?;
          if (valueDes == null) continue;
          result.availableChurches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectChurchStatisticsQueryChurchStatistics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectChurchStatisticsQueryChurchStatisticsBuilder();
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

