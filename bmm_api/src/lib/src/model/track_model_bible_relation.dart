//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/bible_book_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_bible_relation.g.dart';

/// TrackModelBibleRelation
///
/// Properties:
/// * [book] 
/// * [chapter] 
/// * [verse] 
/// * [comment] 
/// * [timestamp] 
@BuiltValue()
abstract class TrackModelBibleRelation implements Built<TrackModelBibleRelation, TrackModelBibleRelationBuilder> {
  @BuiltValueField(wireName: r'book')
  BibleBookEnum? get book;
  // enum bookEnum {  gen,  exod,  lev,  num,  deut,  josh,  judg,  ruth,  1 sam,  2 sam,  1 kgs,  2 kgs,  1 chr,  2 chr,  ezra,  neh,  tob,  jdt,  esth,  1 macc,  2 macc,  job,  ps,  prov,  eccl,  song,  wis,  sir,  isa,  jer,  lam,  bar,  ezek,  dan,  hos,  joel,  amos,  obad,  jonah,  mic,  nah,  hab,  zeph,  hag,  zech,  mal,  matt,  mark,  luke,  john,  acts,  rom,  1 cor,  2 cor,  gal,  eph,  phil,  col,  1 thess,  2 thess,  1 tim,  2 tim,  titus,  phlm,  heb,  jas,  1 pet,  2 pet,  1 john,  2 john,  3 john,  jude,  rev,  };

  @BuiltValueField(wireName: r'chapter')
  int? get chapter;

  @BuiltValueField(wireName: r'verse')
  int? get verse;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  TrackModelBibleRelation._();

  factory TrackModelBibleRelation([void updates(TrackModelBibleRelationBuilder b)]) = _$TrackModelBibleRelation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelBibleRelationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelBibleRelation> get serializer => _$TrackModelBibleRelationSerializer();
}

class _$TrackModelBibleRelationSerializer implements PrimitiveSerializer<TrackModelBibleRelation> {
  @override
  final Iterable<Type> types = const [TrackModelBibleRelation, _$TrackModelBibleRelation];

  @override
  final String wireName = r'TrackModelBibleRelation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelBibleRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.book != null) {
      yield r'book';
      yield serializers.serialize(
        object.book,
        specifiedType: const FullType(BibleBookEnum),
      );
    }
    if (object.chapter != null) {
      yield r'chapter';
      yield serializers.serialize(
        object.chapter,
        specifiedType: const FullType(int),
      );
    }
    if (object.verse != null) {
      yield r'verse';
      yield serializers.serialize(
        object.verse,
        specifiedType: const FullType(int),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelBibleRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelBibleRelationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'book':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BibleBookEnum),
          ) as BibleBookEnum;
          result.book = valueDes;
          break;
        case r'chapter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.chapter = valueDes;
          break;
        case r'verse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.verse = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelBibleRelation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelBibleRelationBuilder();
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

