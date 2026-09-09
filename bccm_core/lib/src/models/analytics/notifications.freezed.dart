// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationReceivedEvent {

 String? get notificationId; String? get action; String? get deeplink;
/// Create a copy of NotificationReceivedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationReceivedEventCopyWith<NotificationReceivedEvent> get copyWith => _$NotificationReceivedEventCopyWithImpl<NotificationReceivedEvent>(this as NotificationReceivedEvent, _$identity);

  /// Serializes this NotificationReceivedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationReceivedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationReceivedEvent&&(identical(other.notificationId, _this.notificationId) || other.notificationId == _this.notificationId)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.deeplink, _this.deeplink) || other.deeplink == _this.deeplink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationReceivedEvent;
  return Object.hash(runtimeType,_this.notificationId,_this.action,_this.deeplink);
}

@override
String toString() {
  final _this = this as NotificationReceivedEvent;
  return 'NotificationReceivedEvent(notificationId: ${_this.notificationId}, action: ${_this.action}, deeplink: ${_this.deeplink})';
}


}

/// @nodoc
abstract mixin class $NotificationReceivedEventCopyWith<$Res>  {
  factory $NotificationReceivedEventCopyWith(NotificationReceivedEvent value, $Res Function(NotificationReceivedEvent) _then) = _$NotificationReceivedEventCopyWithImpl;
@useResult
$Res call({
 String? notificationId, String? action, String? deeplink
});




}
/// @nodoc
class _$NotificationReceivedEventCopyWithImpl<$Res>
    implements $NotificationReceivedEventCopyWith<$Res> {
  _$NotificationReceivedEventCopyWithImpl(this._self, this._then);

  final NotificationReceivedEvent _self;
  final $Res Function(NotificationReceivedEvent) _then;

/// Create a copy of NotificationReceivedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = freezed,Object? action = freezed,Object? deeplink = freezed,}) {
  return _then(NotificationReceivedEvent(
notificationId: freezed == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,deeplink: freezed == deeplink ? _self.deeplink : deeplink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationReceivedEvent].
extension NotificationReceivedEventPatterns on NotificationReceivedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationReceivedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationReceivedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationReceivedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationReceivedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationReceivedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationReceivedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? notificationId,  String? action,  String? deeplink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationReceivedEvent() when $default != null:
return $default(_that.notificationId,_that.action,_that.deeplink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? notificationId,  String? action,  String? deeplink)  $default,) {final _that = this;
switch (_that) {
case _NotificationReceivedEvent():
return $default(_that.notificationId,_that.action,_that.deeplink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? notificationId,  String? action,  String? deeplink)?  $default,) {final _that = this;
switch (_that) {
case _NotificationReceivedEvent() when $default != null:
return $default(_that.notificationId,_that.action,_that.deeplink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationReceivedEvent implements NotificationReceivedEvent {
  const _NotificationReceivedEvent({this.notificationId, this.action, this.deeplink});
  factory _NotificationReceivedEvent.fromJson(Map<String, dynamic> json) => _$NotificationReceivedEventFromJson(json);

@override final  String? notificationId;
@override final  String? action;
@override final  String? deeplink;

/// Create a copy of NotificationReceivedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationReceivedEventCopyWith<_NotificationReceivedEvent> get copyWith => __$NotificationReceivedEventCopyWithImpl<_NotificationReceivedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationReceivedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationReceivedEvent&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.action, action) || other.action == action)&&(identical(other.deeplink, deeplink) || other.deeplink == deeplink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,notificationId,action,deeplink);
}

@override
String toString() {
    return 'NotificationReceivedEvent(notificationId: $notificationId, action: $action, deeplink: $deeplink)';
}


}

/// @nodoc
abstract mixin class _$NotificationReceivedEventCopyWith<$Res> implements $NotificationReceivedEventCopyWith<$Res> {
  factory _$NotificationReceivedEventCopyWith(_NotificationReceivedEvent value, $Res Function(_NotificationReceivedEvent) _then) = __$NotificationReceivedEventCopyWithImpl;
@override @useResult
$Res call({
 String? notificationId, String? action, String? deeplink
});




}
/// @nodoc
class __$NotificationReceivedEventCopyWithImpl<$Res>
    implements _$NotificationReceivedEventCopyWith<$Res> {
  __$NotificationReceivedEventCopyWithImpl(this._self, this._then);

  final _NotificationReceivedEvent _self;
  final $Res Function(_NotificationReceivedEvent) _then;

/// Create a copy of NotificationReceivedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = freezed,Object? action = freezed,Object? deeplink = freezed,}) {
  return _then(_NotificationReceivedEvent(
notificationId: freezed == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,deeplink: freezed == deeplink ? _self.deeplink : deeplink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NotificationOpenedEvent {

 String? get notificationId;
/// Create a copy of NotificationOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationOpenedEventCopyWith<NotificationOpenedEvent> get copyWith => _$NotificationOpenedEventCopyWithImpl<NotificationOpenedEvent>(this as NotificationOpenedEvent, _$identity);

  /// Serializes this NotificationOpenedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationOpenedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationOpenedEvent&&(identical(other.notificationId, _this.notificationId) || other.notificationId == _this.notificationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationOpenedEvent;
  return Object.hash(runtimeType,_this.notificationId);
}

@override
String toString() {
  final _this = this as NotificationOpenedEvent;
  return 'NotificationOpenedEvent(notificationId: ${_this.notificationId})';
}


}

/// @nodoc
abstract mixin class $NotificationOpenedEventCopyWith<$Res>  {
  factory $NotificationOpenedEventCopyWith(NotificationOpenedEvent value, $Res Function(NotificationOpenedEvent) _then) = _$NotificationOpenedEventCopyWithImpl;
@useResult
$Res call({
 String? notificationId
});




}
/// @nodoc
class _$NotificationOpenedEventCopyWithImpl<$Res>
    implements $NotificationOpenedEventCopyWith<$Res> {
  _$NotificationOpenedEventCopyWithImpl(this._self, this._then);

  final NotificationOpenedEvent _self;
  final $Res Function(NotificationOpenedEvent) _then;

/// Create a copy of NotificationOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = freezed,}) {
  return _then(NotificationOpenedEvent(
notificationId: freezed == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationOpenedEvent].
extension NotificationOpenedEventPatterns on NotificationOpenedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationOpenedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationOpenedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationOpenedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationOpenedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationOpenedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationOpenedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? notificationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationOpenedEvent() when $default != null:
return $default(_that.notificationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? notificationId)  $default,) {final _that = this;
switch (_that) {
case _NotificationOpenedEvent():
return $default(_that.notificationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? notificationId)?  $default,) {final _that = this;
switch (_that) {
case _NotificationOpenedEvent() when $default != null:
return $default(_that.notificationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationOpenedEvent implements NotificationOpenedEvent {
  const _NotificationOpenedEvent({this.notificationId});
  factory _NotificationOpenedEvent.fromJson(Map<String, dynamic> json) => _$NotificationOpenedEventFromJson(json);

@override final  String? notificationId;

/// Create a copy of NotificationOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationOpenedEventCopyWith<_NotificationOpenedEvent> get copyWith => __$NotificationOpenedEventCopyWithImpl<_NotificationOpenedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationOpenedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationOpenedEvent&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,notificationId);
}

@override
String toString() {
    return 'NotificationOpenedEvent(notificationId: $notificationId)';
}


}

/// @nodoc
abstract mixin class _$NotificationOpenedEventCopyWith<$Res> implements $NotificationOpenedEventCopyWith<$Res> {
  factory _$NotificationOpenedEventCopyWith(_NotificationOpenedEvent value, $Res Function(_NotificationOpenedEvent) _then) = __$NotificationOpenedEventCopyWithImpl;
@override @useResult
$Res call({
 String? notificationId
});




}
/// @nodoc
class __$NotificationOpenedEventCopyWithImpl<$Res>
    implements _$NotificationOpenedEventCopyWith<$Res> {
  __$NotificationOpenedEventCopyWithImpl(this._self, this._then);

  final _NotificationOpenedEvent _self;
  final $Res Function(_NotificationOpenedEvent) _then;

/// Create a copy of NotificationOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = freezed,}) {
  return _then(_NotificationOpenedEvent(
notificationId: freezed == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NotificationDeviceTokenUpdatedEvent {



  /// Serializes this NotificationDeviceTokenUpdatedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDeviceTokenUpdatedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationDeviceTokenUpdatedEvent()';
}


}

/// @nodoc
class $NotificationDeviceTokenUpdatedEventCopyWith<$Res>  {
$NotificationDeviceTokenUpdatedEventCopyWith(NotificationDeviceTokenUpdatedEvent _, $Res Function(NotificationDeviceTokenUpdatedEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationDeviceTokenUpdatedEvent].
extension NotificationDeviceTokenUpdatedEventPatterns on NotificationDeviceTokenUpdatedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDeviceTokenUpdatedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDeviceTokenUpdatedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDeviceTokenUpdatedEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDeviceTokenUpdatedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDeviceTokenUpdatedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDeviceTokenUpdatedEvent() when $default != null:
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
case _NotificationDeviceTokenUpdatedEvent() when $default != null:
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
case _NotificationDeviceTokenUpdatedEvent():
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
case _NotificationDeviceTokenUpdatedEvent() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDeviceTokenUpdatedEvent implements NotificationDeviceTokenUpdatedEvent {
  const _NotificationDeviceTokenUpdatedEvent();
  factory _NotificationDeviceTokenUpdatedEvent.fromJson(Map<String, dynamic> json) => _$NotificationDeviceTokenUpdatedEventFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$NotificationDeviceTokenUpdatedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDeviceTokenUpdatedEvent);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationDeviceTokenUpdatedEvent()';
}


}





/// @nodoc
mixin _$NotificationsStatusEvent {

 String? get recipientId; bool? get enabled;
/// Create a copy of NotificationsStatusEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsStatusEventCopyWith<NotificationsStatusEvent> get copyWith => _$NotificationsStatusEventCopyWithImpl<NotificationsStatusEvent>(this as NotificationsStatusEvent, _$identity);

  /// Serializes this NotificationsStatusEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationsStatusEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsStatusEvent&&(identical(other.recipientId, _this.recipientId) || other.recipientId == _this.recipientId)&&(identical(other.enabled, _this.enabled) || other.enabled == _this.enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationsStatusEvent;
  return Object.hash(runtimeType,_this.recipientId,_this.enabled);
}

@override
String toString() {
  final _this = this as NotificationsStatusEvent;
  return 'NotificationsStatusEvent(recipientId: ${_this.recipientId}, enabled: ${_this.enabled})';
}


}

/// @nodoc
abstract mixin class $NotificationsStatusEventCopyWith<$Res>  {
  factory $NotificationsStatusEventCopyWith(NotificationsStatusEvent value, $Res Function(NotificationsStatusEvent) _then) = _$NotificationsStatusEventCopyWithImpl;
@useResult
$Res call({
 String? recipientId, bool? enabled
});




}
/// @nodoc
class _$NotificationsStatusEventCopyWithImpl<$Res>
    implements $NotificationsStatusEventCopyWith<$Res> {
  _$NotificationsStatusEventCopyWithImpl(this._self, this._then);

  final NotificationsStatusEvent _self;
  final $Res Function(NotificationsStatusEvent) _then;

/// Create a copy of NotificationsStatusEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipientId = freezed,Object? enabled = freezed,}) {
  return _then(NotificationsStatusEvent(
recipientId: freezed == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationsStatusEvent].
extension NotificationsStatusEventPatterns on NotificationsStatusEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationsStatusEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationsStatusEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationsStatusEvent value)  $default,){
final _that = this;
switch (_that) {
case _NotificationsStatusEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationsStatusEvent value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationsStatusEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? recipientId,  bool? enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationsStatusEvent() when $default != null:
return $default(_that.recipientId,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? recipientId,  bool? enabled)  $default,) {final _that = this;
switch (_that) {
case _NotificationsStatusEvent():
return $default(_that.recipientId,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? recipientId,  bool? enabled)?  $default,) {final _that = this;
switch (_that) {
case _NotificationsStatusEvent() when $default != null:
return $default(_that.recipientId,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationsStatusEvent implements NotificationsStatusEvent {
  const _NotificationsStatusEvent({this.recipientId, this.enabled});
  factory _NotificationsStatusEvent.fromJson(Map<String, dynamic> json) => _$NotificationsStatusEventFromJson(json);

@override final  String? recipientId;
@override final  bool? enabled;

/// Create a copy of NotificationsStatusEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationsStatusEventCopyWith<_NotificationsStatusEvent> get copyWith => __$NotificationsStatusEventCopyWithImpl<_NotificationsStatusEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationsStatusEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationsStatusEvent&&(identical(other.recipientId, recipientId) || other.recipientId == recipientId)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,recipientId,enabled);
}

@override
String toString() {
    return 'NotificationsStatusEvent(recipientId: $recipientId, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$NotificationsStatusEventCopyWith<$Res> implements $NotificationsStatusEventCopyWith<$Res> {
  factory _$NotificationsStatusEventCopyWith(_NotificationsStatusEvent value, $Res Function(_NotificationsStatusEvent) _then) = __$NotificationsStatusEventCopyWithImpl;
@override @useResult
$Res call({
 String? recipientId, bool? enabled
});




}
/// @nodoc
class __$NotificationsStatusEventCopyWithImpl<$Res>
    implements _$NotificationsStatusEventCopyWith<$Res> {
  __$NotificationsStatusEventCopyWithImpl(this._self, this._then);

  final _NotificationsStatusEvent _self;
  final $Res Function(_NotificationsStatusEvent) _then;

/// Create a copy of NotificationsStatusEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipientId = freezed,Object? enabled = freezed,}) {
  return _then(_NotificationsStatusEvent(
recipientId: freezed == recipientId ? _self.recipientId : recipientId // ignore: cast_nullable_to_non_nullable
as String?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
