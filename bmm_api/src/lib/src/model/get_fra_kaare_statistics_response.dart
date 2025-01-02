//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/get_fra_kaare_statistics_church_statistics.dart';
import 'package:bmm_api/src/model/get_fra_kaare_statistics_church_statistics_snapshot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_fra_kaare_statistics_response.g.dart';

/// GetFraKaareStatisticsResponse
///
/// Properties:
/// * [highlightedChurchName] 
/// * [largeChurches] 
/// * [smallChurches] 
/// * [timeSeries] 
@BuiltValue()
abstract class GetFraKaareStatisticsResponse implements Built<GetFraKaareStatisticsResponse, GetFraKaareStatisticsResponseBuilder> {
  @BuiltValueField(wireName: r'highlighted_church_name')
  String? get highlightedChurchName;

  @BuiltValueField(wireName: r'large_churches')
  BuiltList<GetFraKaareStatisticsChurchStatistics>? get largeChurches;

  @BuiltValueField(wireName: r'small_churches')
  BuiltList<GetFraKaareStatisticsChurchStatistics>? get smallChurches;

  @BuiltValueField(wireName: r'time_series')
  BuiltList<GetFraKaareStatisticsChurchStatisticsSnapshot>? get timeSeries;

  GetFraKaareStatisticsResponse._();

  factory GetFraKaareStatisticsResponse([void updates(GetFraKaareStatisticsResponseBuilder b)]) = _$GetFraKaareStatisticsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetFraKaareStatisticsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetFraKaareStatisticsResponse> get serializer => _$GetFraKaareStatisticsResponseSerializer();
}

class _$GetFraKaareStatisticsResponseSerializer implements PrimitiveSerializer<GetFraKaareStatisticsResponse> {
  @override
  final Iterable<Type> types = const [GetFraKaareStatisticsResponse, _$GetFraKaareStatisticsResponse];

  @override
  final String wireName = r'GetFraKaareStatisticsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetFraKaareStatisticsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.highlightedChurchName != null) {
      yield r'highlighted_church_name';
      yield serializers.serialize(
        object.highlightedChurchName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.largeChurches != null) {
      yield r'large_churches';
      yield serializers.serialize(
        object.largeChurches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GetFraKaareStatisticsChurchStatistics)]),
      );
    }
    if (object.smallChurches != null) {
      yield r'small_churches';
      yield serializers.serialize(
        object.smallChurches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GetFraKaareStatisticsChurchStatistics)]),
      );
    }
    if (object.timeSeries != null) {
      yield r'time_series';
      yield serializers.serialize(
        object.timeSeries,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GetFraKaareStatisticsChurchStatisticsSnapshot)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetFraKaareStatisticsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetFraKaareStatisticsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'highlighted_church_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.highlightedChurchName = valueDes;
          break;
        case r'large_churches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GetFraKaareStatisticsChurchStatistics)]),
          ) as BuiltList<GetFraKaareStatisticsChurchStatistics>?;
          if (valueDes == null) continue;
          result.largeChurches.replace(valueDes);
          break;
        case r'small_churches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GetFraKaareStatisticsChurchStatistics)]),
          ) as BuiltList<GetFraKaareStatisticsChurchStatistics>?;
          if (valueDes == null) continue;
          result.smallChurches.replace(valueDes);
          break;
        case r'time_series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GetFraKaareStatisticsChurchStatisticsSnapshot)]),
          ) as BuiltList<GetFraKaareStatisticsChurchStatisticsSnapshot>?;
          if (valueDes == null) continue;
          result.timeSeries.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetFraKaareStatisticsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFraKaareStatisticsResponseBuilder();
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

