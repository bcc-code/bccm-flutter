//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'achievement_model.g.dart';

/// AchievementModel
///
/// Properties:
/// * [id] 
/// * [hasAchieved] 
/// * [hasAcknowledged] 
/// * [url] 
/// * [title] 
/// * [description] 
/// * [trackId] 
/// * [reward] 
/// * [actionUrl] 
/// * [actionText] 
@BuiltValue()
abstract class AchievementModel implements Built<AchievementModel, AchievementModelBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'has_achieved')
  bool? get hasAchieved;

  @BuiltValueField(wireName: r'has_acknowledged')
  bool? get hasAcknowledged;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'track_id')
  int? get trackId;

  @BuiltValueField(wireName: r'reward')
  String? get reward;

  @BuiltValueField(wireName: r'action_url')
  String? get actionUrl;

  @BuiltValueField(wireName: r'action_text')
  String? get actionText;

  AchievementModel._();

  factory AchievementModel([void updates(AchievementModelBuilder b)]) = _$AchievementModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AchievementModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AchievementModel> get serializer => _$AchievementModelSerializer();
}

class _$AchievementModelSerializer implements PrimitiveSerializer<AchievementModel> {
  @override
  final Iterable<Type> types = const [AchievementModel, _$AchievementModel];

  @override
  final String wireName = r'AchievementModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AchievementModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hasAchieved != null) {
      yield r'has_achieved';
      yield serializers.serialize(
        object.hasAchieved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasAcknowledged != null) {
      yield r'has_acknowledged';
      yield serializers.serialize(
        object.hasAcknowledged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.trackId != null) {
      yield r'track_id';
      yield serializers.serialize(
        object.trackId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reward != null) {
      yield r'reward';
      yield serializers.serialize(
        object.reward,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.actionUrl != null) {
      yield r'action_url';
      yield serializers.serialize(
        object.actionUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.actionText != null) {
      yield r'action_text';
      yield serializers.serialize(
        object.actionText,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AchievementModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AchievementModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'has_achieved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasAchieved = valueDes;
          break;
        case r'has_acknowledged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasAcknowledged = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'track_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.trackId = valueDes;
          break;
        case r'reward':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reward = valueDes;
          break;
        case r'action_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.actionUrl = valueDes;
          break;
        case r'action_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.actionText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AchievementModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AchievementModelBuilder();
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

