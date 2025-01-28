//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_fra_kaare_statistics_church_statistics_snapshot.g.dart';

/// GetFraKaareStatisticsChurchStatisticsSnapshot
///
/// Properties:
/// * [snapshotDate] 
/// * [oneEpisodePercentAverage] 
/// * [allEpisodesPercentAverage] 
@BuiltValue()
abstract class GetFraKaareStatisticsChurchStatisticsSnapshot implements Built<GetFraKaareStatisticsChurchStatisticsSnapshot, GetFraKaareStatisticsChurchStatisticsSnapshotBuilder> {
  @BuiltValueField(wireName: r'snapshot_date')
  DateTime? get snapshotDate;

  @BuiltValueField(wireName: r'one_episode_percent_average')
  double? get oneEpisodePercentAverage;

  @BuiltValueField(wireName: r'all_episodes_percent_average')
  double? get allEpisodesPercentAverage;

  GetFraKaareStatisticsChurchStatisticsSnapshot._();

  factory GetFraKaareStatisticsChurchStatisticsSnapshot([void updates(GetFraKaareStatisticsChurchStatisticsSnapshotBuilder b)]) = _$GetFraKaareStatisticsChurchStatisticsSnapshot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFraKaareStatisticsChurchStatisticsSnapshotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFraKaareStatisticsChurchStatisticsSnapshot> get serializer => _$GetFraKaareStatisticsChurchStatisticsSnapshotSerializer();
}

class _$GetFraKaareStatisticsChurchStatisticsSnapshotSerializer implements PrimitiveSerializer<GetFraKaareStatisticsChurchStatisticsSnapshot> {
  @override
  final Iterable<Type> types = const [GetFraKaareStatisticsChurchStatisticsSnapshot, _$GetFraKaareStatisticsChurchStatisticsSnapshot];

  @override
  final String wireName = r'GetFraKaareStatisticsChurchStatisticsSnapshot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFraKaareStatisticsChurchStatisticsSnapshot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.snapshotDate != null) {
      yield r'snapshot_date';
      yield serializers.serialize(
        object.snapshotDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.oneEpisodePercentAverage != null) {
      yield r'one_episode_percent_average';
      yield serializers.serialize(
        object.oneEpisodePercentAverage,
        specifiedType: const FullType(double),
      );
    }
    if (object.allEpisodesPercentAverage != null) {
      yield r'all_episodes_percent_average';
      yield serializers.serialize(
        object.allEpisodesPercentAverage,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFraKaareStatisticsChurchStatisticsSnapshot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetFraKaareStatisticsChurchStatisticsSnapshotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'snapshot_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.snapshotDate = valueDes;
          break;
        case r'one_episode_percent_average':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.oneEpisodePercentAverage = valueDes;
          break;
        case r'all_episodes_percent_average':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.allEpisodesPercentAverage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFraKaareStatisticsChurchStatisticsSnapshot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFraKaareStatisticsChurchStatisticsSnapshotBuilder();
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

