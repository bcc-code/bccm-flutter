// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_only_clicked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AudioOnlyClickedEvent {

 bool get audioOnly;
/// Create a copy of AudioOnlyClickedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioOnlyClickedEventCopyWith<AudioOnlyClickedEvent> get copyWith => _$AudioOnlyClickedEventCopyWithImpl<AudioOnlyClickedEvent>(this as AudioOnlyClickedEvent, _$identity);

  /// Serializes this AudioOnlyClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AudioOnlyClickedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioOnlyClickedEvent&&(identical(other.audioOnly, _this.audioOnly) || other.audioOnly == _this.audioOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AudioOnlyClickedEvent;
  return Object.hash(runtimeType,_this.audioOnly);
}

@override
String toString() {
  final _this = this as AudioOnlyClickedEvent;
  return 'AudioOnlyClickedEvent(audioOnly: ${_this.audioOnly})';
}


}

/// @nodoc
abstract mixin class $AudioOnlyClickedEventCopyWith<$Res>  {
  factory $AudioOnlyClickedEventCopyWith(AudioOnlyClickedEvent value, $Res Function(AudioOnlyClickedEvent) _then) = _$AudioOnlyClickedEventCopyWithImpl;
@useResult
$Res call({
 bool audioOnly
});




}
/// @nodoc
class _$AudioOnlyClickedEventCopyWithImpl<$Res>
    implements $AudioOnlyClickedEventCopyWith<$Res> {
  _$AudioOnlyClickedEventCopyWithImpl(this._self, this._then);

  final AudioOnlyClickedEvent _self;
  final $Res Function(AudioOnlyClickedEvent) _then;

/// Create a copy of AudioOnlyClickedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? audioOnly = null,}) {
  return _then(AudioOnlyClickedEvent(
audioOnly: null == audioOnly ? _self.audioOnly : audioOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioOnlyClickedEvent].
extension AudioOnlyClickedEventPatterns on AudioOnlyClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioOnlyClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioOnlyClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioOnlyClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _AudioOnlyClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioOnlyClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _AudioOnlyClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool audioOnly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioOnlyClickedEvent() when $default != null:
return $default(_that.audioOnly);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool audioOnly)  $default,) {final _that = this;
switch (_that) {
case _AudioOnlyClickedEvent():
return $default(_that.audioOnly);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool audioOnly)?  $default,) {final _that = this;
switch (_that) {
case _AudioOnlyClickedEvent() when $default != null:
return $default(_that.audioOnly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioOnlyClickedEvent implements AudioOnlyClickedEvent {
  const _AudioOnlyClickedEvent({required this.audioOnly});
  factory _AudioOnlyClickedEvent.fromJson(Map<String, dynamic> json) => _$AudioOnlyClickedEventFromJson(json);

@override final  bool audioOnly;

/// Create a copy of AudioOnlyClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioOnlyClickedEventCopyWith<_AudioOnlyClickedEvent> get copyWith => __$AudioOnlyClickedEventCopyWithImpl<_AudioOnlyClickedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioOnlyClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioOnlyClickedEvent&&(identical(other.audioOnly, audioOnly) || other.audioOnly == audioOnly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,audioOnly);
}

@override
String toString() {
    return 'AudioOnlyClickedEvent(audioOnly: $audioOnly)';
}


}

/// @nodoc
abstract mixin class _$AudioOnlyClickedEventCopyWith<$Res> implements $AudioOnlyClickedEventCopyWith<$Res> {
  factory _$AudioOnlyClickedEventCopyWith(_AudioOnlyClickedEvent value, $Res Function(_AudioOnlyClickedEvent) _then) = __$AudioOnlyClickedEventCopyWithImpl;
@override @useResult
$Res call({
 bool audioOnly
});




}
/// @nodoc
class __$AudioOnlyClickedEventCopyWithImpl<$Res>
    implements _$AudioOnlyClickedEventCopyWith<$Res> {
  __$AudioOnlyClickedEventCopyWithImpl(this._self, this._then);

  final _AudioOnlyClickedEvent _self;
  final $Res Function(_AudioOnlyClickedEvent) _then;

/// Create a copy of AudioOnlyClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? audioOnly = null,}) {
  return _then(_AudioOnlyClickedEvent(
audioOnly: null == audioOnly ? _self.audioOnly : audioOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
