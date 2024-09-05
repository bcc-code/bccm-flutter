//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_overview_model_status.g.dart';

/// ApiOverviewModelStatus
///
/// Properties:
/// * [database] 
/// * [search] 
@BuiltValue()
abstract class ApiOverviewModelStatus implements Built<ApiOverviewModelStatus, ApiOverviewModelStatusBuilder> {
  @BuiltValueField(wireName: r'database')
  bool? get database;

  @BuiltValueField(wireName: r'search')
  bool? get search;

  ApiOverviewModelStatus._();

  factory ApiOverviewModelStatus([void updates(ApiOverviewModelStatusBuilder b)]) = _$ApiOverviewModelStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiOverviewModelStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiOverviewModelStatus> get serializer => _$ApiOverviewModelStatusSerializer();
}

class _$ApiOverviewModelStatusSerializer implements PrimitiveSerializer<ApiOverviewModelStatus> {
  @override
  final Iterable<Type> types = const [ApiOverviewModelStatus, _$ApiOverviewModelStatus];

  @override
  final String wireName = r'ApiOverviewModelStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiOverviewModelStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.database != null) {
      yield r'database';
      yield serializers.serialize(
        object.database,
        specifiedType: const FullType(bool),
      );
    }
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiOverviewModelStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiOverviewModelStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'database':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.database = valueDes;
          break;
        case r'search':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.search = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiOverviewModelStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiOverviewModelStatusBuilder();
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

