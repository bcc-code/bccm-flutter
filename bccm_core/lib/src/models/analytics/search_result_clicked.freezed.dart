// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_clicked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
SearchResultClickedEvent _$SearchResultClickedEventFromJson(
  Map<String, dynamic> json
) {
    return _SectionClickedEvent.fromJson(
      json
    );
}

/// @nodoc
mixin _$SearchResultClickedEvent {

 String get searchText; int get elementPosition; String get elementType; String get elementId; String get group;
/// Create a copy of SearchResultClickedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultClickedEventCopyWith<SearchResultClickedEvent> get copyWith => _$SearchResultClickedEventCopyWithImpl<SearchResultClickedEvent>(this as SearchResultClickedEvent, _$identity);

  /// Serializes this SearchResultClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SearchResultClickedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultClickedEvent&&(identical(other.searchText, _this.searchText) || other.searchText == _this.searchText)&&(identical(other.elementPosition, _this.elementPosition) || other.elementPosition == _this.elementPosition)&&(identical(other.elementType, _this.elementType) || other.elementType == _this.elementType)&&(identical(other.elementId, _this.elementId) || other.elementId == _this.elementId)&&(identical(other.group, _this.group) || other.group == _this.group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SearchResultClickedEvent;
  return Object.hash(runtimeType,_this.searchText,_this.elementPosition,_this.elementType,_this.elementId,_this.group);
}

@override
String toString() {
  final _this = this as SearchResultClickedEvent;
  return 'SearchResultClickedEvent(searchText: ${_this.searchText}, elementPosition: ${_this.elementPosition}, elementType: ${_this.elementType}, elementId: ${_this.elementId}, group: ${_this.group})';
}


}

/// @nodoc
abstract mixin class $SearchResultClickedEventCopyWith<$Res>  {
  factory $SearchResultClickedEventCopyWith(SearchResultClickedEvent value, $Res Function(SearchResultClickedEvent) _then) = _$SearchResultClickedEventCopyWithImpl;
@useResult
$Res call({
 String searchText, int elementPosition, String elementType, String elementId, String group
});




}
/// @nodoc
class _$SearchResultClickedEventCopyWithImpl<$Res>
    implements $SearchResultClickedEventCopyWith<$Res> {
  _$SearchResultClickedEventCopyWithImpl(this._self, this._then);

  final SearchResultClickedEvent _self;
  final $Res Function(SearchResultClickedEvent) _then;

/// Create a copy of SearchResultClickedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchText = null,Object? elementPosition = null,Object? elementType = null,Object? elementId = null,Object? group = null,}) {
  return _then(SearchResultClickedEvent(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,elementPosition: null == elementPosition ? _self.elementPosition : elementPosition // ignore: cast_nullable_to_non_nullable
as int,elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResultClickedEvent].
extension SearchResultClickedEventPatterns on SearchResultClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _SectionClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchText,  int elementPosition,  String elementType,  String elementId,  String group)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
return $default(_that.searchText,_that.elementPosition,_that.elementType,_that.elementId,_that.group);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchText,  int elementPosition,  String elementType,  String elementId,  String group)  $default,) {final _that = this;
switch (_that) {
case _SectionClickedEvent():
return $default(_that.searchText,_that.elementPosition,_that.elementType,_that.elementId,_that.group);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchText,  int elementPosition,  String elementType,  String elementId,  String group)?  $default,) {final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
return $default(_that.searchText,_that.elementPosition,_that.elementType,_that.elementId,_that.group);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SectionClickedEvent implements SearchResultClickedEvent {
  const _SectionClickedEvent({required this.searchText, required this.elementPosition, required this.elementType, required this.elementId, required this.group});
  factory _SectionClickedEvent.fromJson(Map<String, dynamic> json) => _$SectionClickedEventFromJson(json);

@override final  String searchText;
@override final  int elementPosition;
@override final  String elementType;
@override final  String elementId;
@override final  String group;

/// Create a copy of SearchResultClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionClickedEventCopyWith<_SectionClickedEvent> get copyWith => __$SectionClickedEventCopyWithImpl<_SectionClickedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionClickedEvent&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.elementPosition, elementPosition) || other.elementPosition == elementPosition)&&(identical(other.elementType, elementType) || other.elementType == elementType)&&(identical(other.elementId, elementId) || other.elementId == elementId)&&(identical(other.group, group) || other.group == group));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,searchText,elementPosition,elementType,elementId,group);
}

@override
String toString() {
    return 'SearchResultClickedEvent(searchText: $searchText, elementPosition: $elementPosition, elementType: $elementType, elementId: $elementId, group: $group)';
}


}

/// @nodoc
abstract mixin class _$SectionClickedEventCopyWith<$Res> implements $SearchResultClickedEventCopyWith<$Res> {
  factory _$SectionClickedEventCopyWith(_SectionClickedEvent value, $Res Function(_SectionClickedEvent) _then) = __$SectionClickedEventCopyWithImpl;
@override @useResult
$Res call({
 String searchText, int elementPosition, String elementType, String elementId, String group
});




}
/// @nodoc
class __$SectionClickedEventCopyWithImpl<$Res>
    implements _$SectionClickedEventCopyWith<$Res> {
  __$SectionClickedEventCopyWithImpl(this._self, this._then);

  final _SectionClickedEvent _self;
  final $Res Function(_SectionClickedEvent) _then;

/// Create a copy of SearchResultClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchText = null,Object? elementPosition = null,Object? elementType = null,Object? elementId = null,Object? group = null,}) {
  return _then(_SectionClickedEvent(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,elementPosition: null == elementPosition ? _self.elementPosition : elementPosition // ignore: cast_nullable_to_non_nullable
as int,elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchAnalytics {

 String get searchText;
/// Create a copy of SearchAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchAnalyticsCopyWith<SearchAnalytics> get copyWith => _$SearchAnalyticsCopyWithImpl<SearchAnalytics>(this as SearchAnalytics, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SearchAnalytics;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAnalytics&&(identical(other.searchText, _this.searchText) || other.searchText == _this.searchText));
}


@override
int get hashCode {
  final _this = this as SearchAnalytics;
  return Object.hash(runtimeType,_this.searchText);
}

@override
String toString() {
  final _this = this as SearchAnalytics;
  return 'SearchAnalytics(searchText: ${_this.searchText})';
}


}

/// @nodoc
abstract mixin class $SearchAnalyticsCopyWith<$Res>  {
  factory $SearchAnalyticsCopyWith(SearchAnalytics value, $Res Function(SearchAnalytics) _then) = _$SearchAnalyticsCopyWithImpl;
@useResult
$Res call({
 String searchText
});




}
/// @nodoc
class _$SearchAnalyticsCopyWithImpl<$Res>
    implements $SearchAnalyticsCopyWith<$Res> {
  _$SearchAnalyticsCopyWithImpl(this._self, this._then);

  final SearchAnalytics _self;
  final $Res Function(SearchAnalytics) _then;

/// Create a copy of SearchAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchText = null,}) {
  return _then(SearchAnalytics(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchAnalytics].
extension SearchAnalyticsPatterns on SearchAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _SearchAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _SearchAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String searchText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchAnalytics() when $default != null:
return $default(_that.searchText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String searchText)  $default,) {final _that = this;
switch (_that) {
case _SearchAnalytics():
return $default(_that.searchText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String searchText)?  $default,) {final _that = this;
switch (_that) {
case _SearchAnalytics() when $default != null:
return $default(_that.searchText);case _:
  return null;

}
}

}

/// @nodoc


class _SearchAnalytics implements SearchAnalytics {
  const _SearchAnalytics({required this.searchText});
  

@override final  String searchText;

/// Create a copy of SearchAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchAnalyticsCopyWith<_SearchAnalytics> get copyWith => __$SearchAnalyticsCopyWithImpl<_SearchAnalytics>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchAnalytics&&(identical(other.searchText, searchText) || other.searchText == searchText));
}


@override
int get hashCode {
    return Object.hash(runtimeType,searchText);
}

@override
String toString() {
    return 'SearchAnalytics(searchText: $searchText)';
}


}

/// @nodoc
abstract mixin class _$SearchAnalyticsCopyWith<$Res> implements $SearchAnalyticsCopyWith<$Res> {
  factory _$SearchAnalyticsCopyWith(_SearchAnalytics value, $Res Function(_SearchAnalytics) _then) = __$SearchAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 String searchText
});




}
/// @nodoc
class __$SearchAnalyticsCopyWithImpl<$Res>
    implements _$SearchAnalyticsCopyWith<$Res> {
  __$SearchAnalyticsCopyWithImpl(this._self, this._then);

  final _SearchAnalytics _self;
  final $Res Function(_SearchAnalytics) _then;

/// Create a copy of SearchAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchText = null,}) {
  return _then(_SearchAnalytics(
searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchItemAnalytics {

 int get position; String get type; String get id; String get group;
/// Create a copy of SearchItemAnalytics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchItemAnalyticsCopyWith<SearchItemAnalytics> get copyWith => _$SearchItemAnalyticsCopyWithImpl<SearchItemAnalytics>(this as SearchItemAnalytics, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SearchItemAnalytics;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchItemAnalytics&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.group, _this.group) || other.group == _this.group));
}


@override
int get hashCode {
  final _this = this as SearchItemAnalytics;
  return Object.hash(runtimeType,_this.position,_this.type,_this.id,_this.group);
}

@override
String toString() {
  final _this = this as SearchItemAnalytics;
  return 'SearchItemAnalytics(position: ${_this.position}, type: ${_this.type}, id: ${_this.id}, group: ${_this.group})';
}


}

/// @nodoc
abstract mixin class $SearchItemAnalyticsCopyWith<$Res>  {
  factory $SearchItemAnalyticsCopyWith(SearchItemAnalytics value, $Res Function(SearchItemAnalytics) _then) = _$SearchItemAnalyticsCopyWithImpl;
@useResult
$Res call({
 int position, String type, String id, String group
});




}
/// @nodoc
class _$SearchItemAnalyticsCopyWithImpl<$Res>
    implements $SearchItemAnalyticsCopyWith<$Res> {
  _$SearchItemAnalyticsCopyWithImpl(this._self, this._then);

  final SearchItemAnalytics _self;
  final $Res Function(SearchItemAnalytics) _then;

/// Create a copy of SearchItemAnalytics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,Object? type = null,Object? id = null,Object? group = null,}) {
  return _then(SearchItemAnalytics(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchItemAnalytics].
extension SearchItemAnalyticsPatterns on SearchItemAnalytics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchItemAnalytics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchItemAnalytics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchItemAnalytics value)  $default,){
final _that = this;
switch (_that) {
case _SearchItemAnalytics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchItemAnalytics value)?  $default,){
final _that = this;
switch (_that) {
case _SearchItemAnalytics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int position,  String type,  String id,  String group)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchItemAnalytics() when $default != null:
return $default(_that.position,_that.type,_that.id,_that.group);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int position,  String type,  String id,  String group)  $default,) {final _that = this;
switch (_that) {
case _SearchItemAnalytics():
return $default(_that.position,_that.type,_that.id,_that.group);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int position,  String type,  String id,  String group)?  $default,) {final _that = this;
switch (_that) {
case _SearchItemAnalytics() when $default != null:
return $default(_that.position,_that.type,_that.id,_that.group);case _:
  return null;

}
}

}

/// @nodoc


class _SearchItemAnalytics implements SearchItemAnalytics {
  const _SearchItemAnalytics({required this.position, required this.type, required this.id, required this.group});
  

@override final  int position;
@override final  String type;
@override final  String id;
@override final  String group;

/// Create a copy of SearchItemAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchItemAnalyticsCopyWith<_SearchItemAnalytics> get copyWith => __$SearchItemAnalyticsCopyWithImpl<_SearchItemAnalytics>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchItemAnalytics&&(identical(other.position, position) || other.position == position)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.group, group) || other.group == group));
}


@override
int get hashCode {
    return Object.hash(runtimeType,position,type,id,group);
}

@override
String toString() {
    return 'SearchItemAnalytics(position: $position, type: $type, id: $id, group: $group)';
}


}

/// @nodoc
abstract mixin class _$SearchItemAnalyticsCopyWith<$Res> implements $SearchItemAnalyticsCopyWith<$Res> {
  factory _$SearchItemAnalyticsCopyWith(_SearchItemAnalytics value, $Res Function(_SearchItemAnalytics) _then) = __$SearchItemAnalyticsCopyWithImpl;
@override @useResult
$Res call({
 int position, String type, String id, String group
});




}
/// @nodoc
class __$SearchItemAnalyticsCopyWithImpl<$Res>
    implements _$SearchItemAnalyticsCopyWith<$Res> {
  __$SearchItemAnalyticsCopyWithImpl(this._self, this._then);

  final _SearchItemAnalytics _self;
  final $Res Function(_SearchItemAnalytics) _then;

/// Create a copy of SearchItemAnalytics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,Object? type = null,Object? id = null,Object? group = null,}) {
  return _then(_SearchItemAnalytics(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
