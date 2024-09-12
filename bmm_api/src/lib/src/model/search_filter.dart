//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_filter.g.dart';

class SearchFilter extends EnumClass {

  @BuiltValueEnumConst(wireName: r'All')
  static const SearchFilter all = _$all;
  @BuiltValueEnumConst(wireName: r'Speeches')
  static const SearchFilter speeches = _$speeches;
  @BuiltValueEnumConst(wireName: r'Music')
  static const SearchFilter music = _$music;
  @BuiltValueEnumConst(wireName: r'Albums')
  static const SearchFilter albums = _$albums;
  @BuiltValueEnumConst(wireName: r'Contributors')
  static const SearchFilter contributors = _$contributors;
  @BuiltValueEnumConst(wireName: r'Podcasts')
  static const SearchFilter podcasts = _$podcasts;
  @BuiltValueEnumConst(wireName: r'Playlists')
  static const SearchFilter playlists = _$playlists;

  static Serializer<SearchFilter> get serializer => _$searchFilterSerializer;

  const SearchFilter._(String name): super(name);

  static BuiltSet<SearchFilter> get values => _$values;
  static SearchFilter valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SearchFilterMixin = Object with _$SearchFilterMixin;

