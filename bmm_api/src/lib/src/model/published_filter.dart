//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'published_filter.g.dart';

class PublishedFilter extends EnumClass {

  @BuiltValueEnumConst(wireName: r'hide')
  static const PublishedFilter hide_ = _$hide_;
  @BuiltValueEnumConst(wireName: r'only')
  static const PublishedFilter only = _$only;
  @BuiltValueEnumConst(wireName: r'show')
  static const PublishedFilter show_ = _$show_;

  static Serializer<PublishedFilter> get serializer => _$publishedFilterSerializer;

  const PublishedFilter._(String name): super(name);

  static BuiltSet<PublishedFilter> get values => _$values;
  static PublishedFilter valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PublishedFilterMixin = Object with _$PublishedFilterMixin;

