// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_day_clicked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalendarDayClickedEvent {

 String get pageCode; String get calendarView; String get calendarDate;
/// Create a copy of CalendarDayClickedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarDayClickedEventCopyWith<CalendarDayClickedEvent> get copyWith => _$CalendarDayClickedEventCopyWithImpl<CalendarDayClickedEvent>(this as CalendarDayClickedEvent, _$identity);

  /// Serializes this CalendarDayClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CalendarDayClickedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarDayClickedEvent&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&(identical(other.calendarView, _this.calendarView) || other.calendarView == _this.calendarView)&&(identical(other.calendarDate, _this.calendarDate) || other.calendarDate == _this.calendarDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CalendarDayClickedEvent;
  return Object.hash(runtimeType,_this.pageCode,_this.calendarView,_this.calendarDate);
}

@override
String toString() {
  final _this = this as CalendarDayClickedEvent;
  return 'CalendarDayClickedEvent(pageCode: ${_this.pageCode}, calendarView: ${_this.calendarView}, calendarDate: ${_this.calendarDate})';
}


}

/// @nodoc
abstract mixin class $CalendarDayClickedEventCopyWith<$Res>  {
  factory $CalendarDayClickedEventCopyWith(CalendarDayClickedEvent value, $Res Function(CalendarDayClickedEvent) _then) = _$CalendarDayClickedEventCopyWithImpl;
@useResult
$Res call({
 String pageCode, String calendarView, String calendarDate
});




}
/// @nodoc
class _$CalendarDayClickedEventCopyWithImpl<$Res>
    implements $CalendarDayClickedEventCopyWith<$Res> {
  _$CalendarDayClickedEventCopyWithImpl(this._self, this._then);

  final CalendarDayClickedEvent _self;
  final $Res Function(CalendarDayClickedEvent) _then;

/// Create a copy of CalendarDayClickedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageCode = null,Object? calendarView = null,Object? calendarDate = null,}) {
  return _then(CalendarDayClickedEvent(
pageCode: null == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String,calendarView: null == calendarView ? _self.calendarView : calendarView // ignore: cast_nullable_to_non_nullable
as String,calendarDate: null == calendarDate ? _self.calendarDate : calendarDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarDayClickedEvent].
extension CalendarDayClickedEventPatterns on CalendarDayClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarDayClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarDayClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarDayClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _CalendarDayClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarDayClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarDayClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pageCode,  String calendarView,  String calendarDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarDayClickedEvent() when $default != null:
return $default(_that.pageCode,_that.calendarView,_that.calendarDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pageCode,  String calendarView,  String calendarDate)  $default,) {final _that = this;
switch (_that) {
case _CalendarDayClickedEvent():
return $default(_that.pageCode,_that.calendarView,_that.calendarDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pageCode,  String calendarView,  String calendarDate)?  $default,) {final _that = this;
switch (_that) {
case _CalendarDayClickedEvent() when $default != null:
return $default(_that.pageCode,_that.calendarView,_that.calendarDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarDayClickedEvent implements CalendarDayClickedEvent {
  const _CalendarDayClickedEvent({required this.pageCode, required this.calendarView, required this.calendarDate});
  factory _CalendarDayClickedEvent.fromJson(Map<String, dynamic> json) => _$CalendarDayClickedEventFromJson(json);

@override final  String pageCode;
@override final  String calendarView;
@override final  String calendarDate;

/// Create a copy of CalendarDayClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarDayClickedEventCopyWith<_CalendarDayClickedEvent> get copyWith => __$CalendarDayClickedEventCopyWithImpl<_CalendarDayClickedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarDayClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarDayClickedEvent&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&(identical(other.calendarView, calendarView) || other.calendarView == calendarView)&&(identical(other.calendarDate, calendarDate) || other.calendarDate == calendarDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pageCode,calendarView,calendarDate);
}

@override
String toString() {
    return 'CalendarDayClickedEvent(pageCode: $pageCode, calendarView: $calendarView, calendarDate: $calendarDate)';
}


}

/// @nodoc
abstract mixin class _$CalendarDayClickedEventCopyWith<$Res> implements $CalendarDayClickedEventCopyWith<$Res> {
  factory _$CalendarDayClickedEventCopyWith(_CalendarDayClickedEvent value, $Res Function(_CalendarDayClickedEvent) _then) = __$CalendarDayClickedEventCopyWithImpl;
@override @useResult
$Res call({
 String pageCode, String calendarView, String calendarDate
});




}
/// @nodoc
class __$CalendarDayClickedEventCopyWithImpl<$Res>
    implements _$CalendarDayClickedEventCopyWith<$Res> {
  __$CalendarDayClickedEventCopyWithImpl(this._self, this._then);

  final _CalendarDayClickedEvent _self;
  final $Res Function(_CalendarDayClickedEvent) _then;

/// Create a copy of CalendarDayClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageCode = null,Object? calendarView = null,Object? calendarDate = null,}) {
  return _then(_CalendarDayClickedEvent(
pageCode: null == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String,calendarView: null == calendarView ? _self.calendarView : calendarView // ignore: cast_nullable_to_non_nullable
as String,calendarDate: null == calendarDate ? _self.calendarDate : calendarDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
