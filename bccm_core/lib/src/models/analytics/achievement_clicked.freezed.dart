// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_clicked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AchievementClickedEvent {

 int get elementPosition; String get elementTitle;
/// Create a copy of AchievementClickedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AchievementClickedEventCopyWith<AchievementClickedEvent> get copyWith => _$AchievementClickedEventCopyWithImpl<AchievementClickedEvent>(this as AchievementClickedEvent, _$identity);

  /// Serializes this AchievementClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AchievementClickedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AchievementClickedEvent&&(identical(other.elementPosition, _this.elementPosition) || other.elementPosition == _this.elementPosition)&&(identical(other.elementTitle, _this.elementTitle) || other.elementTitle == _this.elementTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AchievementClickedEvent;
  return Object.hash(runtimeType,_this.elementPosition,_this.elementTitle);
}

@override
String toString() {
  final _this = this as AchievementClickedEvent;
  return 'AchievementClickedEvent(elementPosition: ${_this.elementPosition}, elementTitle: ${_this.elementTitle})';
}


}

/// @nodoc
abstract mixin class $AchievementClickedEventCopyWith<$Res>  {
  factory $AchievementClickedEventCopyWith(AchievementClickedEvent value, $Res Function(AchievementClickedEvent) _then) = _$AchievementClickedEventCopyWithImpl;
@useResult
$Res call({
 int elementPosition, String elementTitle
});




}
/// @nodoc
class _$AchievementClickedEventCopyWithImpl<$Res>
    implements $AchievementClickedEventCopyWith<$Res> {
  _$AchievementClickedEventCopyWithImpl(this._self, this._then);

  final AchievementClickedEvent _self;
  final $Res Function(AchievementClickedEvent) _then;

/// Create a copy of AchievementClickedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? elementPosition = null,Object? elementTitle = null,}) {
  return _then(AchievementClickedEvent(
elementPosition: null == elementPosition ? _self.elementPosition : elementPosition // ignore: cast_nullable_to_non_nullable
as int,elementTitle: null == elementTitle ? _self.elementTitle : elementTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AchievementClickedEvent].
extension AchievementClickedEventPatterns on AchievementClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AchievementClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AchievementClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AchievementClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _AchievementClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AchievementClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _AchievementClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int elementPosition,  String elementTitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AchievementClickedEvent() when $default != null:
return $default(_that.elementPosition,_that.elementTitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int elementPosition,  String elementTitle)  $default,) {final _that = this;
switch (_that) {
case _AchievementClickedEvent():
return $default(_that.elementPosition,_that.elementTitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int elementPosition,  String elementTitle)?  $default,) {final _that = this;
switch (_that) {
case _AchievementClickedEvent() when $default != null:
return $default(_that.elementPosition,_that.elementTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AchievementClickedEvent implements AchievementClickedEvent {
  const _AchievementClickedEvent({required this.elementPosition, required this.elementTitle});
  factory _AchievementClickedEvent.fromJson(Map<String, dynamic> json) => _$AchievementClickedEventFromJson(json);

@override final  int elementPosition;
@override final  String elementTitle;

/// Create a copy of AchievementClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AchievementClickedEventCopyWith<_AchievementClickedEvent> get copyWith => __$AchievementClickedEventCopyWithImpl<_AchievementClickedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AchievementClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AchievementClickedEvent&&(identical(other.elementPosition, elementPosition) || other.elementPosition == elementPosition)&&(identical(other.elementTitle, elementTitle) || other.elementTitle == elementTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,elementPosition,elementTitle);
}

@override
String toString() {
    return 'AchievementClickedEvent(elementPosition: $elementPosition, elementTitle: $elementTitle)';
}


}

/// @nodoc
abstract mixin class _$AchievementClickedEventCopyWith<$Res> implements $AchievementClickedEventCopyWith<$Res> {
  factory _$AchievementClickedEventCopyWith(_AchievementClickedEvent value, $Res Function(_AchievementClickedEvent) _then) = __$AchievementClickedEventCopyWithImpl;
@override @useResult
$Res call({
 int elementPosition, String elementTitle
});




}
/// @nodoc
class __$AchievementClickedEventCopyWithImpl<$Res>
    implements _$AchievementClickedEventCopyWith<$Res> {
  __$AchievementClickedEventCopyWithImpl(this._self, this._then);

  final _AchievementClickedEvent _self;
  final $Res Function(_AchievementClickedEvent) _then;

/// Create a copy of AchievementClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? elementPosition = null,Object? elementTitle = null,}) {
  return _then(_AchievementClickedEvent(
elementPosition: null == elementPosition ? _self.elementPosition : elementPosition // ignore: cast_nullable_to_non_nullable
as int,elementTitle: null == elementTitle ? _self.elementTitle : elementTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
