//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_fra_kaare_statistics_church_statistics.g.dart';

/// GetFraKaareStatisticsChurchStatistics
///
/// Properties:
/// * [churchName] 
/// * [oneEpisodePercent13To17] 
/// * [oneEpisodePercent18To25] 
/// * [oneEpisodePercent26To35] 
/// * [oneEpisodePercentAverage] 
/// * [oneEpisodeChange] 
/// * [allEpisodesPercent13To17] 
/// * [allEpisodesPercent18To25] 
/// * [allEpisodesPercent26To35] 
/// * [allEpisodesPercentAverage] 
/// * [allEpisodesChange] 
@BuiltValue()
abstract class GetFraKaareStatisticsChurchStatistics implements Built<GetFraKaareStatisticsChurchStatistics, GetFraKaareStatisticsChurchStatisticsBuilder> {
  @BuiltValueField(wireName: r'church_name')
  String? get churchName;

  @BuiltValueField(wireName: r'one_episode_percent13_to17')
  double? get oneEpisodePercent13To17;

  @BuiltValueField(wireName: r'one_episode_percent18_to25')
  double? get oneEpisodePercent18To25;

  @BuiltValueField(wireName: r'one_episode_percent26_to35')
  double? get oneEpisodePercent26To35;

  @BuiltValueField(wireName: r'one_episode_percent_average')
  double? get oneEpisodePercentAverage;

  @BuiltValueField(wireName: r'one_episode_change')
  double? get oneEpisodeChange;

  @BuiltValueField(wireName: r'all_episodes_percent13_to17')
  double? get allEpisodesPercent13To17;

  @BuiltValueField(wireName: r'all_episodes_percent18_to25')
  double? get allEpisodesPercent18To25;

  @BuiltValueField(wireName: r'all_episodes_percent26_to35')
  double? get allEpisodesPercent26To35;

  @BuiltValueField(wireName: r'all_episodes_percent_average')
  double? get allEpisodesPercentAverage;

  @BuiltValueField(wireName: r'all_episodes_change')
  double? get allEpisodesChange;

  GetFraKaareStatisticsChurchStatistics._();

  factory GetFraKaareStatisticsChurchStatistics([void updates(GetFraKaareStatisticsChurchStatisticsBuilder b)]) = _$GetFraKaareStatisticsChurchStatistics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFraKaareStatisticsChurchStatisticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFraKaareStatisticsChurchStatistics> get serializer => _$GetFraKaareStatisticsChurchStatisticsSerializer();
}

class _$GetFraKaareStatisticsChurchStatisticsSerializer implements PrimitiveSerializer<GetFraKaareStatisticsChurchStatistics> {
  @override
  final Iterable<Type> types = const [GetFraKaareStatisticsChurchStatistics, _$GetFraKaareStatisticsChurchStatistics];

  @override
  final String wireName = r'GetFraKaareStatisticsChurchStatistics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFraKaareStatisticsChurchStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.churchName != null) {
      yield r'church_name';
      yield serializers.serialize(
        object.churchName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.oneEpisodePercent13To17 != null) {
      yield r'one_episode_percent13_to17';
      yield serializers.serialize(
        object.oneEpisodePercent13To17,
        specifiedType: const FullType(double),
      );
    }
    if (object.oneEpisodePercent18To25 != null) {
      yield r'one_episode_percent18_to25';
      yield serializers.serialize(
        object.oneEpisodePercent18To25,
        specifiedType: const FullType(double),
      );
    }
    if (object.oneEpisodePercent26To35 != null) {
      yield r'one_episode_percent26_to35';
      yield serializers.serialize(
        object.oneEpisodePercent26To35,
        specifiedType: const FullType(double),
      );
    }
    if (object.oneEpisodePercentAverage != null) {
      yield r'one_episode_percent_average';
      yield serializers.serialize(
        object.oneEpisodePercentAverage,
        specifiedType: const FullType(double),
      );
    }
    if (object.oneEpisodeChange != null) {
      yield r'one_episode_change';
      yield serializers.serialize(
        object.oneEpisodeChange,
        specifiedType: const FullType(double),
      );
    }
    if (object.allEpisodesPercent13To17 != null) {
      yield r'all_episodes_percent13_to17';
      yield serializers.serialize(
        object.allEpisodesPercent13To17,
        specifiedType: const FullType(double),
      );
    }
    if (object.allEpisodesPercent18To25 != null) {
      yield r'all_episodes_percent18_to25';
      yield serializers.serialize(
        object.allEpisodesPercent18To25,
        specifiedType: const FullType(double),
      );
    }
    if (object.allEpisodesPercent26To35 != null) {
      yield r'all_episodes_percent26_to35';
      yield serializers.serialize(
        object.allEpisodesPercent26To35,
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
    if (object.allEpisodesChange != null) {
      yield r'all_episodes_change';
      yield serializers.serialize(
        object.allEpisodesChange,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFraKaareStatisticsChurchStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetFraKaareStatisticsChurchStatisticsBuilder result,
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
        case r'one_episode_percent13_to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.oneEpisodePercent13To17 = valueDes;
          break;
        case r'one_episode_percent18_to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.oneEpisodePercent18To25 = valueDes;
          break;
        case r'one_episode_percent26_to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.oneEpisodePercent26To35 = valueDes;
          break;
        case r'one_episode_percent_average':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.oneEpisodePercentAverage = valueDes;
          break;
        case r'one_episode_change':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.oneEpisodeChange = valueDes;
          break;
        case r'all_episodes_percent13_to17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.allEpisodesPercent13To17 = valueDes;
          break;
        case r'all_episodes_percent18_to25':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.allEpisodesPercent18To25 = valueDes;
          break;
        case r'all_episodes_percent26_to35':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.allEpisodesPercent26To35 = valueDes;
          break;
        case r'all_episodes_percent_average':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.allEpisodesPercentAverage = valueDes;
          break;
        case r'all_episodes_change':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.allEpisodesChange = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFraKaareStatisticsChurchStatistics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFraKaareStatisticsChurchStatisticsBuilder();
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

