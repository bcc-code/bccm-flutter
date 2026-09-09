// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shorts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShortStartedEvent {

 String get shortId; String get shortTitle; int get replayCount; bool get resumed; double get positionFraction; int get positionSeconds;
/// Create a copy of ShortStartedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortStartedEventCopyWith<ShortStartedEvent> get copyWith => _$ShortStartedEventCopyWithImpl<ShortStartedEvent>(this as ShortStartedEvent, _$identity);

  /// Serializes this ShortStartedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ShortStartedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortStartedEvent&&(identical(other.shortId, _this.shortId) || other.shortId == _this.shortId)&&(identical(other.shortTitle, _this.shortTitle) || other.shortTitle == _this.shortTitle)&&(identical(other.replayCount, _this.replayCount) || other.replayCount == _this.replayCount)&&(identical(other.resumed, _this.resumed) || other.resumed == _this.resumed)&&(identical(other.positionFraction, _this.positionFraction) || other.positionFraction == _this.positionFraction)&&(identical(other.positionSeconds, _this.positionSeconds) || other.positionSeconds == _this.positionSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ShortStartedEvent;
  return Object.hash(runtimeType,_this.shortId,_this.shortTitle,_this.replayCount,_this.resumed,_this.positionFraction,_this.positionSeconds);
}

@override
String toString() {
  final _this = this as ShortStartedEvent;
  return 'ShortStartedEvent(shortId: ${_this.shortId}, shortTitle: ${_this.shortTitle}, replayCount: ${_this.replayCount}, resumed: ${_this.resumed}, positionFraction: ${_this.positionFraction}, positionSeconds: ${_this.positionSeconds})';
}


}

/// @nodoc
abstract mixin class $ShortStartedEventCopyWith<$Res>  {
  factory $ShortStartedEventCopyWith(ShortStartedEvent value, $Res Function(ShortStartedEvent) _then) = _$ShortStartedEventCopyWithImpl;
@useResult
$Res call({
 String shortId, String shortTitle, int replayCount, bool resumed, double positionFraction, int positionSeconds
});




}
/// @nodoc
class _$ShortStartedEventCopyWithImpl<$Res>
    implements $ShortStartedEventCopyWith<$Res> {
  _$ShortStartedEventCopyWithImpl(this._self, this._then);

  final ShortStartedEvent _self;
  final $Res Function(ShortStartedEvent) _then;

/// Create a copy of ShortStartedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shortId = null,Object? shortTitle = null,Object? replayCount = null,Object? resumed = null,Object? positionFraction = null,Object? positionSeconds = null,}) {
  return _then(ShortStartedEvent(
shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String,shortTitle: null == shortTitle ? _self.shortTitle : shortTitle // ignore: cast_nullable_to_non_nullable
as String,replayCount: null == replayCount ? _self.replayCount : replayCount // ignore: cast_nullable_to_non_nullable
as int,resumed: null == resumed ? _self.resumed : resumed // ignore: cast_nullable_to_non_nullable
as bool,positionFraction: null == positionFraction ? _self.positionFraction : positionFraction // ignore: cast_nullable_to_non_nullable
as double,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShortStartedEvent].
extension ShortStartedEventPatterns on ShortStartedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortStartedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortStartedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortStartedEvent value)  $default,){
final _that = this;
switch (_that) {
case _ShortStartedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortStartedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ShortStartedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String shortId,  String shortTitle,  int replayCount,  bool resumed,  double positionFraction,  int positionSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortStartedEvent() when $default != null:
return $default(_that.shortId,_that.shortTitle,_that.replayCount,_that.resumed,_that.positionFraction,_that.positionSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String shortId,  String shortTitle,  int replayCount,  bool resumed,  double positionFraction,  int positionSeconds)  $default,) {final _that = this;
switch (_that) {
case _ShortStartedEvent():
return $default(_that.shortId,_that.shortTitle,_that.replayCount,_that.resumed,_that.positionFraction,_that.positionSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String shortId,  String shortTitle,  int replayCount,  bool resumed,  double positionFraction,  int positionSeconds)?  $default,) {final _that = this;
switch (_that) {
case _ShortStartedEvent() when $default != null:
return $default(_that.shortId,_that.shortTitle,_that.replayCount,_that.resumed,_that.positionFraction,_that.positionSeconds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortStartedEvent implements ShortStartedEvent {
  const _ShortStartedEvent({required this.shortId, required this.shortTitle, required this.replayCount, required this.resumed, required this.positionFraction, required this.positionSeconds});
  factory _ShortStartedEvent.fromJson(Map<String, dynamic> json) => _$ShortStartedEventFromJson(json);

@override final  String shortId;
@override final  String shortTitle;
@override final  int replayCount;
@override final  bool resumed;
@override final  double positionFraction;
@override final  int positionSeconds;

/// Create a copy of ShortStartedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortStartedEventCopyWith<_ShortStartedEvent> get copyWith => __$ShortStartedEventCopyWithImpl<_ShortStartedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortStartedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortStartedEvent&&(identical(other.shortId, shortId) || other.shortId == shortId)&&(identical(other.shortTitle, shortTitle) || other.shortTitle == shortTitle)&&(identical(other.replayCount, replayCount) || other.replayCount == replayCount)&&(identical(other.resumed, resumed) || other.resumed == resumed)&&(identical(other.positionFraction, positionFraction) || other.positionFraction == positionFraction)&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,shortId,shortTitle,replayCount,resumed,positionFraction,positionSeconds);
}

@override
String toString() {
    return 'ShortStartedEvent(shortId: $shortId, shortTitle: $shortTitle, replayCount: $replayCount, resumed: $resumed, positionFraction: $positionFraction, positionSeconds: $positionSeconds)';
}


}

/// @nodoc
abstract mixin class _$ShortStartedEventCopyWith<$Res> implements $ShortStartedEventCopyWith<$Res> {
  factory _$ShortStartedEventCopyWith(_ShortStartedEvent value, $Res Function(_ShortStartedEvent) _then) = __$ShortStartedEventCopyWithImpl;
@override @useResult
$Res call({
 String shortId, String shortTitle, int replayCount, bool resumed, double positionFraction, int positionSeconds
});




}
/// @nodoc
class __$ShortStartedEventCopyWithImpl<$Res>
    implements _$ShortStartedEventCopyWith<$Res> {
  __$ShortStartedEventCopyWithImpl(this._self, this._then);

  final _ShortStartedEvent _self;
  final $Res Function(_ShortStartedEvent) _then;

/// Create a copy of ShortStartedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shortId = null,Object? shortTitle = null,Object? replayCount = null,Object? resumed = null,Object? positionFraction = null,Object? positionSeconds = null,}) {
  return _then(_ShortStartedEvent(
shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String,shortTitle: null == shortTitle ? _self.shortTitle : shortTitle // ignore: cast_nullable_to_non_nullable
as String,replayCount: null == replayCount ? _self.replayCount : replayCount // ignore: cast_nullable_to_non_nullable
as int,resumed: null == resumed ? _self.resumed : resumed // ignore: cast_nullable_to_non_nullable
as bool,positionFraction: null == positionFraction ? _self.positionFraction : positionFraction // ignore: cast_nullable_to_non_nullable
as double,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ShortStoppedEvent {

 String get shortId; String? get shortTitle; double get positionFraction; int get positionSeconds; int get replayCount;
/// Create a copy of ShortStoppedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortStoppedEventCopyWith<ShortStoppedEvent> get copyWith => _$ShortStoppedEventCopyWithImpl<ShortStoppedEvent>(this as ShortStoppedEvent, _$identity);

  /// Serializes this ShortStoppedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ShortStoppedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortStoppedEvent&&(identical(other.shortId, _this.shortId) || other.shortId == _this.shortId)&&(identical(other.shortTitle, _this.shortTitle) || other.shortTitle == _this.shortTitle)&&(identical(other.positionFraction, _this.positionFraction) || other.positionFraction == _this.positionFraction)&&(identical(other.positionSeconds, _this.positionSeconds) || other.positionSeconds == _this.positionSeconds)&&(identical(other.replayCount, _this.replayCount) || other.replayCount == _this.replayCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ShortStoppedEvent;
  return Object.hash(runtimeType,_this.shortId,_this.shortTitle,_this.positionFraction,_this.positionSeconds,_this.replayCount);
}

@override
String toString() {
  final _this = this as ShortStoppedEvent;
  return 'ShortStoppedEvent(shortId: ${_this.shortId}, shortTitle: ${_this.shortTitle}, positionFraction: ${_this.positionFraction}, positionSeconds: ${_this.positionSeconds}, replayCount: ${_this.replayCount})';
}


}

/// @nodoc
abstract mixin class $ShortStoppedEventCopyWith<$Res>  {
  factory $ShortStoppedEventCopyWith(ShortStoppedEvent value, $Res Function(ShortStoppedEvent) _then) = _$ShortStoppedEventCopyWithImpl;
@useResult
$Res call({
 String shortId, String? shortTitle, double positionFraction, int positionSeconds, int replayCount
});




}
/// @nodoc
class _$ShortStoppedEventCopyWithImpl<$Res>
    implements $ShortStoppedEventCopyWith<$Res> {
  _$ShortStoppedEventCopyWithImpl(this._self, this._then);

  final ShortStoppedEvent _self;
  final $Res Function(ShortStoppedEvent) _then;

/// Create a copy of ShortStoppedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shortId = null,Object? shortTitle = freezed,Object? positionFraction = null,Object? positionSeconds = null,Object? replayCount = null,}) {
  return _then(ShortStoppedEvent(
shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String,shortTitle: freezed == shortTitle ? _self.shortTitle : shortTitle // ignore: cast_nullable_to_non_nullable
as String?,positionFraction: null == positionFraction ? _self.positionFraction : positionFraction // ignore: cast_nullable_to_non_nullable
as double,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,replayCount: null == replayCount ? _self.replayCount : replayCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShortStoppedEvent].
extension ShortStoppedEventPatterns on ShortStoppedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortStoppedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortStoppedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortStoppedEvent value)  $default,){
final _that = this;
switch (_that) {
case _ShortStoppedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortStoppedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ShortStoppedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String shortId,  String? shortTitle,  double positionFraction,  int positionSeconds,  int replayCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortStoppedEvent() when $default != null:
return $default(_that.shortId,_that.shortTitle,_that.positionFraction,_that.positionSeconds,_that.replayCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String shortId,  String? shortTitle,  double positionFraction,  int positionSeconds,  int replayCount)  $default,) {final _that = this;
switch (_that) {
case _ShortStoppedEvent():
return $default(_that.shortId,_that.shortTitle,_that.positionFraction,_that.positionSeconds,_that.replayCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String shortId,  String? shortTitle,  double positionFraction,  int positionSeconds,  int replayCount)?  $default,) {final _that = this;
switch (_that) {
case _ShortStoppedEvent() when $default != null:
return $default(_that.shortId,_that.shortTitle,_that.positionFraction,_that.positionSeconds,_that.replayCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortStoppedEvent implements ShortStoppedEvent {
  const _ShortStoppedEvent({required this.shortId, required this.shortTitle, required this.positionFraction, required this.positionSeconds, required this.replayCount});
  factory _ShortStoppedEvent.fromJson(Map<String, dynamic> json) => _$ShortStoppedEventFromJson(json);

@override final  String shortId;
@override final  String? shortTitle;
@override final  double positionFraction;
@override final  int positionSeconds;
@override final  int replayCount;

/// Create a copy of ShortStoppedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortStoppedEventCopyWith<_ShortStoppedEvent> get copyWith => __$ShortStoppedEventCopyWithImpl<_ShortStoppedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortStoppedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortStoppedEvent&&(identical(other.shortId, shortId) || other.shortId == shortId)&&(identical(other.shortTitle, shortTitle) || other.shortTitle == shortTitle)&&(identical(other.positionFraction, positionFraction) || other.positionFraction == positionFraction)&&(identical(other.positionSeconds, positionSeconds) || other.positionSeconds == positionSeconds)&&(identical(other.replayCount, replayCount) || other.replayCount == replayCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,shortId,shortTitle,positionFraction,positionSeconds,replayCount);
}

@override
String toString() {
    return 'ShortStoppedEvent(shortId: $shortId, shortTitle: $shortTitle, positionFraction: $positionFraction, positionSeconds: $positionSeconds, replayCount: $replayCount)';
}


}

/// @nodoc
abstract mixin class _$ShortStoppedEventCopyWith<$Res> implements $ShortStoppedEventCopyWith<$Res> {
  factory _$ShortStoppedEventCopyWith(_ShortStoppedEvent value, $Res Function(_ShortStoppedEvent) _then) = __$ShortStoppedEventCopyWithImpl;
@override @useResult
$Res call({
 String shortId, String? shortTitle, double positionFraction, int positionSeconds, int replayCount
});




}
/// @nodoc
class __$ShortStoppedEventCopyWithImpl<$Res>
    implements _$ShortStoppedEventCopyWith<$Res> {
  __$ShortStoppedEventCopyWithImpl(this._self, this._then);

  final _ShortStoppedEvent _self;
  final $Res Function(_ShortStoppedEvent) _then;

/// Create a copy of ShortStoppedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shortId = null,Object? shortTitle = freezed,Object? positionFraction = null,Object? positionSeconds = null,Object? replayCount = null,}) {
  return _then(_ShortStoppedEvent(
shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String,shortTitle: freezed == shortTitle ? _self.shortTitle : shortTitle // ignore: cast_nullable_to_non_nullable
as String?,positionFraction: null == positionFraction ? _self.positionFraction : positionFraction // ignore: cast_nullable_to_non_nullable
as double,positionSeconds: null == positionSeconds ? _self.positionSeconds : positionSeconds // ignore: cast_nullable_to_non_nullable
as int,replayCount: null == replayCount ? _self.replayCount : replayCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
