// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_performed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchPerformedEvent {

 String get searchText; int get searchLatency; int get searchResultCount;
/// Create a copy of SearchPerformedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPerformedEventCopyWith<SearchPerformedEvent> get copyWith => _$SearchPerformedEventCopyWithImpl<SearchPerformedEvent>(this as SearchPerformedEvent, _$identity);

  /// Serializes this SearchPerformedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SearchPerformedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPerformedEvent&&(identical(other.searchText, _this.searchText) || other.searchText == _this.searchText)&&(identical(other.searchLatency, _this.searchLatency) || other.searchLatency == _this.searchLatency)&&(identical(other.searchResultCount, _this.searchResultCount) || other.searchResultCount == _this.searchResultCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SearchPerformedEvent;
  return Object.hash(runtimeType,_this.searchText,_this.searchLatency,_this.searchResultCount);
}

@override
String toString() {
  final _this = this as SearchPerformedEvent;
  return 'SearchPerformedEvent(searchText: ${_this.searchText}, searchLatency: ${_this.searchLatency}, searchResultCount: ${_this.searchResultCount})';
}


}

/// @nodoc
abstract mixin class $SearchPerformedEventCopyWith<$Res>  {
  factory $SearchPerformedEventCopyWith(SearchPerformedEvent value, $Res Function(SearchPerformedEvent) _then) = _$SearchPerformedEventCopyWithImpl;
@useResult
$Res call({
 String searchText, int searchLatency, int searchResultCount
});




}
/// @nodoc
class _$SearchPerformedEventCopyWithImpl<$Res>
    implements $SearchPerformedEventCopyWith<$Res> {
  _$SearchPerformedEventCopyWithImpl(this._self, this._then);

  final SearchPerformedEvent _self;
  final $Res Function(SearchPerformedEvent) _then;

/// Create a copy of SearchPerformedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchText = null,Object? searchLatency = null,Object? searchResultCount = null,}) {
  return _then(SearchPerformedEvent(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,searchLatency: null == searchLatency ? _self.searchLatency : searchLatency // ignore: cast_nullable_to_non_nullable
as int,searchResultCount: null == searchResultCount ? _self.searchResultCount : searchResultCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchPerformedEvent].
extension SearchPerformedEventPatterns on SearchPerformedEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPerformedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPerformedEvent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPerformedEvent value)  $default,){
final _that = this;
switch (_that) {
case _SearchPerformedEvent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPerformedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPerformedEvent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchText,  int searchLatency,  int searchResultCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchPerformedEvent() when $default != null:
return $default(_that.searchText,_that.searchLatency,_that.searchResultCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchText,  int searchLatency,  int searchResultCount)  $default,) {final _that = this;
switch (_that) {
case _SearchPerformedEvent():
return $default(_that.searchText,_that.searchLatency,_that.searchResultCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchText,  int searchLatency,  int searchResultCount)?  $default,) {final _that = this;
switch (_that) {
case _SearchPerformedEvent() when $default != null:
return $default(_that.searchText,_that.searchLatency,_that.searchResultCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchPerformedEvent implements SearchPerformedEvent {
  const _SearchPerformedEvent({required this.searchText, required this.searchLatency, required this.searchResultCount});
  factory _SearchPerformedEvent.fromJson(Map<String, dynamic> json) => _$SearchPerformedEventFromJson(json);

@override final  String searchText;
@override final  int searchLatency;
@override final  int searchResultCount;

/// Create a copy of SearchPerformedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPerformedEventCopyWith<_SearchPerformedEvent> get copyWith => __$SearchPerformedEventCopyWithImpl<_SearchPerformedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchPerformedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPerformedEvent&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.searchLatency, searchLatency) || other.searchLatency == searchLatency)&&(identical(other.searchResultCount, searchResultCount) || other.searchResultCount == searchResultCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,searchText,searchLatency,searchResultCount);
}

@override
String toString() {
    return 'SearchPerformedEvent(searchText: $searchText, searchLatency: $searchLatency, searchResultCount: $searchResultCount)';
}


}

/// @nodoc
abstract mixin class _$SearchPerformedEventCopyWith<$Res> implements $SearchPerformedEventCopyWith<$Res> {
  factory _$SearchPerformedEventCopyWith(_SearchPerformedEvent value, $Res Function(_SearchPerformedEvent) _then) = __$SearchPerformedEventCopyWithImpl;
@override @useResult
$Res call({
 String searchText, int searchLatency, int searchResultCount
});




}
/// @nodoc
class __$SearchPerformedEventCopyWithImpl<$Res>
    implements _$SearchPerformedEventCopyWith<$Res> {
  __$SearchPerformedEventCopyWithImpl(this._self, this._then);

  final _SearchPerformedEvent _self;
  final $Res Function(_SearchPerformedEvent) _then;

/// Create a copy of SearchPerformedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchText = null,Object? searchLatency = null,Object? searchResultCount = null,}) {
  return _then(_SearchPerformedEvent(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,searchLatency: null == searchLatency ? _self.searchLatency : searchLatency // ignore: cast_nullable_to_non_nullable
as int,searchResultCount: null == searchResultCount ? _self.searchResultCount : searchResultCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
