//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/language_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'highlighting.g.dart';

/// Highlighting
///
/// Properties:
/// * [id] 
/// * [text] 
/// * [startPositionInSeconds] 
/// * [firstSegmentIndex] 
/// * [lastSegmentIndex] 
/// * [language] 
@BuiltValue()
abstract class Highlighting implements Built<Highlighting, HighlightingBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'start_position_in_seconds')
  int? get startPositionInSeconds;

  @BuiltValueField(wireName: r'first_segment_index')
  int? get firstSegmentIndex;

  @BuiltValueField(wireName: r'last_segment_index')
  int? get lastSegmentIndex;

  @BuiltValueField(wireName: r'language')
  LanguageEnum? get language;
  // enum languageEnum {  af,  bg,  cs,  de,  en,  el,  et,  es,  fi,  fr,  hr,  hu,  it,  nb,  nl,  pl,  pt,  ro,  ru,  tr,  zh,  sl,  he,  ta,  ml,  yue,  kha,  zxx,  ar,  be,  da,  hi,  id,  mn,  no,  sa,  sr,  sv,  uk,  };

  Highlighting._();

  factory Highlighting([void updates(HighlightingBuilder b)]) = _$Highlighting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HighlightingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Highlighting> get serializer => _$HighlightingSerializer();
}

class _$HighlightingSerializer implements PrimitiveSerializer<Highlighting> {
  @override
  final Iterable<Type> types = const [Highlighting, _$Highlighting];

  @override
  final String wireName = r'Highlighting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Highlighting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.startPositionInSeconds != null) {
      yield r'start_position_in_seconds';
      yield serializers.serialize(
        object.startPositionInSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.firstSegmentIndex != null) {
      yield r'first_segment_index';
      yield serializers.serialize(
        object.firstSegmentIndex,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastSegmentIndex != null) {
      yield r'last_segment_index';
      yield serializers.serialize(
        object.lastSegmentIndex,
        specifiedType: const FullType(int),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(LanguageEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Highlighting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HighlightingBuilder result,
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
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'start_position_in_seconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startPositionInSeconds = valueDes;
          break;
        case r'first_segment_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.firstSegmentIndex = valueDes;
          break;
        case r'last_segment_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastSegmentIndex = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LanguageEnum),
          ) as LanguageEnum;
          result.language = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Highlighting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HighlightingBuilder();
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

