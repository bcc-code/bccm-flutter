// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationPromptDismissedEvent {

 int get timesDismissed;
/// Create a copy of NotificationPromptDismissedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPromptDismissedEventCopyWith<NotificationPromptDismissedEvent> get copyWith => _$NotificationPromptDismissedEventCopyWithImpl<NotificationPromptDismissedEvent>(this as NotificationPromptDismissedEvent, _$identity);

  /// Serializes this NotificationPromptDismissedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationPromptDismissedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPromptDismissedEvent&&(identical(other.timesDismissed, _this.timesDismissed) || other.timesDismissed == _this.timesDismissed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationPromptDismissedEvent;
  return Object.hash(runtimeType,_this.timesDismissed);
}

@override
String toString() {
  final _this = this as NotificationPromptDismissedEvent;
  return 'NotificationPromptDismissedEvent(timesDismissed: ${_this.timesDismissed})';
}


}

/// @nodoc
abstract mixin class $NotificationPromptDismissedEventCopyWith<$Res>  {
  factory $NotificationPromptDismissedEventCopyWith(NotificationPromptDismissedEvent value, $Res Function(NotificationPromptDismissedEvent) _then) = _$NotificationPromptDismissedEventCopyWithImpl;
@useResult
$Res call({
 int timesDismissed
});




}
/// @nodoc
class _$NotificationPromptDismissedEventCopyWithImpl<$Res>
    implements $NotificationPromptDismissedEventCopyWith<$Res> {
  _$NotificationPromptDismissedEventCopyWithImpl(this._self, this._then);

  final NotificationPromptDismissedEvent _self;
  final $Res Function(NotificationPromptDismissedEvent) _then;

/// Create a copy of NotificationPromptDismissedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timesDismissed = null,}) {
  return _then(NotificationPromptDismissedEvent(
timesDismissed: null == timesDismissed ? _self.timesDismissed : timesDismissed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPromptDismissedEvent].
extension NotificationPromptDismissedEventPatterns on NotificationPromptDismissedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPromptDismissedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPromptDismissedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPromptDismissedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptDismissedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPromptDismissedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptDismissedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int timesDismissed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPromptDismissedEvent() when $default != null:
return $default(_that.timesDismissed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int timesDismissed)  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptDismissedEvent():
return $default(_that.timesDismissed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int timesDismissed)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptDismissedEvent() when $default != null:
return $default(_that.timesDismissed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPromptDismissedEvent implements NotificationPromptDismissedEvent {
  const _NotificationPromptDismissedEvent({required this.timesDismissed});
  factory _NotificationPromptDismissedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptDismissedEventFromJson(json);

@override final  int timesDismissed;

/// Create a copy of NotificationPromptDismissedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPromptDismissedEventCopyWith<_NotificationPromptDismissedEvent> get copyWith => __$NotificationPromptDismissedEventCopyWithImpl<_NotificationPromptDismissedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPromptDismissedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPromptDismissedEvent&&(identical(other.timesDismissed, timesDismissed) || other.timesDismissed == timesDismissed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,timesDismissed);
}

@override
String toString() {
    return 'NotificationPromptDismissedEvent(timesDismissed: $timesDismissed)';
}


}

/// @nodoc
abstract mixin class _$NotificationPromptDismissedEventCopyWith<$Res> implements $NotificationPromptDismissedEventCopyWith<$Res> {
  factory _$NotificationPromptDismissedEventCopyWith(_NotificationPromptDismissedEvent value, $Res Function(_NotificationPromptDismissedEvent) _then) = __$NotificationPromptDismissedEventCopyWithImpl;
@override @useResult
$Res call({
 int timesDismissed
});




}
/// @nodoc
class __$NotificationPromptDismissedEventCopyWithImpl<$Res>
    implements _$NotificationPromptDismissedEventCopyWith<$Res> {
  __$NotificationPromptDismissedEventCopyWithImpl(this._self, this._then);

  final _NotificationPromptDismissedEvent _self;
  final $Res Function(_NotificationPromptDismissedEvent) _then;

/// Create a copy of NotificationPromptDismissedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timesDismissed = null,}) {
  return _then(_NotificationPromptDismissedEvent(
timesDismissed: null == timesDismissed ? _self.timesDismissed : timesDismissed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NotificationPromptClickedEvent {



  /// Serializes this NotificationPromptClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPromptClickedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationPromptClickedEvent()';
}


}

/// @nodoc
class $NotificationPromptClickedEventCopyWith<$Res>  {
$NotificationPromptClickedEventCopyWith(NotificationPromptClickedEvent _, $Res Function(NotificationPromptClickedEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationPromptClickedEvent].
extension NotificationPromptClickedEventPatterns on NotificationPromptClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPromptClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPromptClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPromptClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPromptClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPromptClickedEvent() when $default != null:
return $default();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptClickedEvent():
return $default();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptClickedEvent() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPromptClickedEvent implements NotificationPromptClickedEvent {
  const _NotificationPromptClickedEvent();
  factory _NotificationPromptClickedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptClickedEventFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$NotificationPromptClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPromptClickedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationPromptClickedEvent()';
}


}





/// @nodoc
mixin _$NotificationPromptDeniedEvent {



  /// Serializes this NotificationPromptDeniedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPromptDeniedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationPromptDeniedEvent()';
}


}

/// @nodoc
class $NotificationPromptDeniedEventCopyWith<$Res>  {
$NotificationPromptDeniedEventCopyWith(NotificationPromptDeniedEvent _, $Res Function(NotificationPromptDeniedEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationPromptDeniedEvent].
extension NotificationPromptDeniedEventPatterns on NotificationPromptDeniedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPromptDeniedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPromptDeniedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPromptDeniedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptDeniedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPromptDeniedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptDeniedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPromptDeniedEvent() when $default != null:
return $default();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptDeniedEvent():
return $default();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptDeniedEvent() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPromptDeniedEvent implements NotificationPromptDeniedEvent {
  const _NotificationPromptDeniedEvent();
  factory _NotificationPromptDeniedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptDeniedEventFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$NotificationPromptDeniedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPromptDeniedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationPromptDeniedEvent()';
}


}





/// @nodoc
mixin _$NotificationPromptAcceptedEvent {



  /// Serializes this NotificationPromptAcceptedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPromptAcceptedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationPromptAcceptedEvent()';
}


}

/// @nodoc
class $NotificationPromptAcceptedEventCopyWith<$Res>  {
$NotificationPromptAcceptedEventCopyWith(NotificationPromptAcceptedEvent _, $Res Function(NotificationPromptAcceptedEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationPromptAcceptedEvent].
extension NotificationPromptAcceptedEventPatterns on NotificationPromptAcceptedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPromptAcceptedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPromptAcceptedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPromptAcceptedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptAcceptedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPromptAcceptedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPromptAcceptedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPromptAcceptedEvent() when $default != null:
return $default();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptAcceptedEvent():
return $default();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _NotificationPromptAcceptedEvent() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPromptAcceptedEvent implements NotificationPromptAcceptedEvent {
  const _NotificationPromptAcceptedEvent();
  factory _NotificationPromptAcceptedEvent.fromJson(Map<String, dynamic> json) => _$NotificationPromptAcceptedEventFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$NotificationPromptAcceptedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPromptAcceptedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationPromptAcceptedEvent()';
}


}





/// @nodoc
mixin _$NotificationsSettingToggledEvent {

 bool get enabled;
/// Create a copy of NotificationsSettingToggledEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsSettingToggledEventCopyWith<NotificationsSettingToggledEvent> get copyWith => _$NotificationsSettingToggledEventCopyWithImpl<NotificationsSettingToggledEvent>(this as NotificationsSettingToggledEvent, _$identity);

  /// Serializes this NotificationsSettingToggledEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationsSettingToggledEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsSettingToggledEvent&&(identical(other.enabled, _this.enabled) || other.enabled == _this.enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationsSettingToggledEvent;
  return Object.hash(runtimeType,_this.enabled);
}

@override
String toString() {
  final _this = this as NotificationsSettingToggledEvent;
  return 'NotificationsSettingToggledEvent(enabled: ${_this.enabled})';
}


}

/// @nodoc
abstract mixin class $NotificationsSettingToggledEventCopyWith<$Res>  {
  factory $NotificationsSettingToggledEventCopyWith(NotificationsSettingToggledEvent value, $Res Function(NotificationsSettingToggledEvent) _then) = _$NotificationsSettingToggledEventCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class _$NotificationsSettingToggledEventCopyWithImpl<$Res>
    implements $NotificationsSettingToggledEventCopyWith<$Res> {
  _$NotificationsSettingToggledEventCopyWithImpl(this._self, this._then);

  final NotificationsSettingToggledEvent _self;
  final $Res Function(NotificationsSettingToggledEvent) _then;

/// Create a copy of NotificationsSettingToggledEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = null,}) {
  return _then(NotificationsSettingToggledEvent(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationsSettingToggledEvent].
extension NotificationsSettingToggledEventPatterns on NotificationsSettingToggledEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsSettingToggledEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsSettingToggledEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsSettingToggledEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsSettingToggledEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsSettingToggledEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsSettingToggledEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsSettingToggledEvent() when $default != null:
return $default(_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationsSettingToggledEvent():
return $default(_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsSettingToggledEvent() when $default != null:
return $default(_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationsSettingToggledEvent implements NotificationsSettingToggledEvent {
  const _NotificationsSettingToggledEvent({required this.enabled});
  factory _NotificationsSettingToggledEvent.fromJson(Map<String, dynamic> json) => _$NotificationsSettingToggledEventFromJson(json);

@override final  bool enabled;

/// Create a copy of NotificationsSettingToggledEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsSettingToggledEventCopyWith<_NotificationsSettingToggledEvent> get copyWith => __$NotificationsSettingToggledEventCopyWithImpl<_NotificationsSettingToggledEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationsSettingToggledEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsSettingToggledEvent&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,enabled);
}

@override
String toString() {
    return 'NotificationsSettingToggledEvent(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationsSettingToggledEventCopyWith<$Res> implements $NotificationsSettingToggledEventCopyWith<$Res> {
  factory _$NotificationsSettingToggledEventCopyWith(_NotificationsSettingToggledEvent value, $Res Function(_NotificationsSettingToggledEvent) _then) = __$NotificationsSettingToggledEventCopyWithImpl;
@override @useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$NotificationsSettingToggledEventCopyWithImpl<$Res>
    implements _$NotificationsSettingToggledEventCopyWith<$Res> {
  __$NotificationsSettingToggledEventCopyWithImpl(this._self, this._then);

  final _NotificationsSettingToggledEvent _self;
  final $Res Function(_NotificationsSettingToggledEvent) _then;

/// Create a copy of NotificationsSettingToggledEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_NotificationsSettingToggledEvent(
enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
