// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchFilter _$all = const SearchFilter._('all');
const SearchFilter _$speeches = const SearchFilter._('speeches');
const SearchFilter _$music = const SearchFilter._('music');
const SearchFilter _$albums = const SearchFilter._('albums');
const SearchFilter _$contributors = const SearchFilter._('contributors');
const SearchFilter _$podcasts = const SearchFilter._('podcasts');
const SearchFilter _$playlists = const SearchFilter._('playlists');

SearchFilter _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'speeches':
      return _$speeches;
    case 'music':
      return _$music;
    case 'albums':
      return _$albums;
    case 'contributors':
      return _$contributors;
    case 'podcasts':
      return _$podcasts;
    case 'playlists':
      return _$playlists;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SearchFilter> _$values =
    new BuiltSet<SearchFilter>(const <SearchFilter>[
  _$all,
  _$speeches,
  _$music,
  _$albums,
  _$contributors,
  _$podcasts,
  _$playlists,
]);

class _$SearchFilterMeta {
  const _$SearchFilterMeta();
  SearchFilter get all => _$all;
  SearchFilter get speeches => _$speeches;
  SearchFilter get music => _$music;
  SearchFilter get albums => _$albums;
  SearchFilter get contributors => _$contributors;
  SearchFilter get podcasts => _$podcasts;
  SearchFilter get playlists => _$playlists;
  SearchFilter valueOf(String name) => _$valueOf(name);
  BuiltSet<SearchFilter> get values => _$values;
}

abstract class _$SearchFilterMixin {
  // ignore: non_constant_identifier_names
  _$SearchFilterMeta get SearchFilter => const _$SearchFilterMeta();
}

Serializer<SearchFilter> _$searchFilterSerializer =
    new _$SearchFilterSerializer();

class _$SearchFilterSerializer implements PrimitiveSerializer<SearchFilter> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'All',
    'speeches': 'Speeches',
    'music': 'Music',
    'albums': 'Albums',
    'contributors': 'Contributors',
    'podcasts': 'Podcasts',
    'playlists': 'Playlists',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'All': 'all',
    'Speeches': 'speeches',
    'Music': 'music',
    'Albums': 'albums',
    'Contributors': 'contributors',
    'Podcasts': 'podcasts',
    'Playlists': 'playlists',
  };

  @override
  final Iterable<Type> types = const <Type>[SearchFilter];
  @override
  final String wireName = 'SearchFilter';

  @override
  Object serialize(Serializers serializers, SearchFilter object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SearchFilter deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SearchFilter.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
