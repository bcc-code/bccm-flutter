// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_closed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameClosedEvent {

 String get gameId; int get timeSpent; int? get position;
/// Create a copy of GameClosedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameClosedEventCopyWith<GameClosedEvent> get copyWith => _$GameClosedEventCopyWithImpl<GameClosedEvent>(this as GameClosedEvent, _$identity);

  /// Serializes this GameClosedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GameClosedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameClosedEvent&&(identical(other.gameId, _this.gameId) || other.gameId == _this.gameId)&&(identical(other.timeSpent, _this.timeSpent) || other.timeSpent == _this.timeSpent)&&(identical(other.position, _this.position) || other.position == _this.position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GameClosedEvent;
  return Object.hash(runtimeType,_this.gameId,_this.timeSpent,_this.position);
}

@override
String toString() {
  final _this = this as GameClosedEvent;
  return 'GameClosedEvent(gameId: ${_this.gameId}, timeSpent: ${_this.timeSpent}, position: ${_this.position})';
}


}

/// @nodoc
abstract mixin class $GameClosedEventCopyWith<$Res>  {
  factory $GameClosedEventCopyWith(GameClosedEvent value, $Res Function(GameClosedEvent) _then) = _$GameClosedEventCopyWithImpl;
@useResult
$Res call({
 String gameId, int timeSpent, int? position
});




}
/// @nodoc
class _$GameClosedEventCopyWithImpl<$Res>
    implements $GameClosedEventCopyWith<$Res> {
  _$GameClosedEventCopyWithImpl(this._self, this._then);

  final GameClosedEvent _self;
  final $Res Function(GameClosedEvent) _then;

/// Create a copy of GameClosedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameId = null,Object? timeSpent = null,Object? position = freezed,}) {
  return _then(GameClosedEvent(
gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,timeSpent: null == timeSpent ? _self.timeSpent : timeSpent // ignore: cast_nullable_to_non_nullable
as int,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameClosedEvent].
extension GameClosedEventPatterns on GameClosedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameClosedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameClosedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameClosedEvent value)  $default,){
final _that = this;
switch (_that) {
case _GameClosedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameClosedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _GameClosedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gameId,  int timeSpent,  int? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameClosedEvent() when $default != null:
return $default(_that.gameId,_that.timeSpent,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gameId,  int timeSpent,  int? position)  $default,) {final _that = this;
switch (_that) {
case _GameClosedEvent():
return $default(_that.gameId,_that.timeSpent,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gameId,  int timeSpent,  int? position)?  $default,) {final _that = this;
switch (_that) {
case _GameClosedEvent() when $default != null:
return $default(_that.gameId,_that.timeSpent,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameClosedEvent implements GameClosedEvent {
  const _GameClosedEvent({required this.gameId, required this.timeSpent, this.position});
  factory _GameClosedEvent.fromJson(Map<String, dynamic> json) => _$GameClosedEventFromJson(json);

@override final  String gameId;
@override final  int timeSpent;
@override final  int? position;

/// Create a copy of GameClosedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameClosedEventCopyWith<_GameClosedEvent> get copyWith => __$GameClosedEventCopyWithImpl<_GameClosedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameClosedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameClosedEvent&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.timeSpent, timeSpent) || other.timeSpent == timeSpent)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,gameId,timeSpent,position);
}

@override
String toString() {
    return 'GameClosedEvent(gameId: $gameId, timeSpent: $timeSpent, position: $position)';
}


}

/// @nodoc
abstract mixin class _$GameClosedEventCopyWith<$Res> implements $GameClosedEventCopyWith<$Res> {
  factory _$GameClosedEventCopyWith(_GameClosedEvent value, $Res Function(_GameClosedEvent) _then) = __$GameClosedEventCopyWithImpl;
@override @useResult
$Res call({
 String gameId, int timeSpent, int? position
});




}
/// @nodoc
class __$GameClosedEventCopyWithImpl<$Res>
    implements _$GameClosedEventCopyWith<$Res> {
  __$GameClosedEventCopyWithImpl(this._self, this._then);

  final _GameClosedEvent _self;
  final $Res Function(_GameClosedEvent) _then;

/// Create a copy of GameClosedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameId = null,Object? timeSpent = null,Object? position = freezed,}) {
  return _then(_GameClosedEvent(
gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,timeSpent: null == timeSpent ? _self.timeSpent : timeSpent // ignore: cast_nullable_to_non_nullable
as int,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
