// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentSharedEvent {

 String get pageCode; String get elementType; String get elementId; int? get position;
/// Create a copy of ContentSharedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentSharedEventCopyWith<ContentSharedEvent> get copyWith => _$ContentSharedEventCopyWithImpl<ContentSharedEvent>(this as ContentSharedEvent, _$identity);

  /// Serializes this ContentSharedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ContentSharedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentSharedEvent&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&(identical(other.elementType, _this.elementType) || other.elementType == _this.elementType)&&(identical(other.elementId, _this.elementId) || other.elementId == _this.elementId)&&(identical(other.position, _this.position) || other.position == _this.position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ContentSharedEvent;
  return Object.hash(runtimeType,_this.pageCode,_this.elementType,_this.elementId,_this.position);
}

@override
String toString() {
  final _this = this as ContentSharedEvent;
  return 'ContentSharedEvent(pageCode: ${_this.pageCode}, elementType: ${_this.elementType}, elementId: ${_this.elementId}, position: ${_this.position})';
}


}

/// @nodoc
abstract mixin class $ContentSharedEventCopyWith<$Res>  {
  factory $ContentSharedEventCopyWith(ContentSharedEvent value, $Res Function(ContentSharedEvent) _then) = _$ContentSharedEventCopyWithImpl;
@useResult
$Res call({
 String pageCode, String elementType, String elementId, int? position
});




}
/// @nodoc
class _$ContentSharedEventCopyWithImpl<$Res>
    implements $ContentSharedEventCopyWith<$Res> {
  _$ContentSharedEventCopyWithImpl(this._self, this._then);

  final ContentSharedEvent _self;
  final $Res Function(ContentSharedEvent) _then;

/// Create a copy of ContentSharedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageCode = null,Object? elementType = null,Object? elementId = null,Object? position = freezed,}) {
  return _then(ContentSharedEvent(
pageCode: null == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String,elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentSharedEvent].
extension ContentSharedEventPatterns on ContentSharedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentSharedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentSharedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentSharedEvent value)  $default,){
final _that = this;
switch (_that) {
case _ContentSharedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentSharedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ContentSharedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pageCode,  String elementType,  String elementId,  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentSharedEvent() when $default != null:
return $default(_that.pageCode,_that.elementType,_that.elementId,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pageCode,  String elementType,  String elementId,  int? position)  $default,) {final _that = this;
switch (_that) {
case _ContentSharedEvent():
return $default(_that.pageCode,_that.elementType,_that.elementId,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pageCode,  String elementType,  String elementId,  int? position)?  $default,) {final _that = this;
switch (_that) {
case _ContentSharedEvent() when $default != null:
return $default(_that.pageCode,_that.elementType,_that.elementId,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentSharedEvent implements ContentSharedEvent {
  const _ContentSharedEvent({required this.pageCode, required this.elementType, required this.elementId, this.position});
  factory _ContentSharedEvent.fromJson(Map<String, dynamic> json) => _$ContentSharedEventFromJson(json);

@override final  String pageCode;
@override final  String elementType;
@override final  String elementId;
@override final  int? position;

/// Create a copy of ContentSharedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentSharedEventCopyWith<_ContentSharedEvent> get copyWith => __$ContentSharedEventCopyWithImpl<_ContentSharedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentSharedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentSharedEvent&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&(identical(other.elementType, elementType) || other.elementType == elementType)&&(identical(other.elementId, elementId) || other.elementId == elementId)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pageCode,elementType,elementId,position);
}

@override
String toString() {
    return 'ContentSharedEvent(pageCode: $pageCode, elementType: $elementType, elementId: $elementId, position: $position)';
}


}

/// @nodoc
abstract mixin class _$ContentSharedEventCopyWith<$Res> implements $ContentSharedEventCopyWith<$Res> {
  factory _$ContentSharedEventCopyWith(_ContentSharedEvent value, $Res Function(_ContentSharedEvent) _then) = __$ContentSharedEventCopyWithImpl;
@override @useResult
$Res call({
 String pageCode, String elementType, String elementId, int? position
});




}
/// @nodoc
class __$ContentSharedEventCopyWithImpl<$Res>
    implements _$ContentSharedEventCopyWith<$Res> {
  __$ContentSharedEventCopyWithImpl(this._self, this._then);

  final _ContentSharedEvent _self;
  final $Res Function(_ContentSharedEvent) _then;

/// Create a copy of ContentSharedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageCode = null,Object? elementType = null,Object? elementId = null,Object? position = freezed,}) {
  return _then(_ContentSharedEvent(
pageCode: null == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String,elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
