//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_project_standings_church.g.dart';

/// GetProjectStandingsChurch
///
/// Properties:
/// * [name] 
/// * [isHighlighted] 
/// * [boysPoints] 
/// * [girlsPoints] 
/// * [boysWon11] 
/// * [boysWon12] 
/// * [boysWon21] 
/// * [boysWon22] 
/// * [boysWon31] 
/// * [boysWon32] 
@BuiltValue()
abstract class GetProjectStandingsChurch implements Built<GetProjectStandingsChurch, GetProjectStandingsChurchBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'is_highlighted')
  bool? get isHighlighted;

  @BuiltValueField(wireName: r'boys_points')
  int? get boysPoints;

  @BuiltValueField(wireName: r'girls_points')
  int? get girlsPoints;

  @BuiltValueField(wireName: r'boys_won_1_1')
  bool? get boysWon11;

  @BuiltValueField(wireName: r'boys_won_1_2')
  bool? get boysWon12;

  @BuiltValueField(wireName: r'boys_won_2_1')
  bool? get boysWon21;

  @BuiltValueField(wireName: r'boys_won_2_2')
  bool? get boysWon22;

  @BuiltValueField(wireName: r'boys_won_3_1')
  bool? get boysWon31;

  @BuiltValueField(wireName: r'boys_won_3_2')
  bool? get boysWon32;

  GetProjectStandingsChurch._();

  factory GetProjectStandingsChurch([void updates(GetProjectStandingsChurchBuilder b)]) = _$GetProjectStandingsChurch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetProjectStandingsChurchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetProjectStandingsChurch> get serializer => _$GetProjectStandingsChurchSerializer();
}

class _$GetProjectStandingsChurchSerializer implements PrimitiveSerializer<GetProjectStandingsChurch> {
  @override
  final Iterable<Type> types = const [GetProjectStandingsChurch, _$GetProjectStandingsChurch];

  @override
  final String wireName = r'GetProjectStandingsChurch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetProjectStandingsChurch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isHighlighted != null) {
      yield r'is_highlighted';
      yield serializers.serialize(
        object.isHighlighted,
        specifiedType: const FullType(bool),
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
    if (object.boysWon11 != null) {
      yield r'boys_won_1_1';
      yield serializers.serialize(
        object.boysWon11,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.boysWon12 != null) {
      yield r'boys_won_1_2';
      yield serializers.serialize(
        object.boysWon12,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.boysWon21 != null) {
      yield r'boys_won_2_1';
      yield serializers.serialize(
        object.boysWon21,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.boysWon22 != null) {
      yield r'boys_won_2_2';
      yield serializers.serialize(
        object.boysWon22,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.boysWon31 != null) {
      yield r'boys_won_3_1';
      yield serializers.serialize(
        object.boysWon31,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.boysWon32 != null) {
      yield r'boys_won_3_2';
      yield serializers.serialize(
        object.boysWon32,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetProjectStandingsChurch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetProjectStandingsChurchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'is_highlighted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isHighlighted = valueDes;
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
        case r'boys_won_1_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.boysWon11 = valueDes;
          break;
        case r'boys_won_1_2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.boysWon12 = valueDes;
          break;
        case r'boys_won_2_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.boysWon21 = valueDes;
          break;
        case r'boys_won_2_2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.boysWon22 = valueDes;
          break;
        case r'boys_won_3_1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.boysWon31 = valueDes;
          break;
        case r'boys_won_3_2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.boysWon32 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetProjectStandingsChurch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetProjectStandingsChurchBuilder();
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

