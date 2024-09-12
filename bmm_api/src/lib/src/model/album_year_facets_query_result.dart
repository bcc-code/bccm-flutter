//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'album_year_facets_query_result.g.dart';

/// AlbumYearFacetsQueryResult
///
/// Properties:
/// * [year] 
/// * [count] 
@BuiltValue()
abstract class AlbumYearFacetsQueryResult implements Built<AlbumYearFacetsQueryResult, AlbumYearFacetsQueryResultBuilder> {
  @BuiltValueField(wireName: r'year')
  int? get year;

  @BuiltValueField(wireName: r'count')
  int? get count;

  AlbumYearFacetsQueryResult._();

  factory AlbumYearFacetsQueryResult([void updates(AlbumYearFacetsQueryResultBuilder b)]) = _$AlbumYearFacetsQueryResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlbumYearFacetsQueryResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlbumYearFacetsQueryResult> get serializer => _$AlbumYearFacetsQueryResultSerializer();
}

class _$AlbumYearFacetsQueryResultSerializer implements PrimitiveSerializer<AlbumYearFacetsQueryResult> {
  @override
  final Iterable<Type> types = const [AlbumYearFacetsQueryResult, _$AlbumYearFacetsQueryResult];

  @override
  final String wireName = r'AlbumYearFacetsQueryResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlbumYearFacetsQueryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.year != null) {
      yield r'year';
      yield serializers.serialize(
        object.year,
        specifiedType: const FullType(int),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlbumYearFacetsQueryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlbumYearFacetsQueryResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlbumYearFacetsQueryResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlbumYearFacetsQueryResultBuilder();
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

