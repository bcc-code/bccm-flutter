//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/track_list_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_model.g.dart';

/// SubscriptionModel
///
/// Properties:
/// * [token] 
/// * [podcastReferences] 
/// * [showNotificationBadge] 
/// * [os] 
@BuiltValue()
abstract class SubscriptionModel implements Built<SubscriptionModel, SubscriptionModelBuilder> {
  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'podcast_references')
  BuiltList<TrackListReference>? get podcastReferences;

  @BuiltValueField(wireName: r'show_notification_badge')
  bool? get showNotificationBadge;

  @BuiltValueField(wireName: r'os')
  String? get os;

  SubscriptionModel._();

  factory SubscriptionModel([void updates(SubscriptionModelBuilder b)]) = _$SubscriptionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionModel> get serializer => _$SubscriptionModelSerializer();
}

class _$SubscriptionModelSerializer implements PrimitiveSerializer<SubscriptionModel> {
  @override
  final Iterable<Type> types = const [SubscriptionModel, _$SubscriptionModel];

  @override
  final String wireName = r'SubscriptionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    if (object.podcastReferences != null) {
      yield r'podcast_references';
      yield serializers.serialize(
        object.podcastReferences,
        specifiedType: const FullType.nullable(BuiltList, [FullType(TrackListReference)]),
      );
    }
    if (object.showNotificationBadge != null) {
      yield r'show_notification_badge';
      yield serializers.serialize(
        object.showNotificationBadge,
        specifiedType: const FullType(bool),
      );
    }
    if (object.os != null) {
      yield r'os';
      yield serializers.serialize(
        object.os,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'podcast_references':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TrackListReference)]),
          ) as BuiltList<TrackListReference>?;
          if (valueDes == null) continue;
          result.podcastReferences.replace(valueDes);
          break;
        case r'show_notification_badge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNotificationBadge = valueDes;
          break;
        case r'os':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.os = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionModelBuilder();
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

