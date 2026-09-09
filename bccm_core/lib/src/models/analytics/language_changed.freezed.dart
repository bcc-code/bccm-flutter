// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_changed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LanguageChangedEvent {

 String? get languageFrom; String get languageTo; String get languageChangeType;
/// Create a copy of LanguageChangedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageChangedEventCopyWith<LanguageChangedEvent> get copyWith => _$LanguageChangedEventCopyWithImpl<LanguageChangedEvent>(this as LanguageChangedEvent, _$identity);

  /// Serializes this LanguageChangedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LanguageChangedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageChangedEvent&&(identical(other.languageFrom, _this.languageFrom) || other.languageFrom == _this.languageFrom)&&(identical(other.languageTo, _this.languageTo) || other.languageTo == _this.languageTo)&&(identical(other.languageChangeType, _this.languageChangeType) || other.languageChangeType == _this.languageChangeType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LanguageChangedEvent;
  return Object.hash(runtimeType,_this.languageFrom,_this.languageTo,_this.languageChangeType);
}

@override
String toString() {
  final _this = this as LanguageChangedEvent;
  return 'LanguageChangedEvent(languageFrom: ${_this.languageFrom}, languageTo: ${_this.languageTo}, languageChangeType: ${_this.languageChangeType})';
}


}

/// @nodoc
abstract mixin class $LanguageChangedEventCopyWith<$Res>  {
  factory $LanguageChangedEventCopyWith(LanguageChangedEvent value, $Res Function(LanguageChangedEvent) _then) = _$LanguageChangedEventCopyWithImpl;
@useResult
$Res call({
 String? languageFrom, String languageTo, String languageChangeType
});




}
/// @nodoc
class _$LanguageChangedEventCopyWithImpl<$Res>
    implements $LanguageChangedEventCopyWith<$Res> {
  _$LanguageChangedEventCopyWithImpl(this._self, this._then);

  final LanguageChangedEvent _self;
  final $Res Function(LanguageChangedEvent) _then;

/// Create a copy of LanguageChangedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageFrom = freezed,Object? languageTo = null,Object? languageChangeType = null,}) {
  return _then(LanguageChangedEvent(
languageFrom: freezed == languageFrom ? _self.languageFrom : languageFrom // ignore: cast_nullable_to_non_nullable
as String?,languageTo: null == languageTo ? _self.languageTo : languageTo // ignore: cast_nullable_to_non_nullable
as String,languageChangeType: null == languageChangeType ? _self.languageChangeType : languageChangeType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageChangedEvent].
extension LanguageChangedEventPatterns on LanguageChangedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageChangedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageChangedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageChangedEvent value)  $default,){
final _that = this;
switch (_that) {
case _LanguageChangedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageChangedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageChangedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? languageFrom,  String languageTo,  String languageChangeType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageChangedEvent() when $default != null:
return $default(_that.languageFrom,_that.languageTo,_that.languageChangeType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? languageFrom,  String languageTo,  String languageChangeType)  $default,) {final _that = this;
switch (_that) {
case _LanguageChangedEvent():
return $default(_that.languageFrom,_that.languageTo,_that.languageChangeType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? languageFrom,  String languageTo,  String languageChangeType)?  $default,) {final _that = this;
switch (_that) {
case _LanguageChangedEvent() when $default != null:
return $default(_that.languageFrom,_that.languageTo,_that.languageChangeType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageChangedEvent implements LanguageChangedEvent {
  const _LanguageChangedEvent({required this.languageFrom, required this.languageTo, required this.languageChangeType});
  factory _LanguageChangedEvent.fromJson(Map<String, dynamic> json) => _$LanguageChangedEventFromJson(json);

@override final  String? languageFrom;
@override final  String languageTo;
@override final  String languageChangeType;

/// Create a copy of LanguageChangedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageChangedEventCopyWith<_LanguageChangedEvent> get copyWith => __$LanguageChangedEventCopyWithImpl<_LanguageChangedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageChangedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageChangedEvent&&(identical(other.languageFrom, languageFrom) || other.languageFrom == languageFrom)&&(identical(other.languageTo, languageTo) || other.languageTo == languageTo)&&(identical(other.languageChangeType, languageChangeType) || other.languageChangeType == languageChangeType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,languageFrom,languageTo,languageChangeType);
}

@override
String toString() {
    return 'LanguageChangedEvent(languageFrom: $languageFrom, languageTo: $languageTo, languageChangeType: $languageChangeType)';
}


}

/// @nodoc
abstract mixin class _$LanguageChangedEventCopyWith<$Res> implements $LanguageChangedEventCopyWith<$Res> {
  factory _$LanguageChangedEventCopyWith(_LanguageChangedEvent value, $Res Function(_LanguageChangedEvent) _then) = __$LanguageChangedEventCopyWithImpl;
@override @useResult
$Res call({
 String? languageFrom, String languageTo, String languageChangeType
});




}
/// @nodoc
class __$LanguageChangedEventCopyWithImpl<$Res>
    implements _$LanguageChangedEventCopyWith<$Res> {
  __$LanguageChangedEventCopyWithImpl(this._self, this._then);

  final _LanguageChangedEvent _self;
  final $Res Function(_LanguageChangedEvent) _then;

/// Create a copy of LanguageChangedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageFrom = freezed,Object? languageTo = null,Object? languageChangeType = null,}) {
  return _then(_LanguageChangedEvent(
languageFrom: freezed == languageFrom ? _self.languageFrom : languageFrom // ignore: cast_nullable_to_non_nullable
as String?,languageTo: null == languageTo ? _self.languageTo : languageTo // ignore: cast_nullable_to_non_nullable
as String,languageChangeType: null == languageChangeType ? _self.languageChangeType : languageChangeType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
