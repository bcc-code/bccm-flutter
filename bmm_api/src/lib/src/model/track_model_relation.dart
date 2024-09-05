//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/bible_book_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_model_relation.g.dart';

/// TrackModelRelation
///
/// Properties:
/// * [type] 
/// * [comment] 
/// * [name] 
/// * [timestamp] 
/// * [id] 
/// * [url] 
/// * [book] 
/// * [chapter] 
/// * [verse] 
/// * [hasListened] 
@BuiltValue()
abstract class TrackModelRelation implements Built<TrackModelRelation, TrackModelRelationBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'book')
  BibleBookEnum? get book;
  // enum bookEnum {  gen,  exod,  lev,  num,  deut,  josh,  judg,  ruth,  1 sam,  2 sam,  1 kgs,  2 kgs,  1 chr,  2 chr,  ezra,  neh,  tob,  jdt,  esth,  1 macc,  2 macc,  job,  ps,  prov,  eccl,  song,  wis,  sir,  isa,  jer,  lam,  bar,  ezek,  dan,  hos,  joel,  amos,  obad,  jonah,  mic,  nah,  hab,  zeph,  hag,  zech,  mal,  matt,  mark,  luke,  john,  acts,  rom,  1 cor,  2 cor,  gal,  eph,  phil,  col,  1 thess,  2 thess,  1 tim,  2 tim,  titus,  phlm,  heb,  jas,  1 pet,  2 pet,  1 john,  2 john,  3 john,  jude,  rev,  };

  @BuiltValueField(wireName: r'chapter')
  int? get chapter;

  @BuiltValueField(wireName: r'verse')
  int? get verse;

  @BuiltValueField(wireName: r'has_listened')
  bool? get hasListened;

  TrackModelRelation._();

  factory TrackModelRelation([void updates(TrackModelRelationBuilder b)]) = _$TrackModelRelation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackModelRelationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackModelRelation> get serializer => _$TrackModelRelationSerializer();
}

class _$TrackModelRelationSerializer implements PrimitiveSerializer<TrackModelRelation> {
  @override
  final Iterable<Type> types = const [TrackModelRelation, _$TrackModelRelation];

  @override
  final String wireName = r'TrackModelRelation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackModelRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
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
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.verse != null) {
      yield r'verse';
      yield serializers.serialize(
        object.verse,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.hasListened != null) {
      yield r'has_listened';
      yield serializers.serialize(
        object.hasListened,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackModelRelation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackModelRelationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
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
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.chapter = valueDes;
          break;
        case r'verse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.verse = valueDes;
          break;
        case r'has_listened':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasListened = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackModelRelation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackModelRelationBuilder();
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

