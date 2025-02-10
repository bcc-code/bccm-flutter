//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/get_project_standings_church.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_project_standings_project_standings.g.dart';

/// GetProjectStandingsProjectStandings
///
/// Properties:
/// * [boysTitle] 
/// * [girlsTitle] 
/// * [boysPoints] 
/// * [girlsPoints] 
/// * [largeChurchesTitle] 
/// * [smallChurchesTitle] 
/// * [churchTitle] 
/// * [gameNightsTitle] 
/// * [largeChurches] 
/// * [smallChurches] 
@BuiltValue()
abstract class GetProjectStandingsProjectStandings implements Built<GetProjectStandingsProjectStandings, GetProjectStandingsProjectStandingsBuilder> {
  @BuiltValueField(wireName: r'boys_title')
  String? get boysTitle;

  @BuiltValueField(wireName: r'girls_title')
  String? get girlsTitle;

  @BuiltValueField(wireName: r'boys_points')
  int? get boysPoints;

  @BuiltValueField(wireName: r'girls_points')
  int? get girlsPoints;

  @BuiltValueField(wireName: r'large_churches_title')
  String? get largeChurchesTitle;

  @BuiltValueField(wireName: r'small_churches_title')
  String? get smallChurchesTitle;

  @BuiltValueField(wireName: r'church_title')
  String? get churchTitle;

  @BuiltValueField(wireName: r'game_nights_title')
  String? get gameNightsTitle;

  @BuiltValueField(wireName: r'large_churches')
  BuiltList<GetProjectStandingsChurch>? get largeChurches;

  @BuiltValueField(wireName: r'small_churches')
  BuiltList<GetProjectStandingsChurch>? get smallChurches;

  GetProjectStandingsProjectStandings._();

  factory GetProjectStandingsProjectStandings([void updates(GetProjectStandingsProjectStandingsBuilder b)]) = _$GetProjectStandingsProjectStandings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetProjectStandingsProjectStandingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetProjectStandingsProjectStandings> get serializer => _$GetProjectStandingsProjectStandingsSerializer();
}

class _$GetProjectStandingsProjectStandingsSerializer implements PrimitiveSerializer<GetProjectStandingsProjectStandings> {
  @override
  final Iterable<Type> types = const [GetProjectStandingsProjectStandings, _$GetProjectStandingsProjectStandings];

  @override
  final String wireName = r'GetProjectStandingsProjectStandings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetProjectStandingsProjectStandings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.boysTitle != null) {
      yield r'boys_title';
      yield serializers.serialize(
        object.boysTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.girlsTitle != null) {
      yield r'girls_title';
      yield serializers.serialize(
        object.girlsTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.boysPoints != null) {
      yield r'boys_points';
      yield serializers.serialize(
        object.boysPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.girlsPoints != null) {
      yield r'girls_points';
      yield serializers.serialize(
        object.girlsPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.largeChurchesTitle != null) {
      yield r'large_churches_title';
      yield serializers.serialize(
        object.largeChurchesTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.smallChurchesTitle != null) {
      yield r'small_churches_title';
      yield serializers.serialize(
        object.smallChurchesTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.churchTitle != null) {
      yield r'church_title';
      yield serializers.serialize(
        object.churchTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.gameNightsTitle != null) {
      yield r'game_nights_title';
      yield serializers.serialize(
        object.gameNightsTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.largeChurches != null) {
      yield r'large_churches';
      yield serializers.serialize(
        object.largeChurches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GetProjectStandingsChurch)]),
      );
    }
    if (object.smallChurches != null) {
      yield r'small_churches';
      yield serializers.serialize(
        object.smallChurches,
        specifiedType: const FullType.nullable(BuiltList, [FullType(GetProjectStandingsChurch)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetProjectStandingsProjectStandings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetProjectStandingsProjectStandingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'boys_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.boysTitle = valueDes;
          break;
        case r'girls_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.girlsTitle = valueDes;
          break;
        case r'boys_points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.boysPoints = valueDes;
          break;
        case r'girls_points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.girlsPoints = valueDes;
          break;
        case r'large_churches_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.largeChurchesTitle = valueDes;
          break;
        case r'small_churches_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.smallChurchesTitle = valueDes;
          break;
        case r'church_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.churchTitle = valueDes;
          break;
        case r'game_nights_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.gameNightsTitle = valueDes;
          break;
        case r'large_churches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GetProjectStandingsChurch)]),
          ) as BuiltList<GetProjectStandingsChurch>?;
          if (valueDes == null) continue;
          result.largeChurches.replace(valueDes);
          break;
        case r'small_churches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(GetProjectStandingsChurch)]),
          ) as BuiltList<GetProjectStandingsChurch>?;
          if (valueDes == null) continue;
          result.smallChurches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetProjectStandingsProjectStandings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetProjectStandingsProjectStandingsBuilder();
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

