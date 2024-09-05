//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/highlighting.dart';
import 'package:openapi/src/model/i_album_contributor_podcast_playlist_or_track.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_results.g.dart';

/// SearchResults
///
/// Properties:
/// * [nextPageFromPosition] 
/// * [items] 
/// * [isFullyLoaded] 
/// * [highlightings] 
/// * [totalResults] 
@BuiltValue()
abstract class SearchResults implements Built<SearchResults, SearchResultsBuilder> {
  @BuiltValueField(wireName: r'next_page_from_position')
  int? get nextPageFromPosition;

  @BuiltValueField(wireName: r'items')
  BuiltList<IAlbumContributorPodcastPlaylistOrTrack>? get items;

  @BuiltValueField(wireName: r'is_fully_loaded')
  bool? get isFullyLoaded;

  @BuiltValueField(wireName: r'highlightings')
  BuiltList<Highlighting>? get highlightings;

  @BuiltValueField(wireName: r'total_results')
  int? get totalResults;

  SearchResults._();

  factory SearchResults([void updates(SearchResultsBuilder b)]) = _$SearchResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SearchResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SearchResults> get serializer => _$SearchResultsSerializer();
}

class _$SearchResultsSerializer implements PrimitiveSerializer<SearchResults> {
  @override
  final Iterable<Type> types = const [SearchResults, _$SearchResults];

  @override
  final String wireName = r'SearchResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SearchResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nextPageFromPosition != null) {
      yield r'next_page_from_position';
      yield serializers.serialize(
        object.nextPageFromPosition,
        specifiedType: const FullType(int),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(BuiltList, [FullType(IAlbumContributorPodcastPlaylistOrTrack)]),
      );
    }
    if (object.isFullyLoaded != null) {
      yield r'is_fully_loaded';
      yield serializers.serialize(
        object.isFullyLoaded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.highlightings != null) {
      yield r'highlightings';
      yield serializers.serialize(
        object.highlightings,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Highlighting)]),
      );
    }
    if (object.totalResults != null) {
      yield r'total_results';
      yield serializers.serialize(
        object.totalResults,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SearchResults object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SearchResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'next_page_from_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.nextPageFromPosition = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(IAlbumContributorPodcastPlaylistOrTrack)]),
          ) as BuiltList<IAlbumContributorPodcastPlaylistOrTrack>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        case r'is_fully_loaded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFullyLoaded = valueDes;
          break;
        case r'highlightings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Highlighting)]),
          ) as BuiltList<Highlighting>?;
          if (valueDes == null) continue;
          result.highlightings.replace(valueDes);
          break;
        case r'total_results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalResults = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SearchResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchResultsBuilder();
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

