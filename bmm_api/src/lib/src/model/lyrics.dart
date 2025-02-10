//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:bmm_api/src/model/lyrics_verse.dart';
import 'package:bmm_api/src/model/transcription_transcription_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lyrics.g.dart';

/// Lyrics
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [source_] 
/// * [songTitle] 
/// * [lyricists] 
/// * [composers] 
/// * [shortCopyright] 
/// * [longCopyright] 
/// * [yearPublished] 
/// * [verses] 
/// * [originalUrl] 
/// * [modifiedBy] 
/// * [modifiedAt] 
@BuiltValue()
abstract class Lyrics implements Built<Lyrics, LyricsBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'source')
  TranscriptionTranscriptionSource? get source_;
  // enum source_Enum {  Mediabanken,  SongTreasures,  Manual,  Telegraph,  };

  @BuiltValueField(wireName: r'song_title')
  String? get songTitle;

  @BuiltValueField(wireName: r'lyricists')
  BuiltList<int>? get lyricists;

  @BuiltValueField(wireName: r'composers')
  BuiltList<int>? get composers;

  @BuiltValueField(wireName: r'short_copyright')
  String? get shortCopyright;

  @BuiltValueField(wireName: r'long_copyright')
  String? get longCopyright;

  @BuiltValueField(wireName: r'year_published')
  int? get yearPublished;

  @BuiltValueField(wireName: r'verses')
  BuiltList<LyricsVerse>? get verses;

  @BuiltValueField(wireName: r'original_url')
  String? get originalUrl;

  @BuiltValueField(wireName: r'modified_by')
  String? get modifiedBy;

  @BuiltValueField(wireName: r'modified_at')
  DateTime? get modifiedAt;

  Lyrics._();

  factory Lyrics([void updates(LyricsBuilder b)]) = _$Lyrics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LyricsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Lyrics> get serializer => _$LyricsSerializer();
}

class _$LyricsSerializer implements PrimitiveSerializer<Lyrics> {
  @override
  final Iterable<Type> types = const [Lyrics, _$Lyrics];

  @override
  final String wireName = r'Lyrics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Lyrics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(TranscriptionTranscriptionSource),
      );
    }
    if (object.songTitle != null) {
      yield r'song_title';
      yield serializers.serialize(
        object.songTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lyricists != null) {
      yield r'lyricists';
      yield serializers.serialize(
        object.lyricists,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.composers != null) {
      yield r'composers';
      yield serializers.serialize(
        object.composers,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.shortCopyright != null) {
      yield r'short_copyright';
      yield serializers.serialize(
        object.shortCopyright,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.longCopyright != null) {
      yield r'long_copyright';
      yield serializers.serialize(
        object.longCopyright,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.yearPublished != null) {
      yield r'year_published';
      yield serializers.serialize(
        object.yearPublished,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.verses != null) {
      yield r'verses';
      yield serializers.serialize(
        object.verses,
        specifiedType: const FullType.nullable(BuiltList, [FullType(LyricsVerse)]),
      );
    }
    if (object.originalUrl != null) {
      yield r'original_url';
      yield serializers.serialize(
        object.originalUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    Lyrics object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LyricsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TranscriptionTranscriptionSource),
          ) as TranscriptionTranscriptionSource;
          result.source_ = valueDes;
          break;
        case r'song_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.songTitle = valueDes;
          break;
        case r'lyricists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.lyricists.replace(valueDes);
          break;
        case r'composers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.composers.replace(valueDes);
          break;
        case r'short_copyright':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortCopyright = valueDes;
          break;
        case r'long_copyright':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.longCopyright = valueDes;
          break;
        case r'year_published':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.yearPublished = valueDes;
          break;
        case r'verses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(LyricsVerse)]),
          ) as BuiltList<LyricsVerse>?;
          if (valueDes == null) continue;
          result.verses.replace(valueDes);
          break;
        case r'original_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originalUrl = valueDes;
          break;
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
  Lyrics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LyricsBuilder();
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

