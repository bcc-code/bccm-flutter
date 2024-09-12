//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contributor_contributor_meta.g.dart';

/// ContributorContributorMeta
///
/// Properties:
/// * [modifiedBy] 
/// * [modifiedAt] 
@BuiltValue()
abstract class ContributorContributorMeta implements Built<ContributorContributorMeta, ContributorContributorMetaBuilder> {
  @BuiltValueField(wireName: r'modified_by')
  String? get modifiedBy;

  @BuiltValueField(wireName: r'modified_at')
  DateTime? get modifiedAt;

  ContributorContributorMeta._();

  factory ContributorContributorMeta([void updates(ContributorContributorMetaBuilder b)]) = _$ContributorContributorMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContributorContributorMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContributorContributorMeta> get serializer => _$ContributorContributorMetaSerializer();
}

class _$ContributorContributorMetaSerializer implements PrimitiveSerializer<ContributorContributorMeta> {
  @override
  final Iterable<Type> types = const [ContributorContributorMeta, _$ContributorContributorMeta];

  @override
  final String wireName = r'ContributorContributorMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContributorContributorMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.modifiedBy != null) {
      yield r'modified_by';
      yield serializers.serialize(
        object.modifiedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.modifiedAt != null) {
      yield r'modified_at';
      yield serializers.serialize(
        object.modifiedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ContributorContributorMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContributorContributorMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'modified_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.modifiedBy = valueDes;
          break;
        case r'modified_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.modifiedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContributorContributorMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContributorContributorMetaBuilder();
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

