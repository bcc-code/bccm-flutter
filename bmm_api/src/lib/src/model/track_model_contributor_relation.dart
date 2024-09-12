//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:bmm_api/src/model/track_model_track_contributor_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_contributor_relation.g.dart';

/// TrackModelContributorRelation
///
/// Properties:
/// * [type] 
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class TrackModelContributorRelation implements Built<TrackModelContributorRelation, TrackModelContributorRelationBuilder> {
  @BuiltValueField(wireName: r'type')
  TrackModelTrackContributorType? get type;
  // enum typeEnum {  composer,  lyricist,  interpret,  arranger,  };

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  TrackModelContributorRelation._();

  factory TrackModelContributorRelation([void updates(TrackModelContributorRelationBuilder b)]) = _$TrackModelContributorRelation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelContributorRelationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelContributorRelation> get serializer => _$TrackModelContributorRelationSerializer();
}

class _$TrackModelContributorRelationSerializer implements PrimitiveSerializer<TrackModelContributorRelation> {
  @override
  final Iterable<Type> types = const [TrackModelContributorRelation, _$TrackModelContributorRelation];

  @override
  final String wireName = r'TrackModelContributorRelation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelContributorRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(TrackModelTrackContributorType),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelContributorRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelContributorRelationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackModelTrackContributorType),
          ) as TrackModelTrackContributorType;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelContributorRelation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelContributorRelationBuilder();
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

