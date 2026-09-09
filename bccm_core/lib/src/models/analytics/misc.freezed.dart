// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InteractionEvent {

 String? get interaction; String? get pageCode; String? get contextElementType; String? get contextElementId; Map<String, dynamic>? get meta;
/// Create a copy of InteractionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InteractionEventCopyWith<InteractionEvent> get copyWith => _$InteractionEventCopyWithImpl<InteractionEvent>(this as InteractionEvent, _$identity);

  /// Serializes this InteractionEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InteractionEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InteractionEvent&&(identical(other.interaction, _this.interaction) || other.interaction == _this.interaction)&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&(identical(other.contextElementType, _this.contextElementType) || other.contextElementType == _this.contextElementType)&&(identical(other.contextElementId, _this.contextElementId) || other.contextElementId == _this.contextElementId)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InteractionEvent;
  return Object.hash(runtimeType,_this.interaction,_this.pageCode,_this.contextElementType,_this.contextElementId,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as InteractionEvent;
  return 'InteractionEvent(interaction: ${_this.interaction}, pageCode: ${_this.pageCode}, contextElementType: ${_this.contextElementType}, contextElementId: ${_this.contextElementId}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $InteractionEventCopyWith<$Res>  {
  factory $InteractionEventCopyWith(InteractionEvent value, $Res Function(InteractionEvent) _then) = _$InteractionEventCopyWithImpl;
@useResult
$Res call({
 String? interaction, String? pageCode, String? contextElementType, String? contextElementId, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$InteractionEventCopyWithImpl<$Res>
    implements $InteractionEventCopyWith<$Res> {
  _$InteractionEventCopyWithImpl(this._self, this._then);

  final InteractionEvent _self;
  final $Res Function(InteractionEvent) _then;

/// Create a copy of InteractionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interaction = freezed,Object? pageCode = freezed,Object? contextElementType = freezed,Object? contextElementId = freezed,Object? meta = freezed,}) {
  return _then(InteractionEvent(
interaction: freezed == interaction ? _self.interaction : interaction // ignore: cast_nullable_to_non_nullable
as String?,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,contextElementType: freezed == contextElementType ? _self.contextElementType : contextElementType // ignore: cast_nullable_to_non_nullable
as String?,contextElementId: freezed == contextElementId ? _self.contextElementId : contextElementId // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [InteractionEvent].
extension InteractionEventPatterns on InteractionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InteractionEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InteractionEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InteractionEvent value)  $default,){
final _that = this;
switch (_that) {
case _InteractionEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InteractionEvent value)?  $default,){
final _that = this;
switch (_that) {
case _InteractionEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? interaction,  String? pageCode,  String? contextElementType,  String? contextElementId,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InteractionEvent() when $default != null:
return $default(_that.interaction,_that.pageCode,_that.contextElementType,_that.contextElementId,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? interaction,  String? pageCode,  String? contextElementType,  String? contextElementId,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _InteractionEvent():
return $default(_that.interaction,_that.pageCode,_that.contextElementType,_that.contextElementId,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? interaction,  String? pageCode,  String? contextElementType,  String? contextElementId,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _InteractionEvent() when $default != null:
return $default(_that.interaction,_that.pageCode,_that.contextElementType,_that.contextElementId,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InteractionEvent implements InteractionEvent {
  const _InteractionEvent({this.interaction, this.pageCode, this.contextElementType, this.contextElementId,  Map<String, dynamic>? meta}): _meta = meta;
  factory _InteractionEvent.fromJson(Map<String, dynamic> json) => _$InteractionEventFromJson(json);

@override final  String? interaction;
@override final  String? pageCode;
@override final  String? contextElementType;
@override final  String? contextElementId;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of InteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InteractionEventCopyWith<_InteractionEvent> get copyWith => __$InteractionEventCopyWithImpl<_InteractionEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InteractionEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InteractionEvent&&(identical(other.interaction, interaction) || other.interaction == interaction)&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&(identical(other.contextElementType, contextElementType) || other.contextElementType == contextElementType)&&(identical(other.contextElementId, contextElementId) || other.contextElementId == contextElementId)&&const DeepCollectionEquality().equals(other.meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,interaction,pageCode,contextElementType,contextElementId,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'InteractionEvent(interaction: $interaction, pageCode: $pageCode, contextElementType: $contextElementType, contextElementId: $contextElementId, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$InteractionEventCopyWith<$Res> implements $InteractionEventCopyWith<$Res> {
  factory _$InteractionEventCopyWith(_InteractionEvent value, $Res Function(_InteractionEvent) _then) = __$InteractionEventCopyWithImpl;
@override @useResult
$Res call({
 String? interaction, String? pageCode, String? contextElementType, String? contextElementId, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$InteractionEventCopyWithImpl<$Res>
    implements _$InteractionEventCopyWith<$Res> {
  __$InteractionEventCopyWithImpl(this._self, this._then);

  final _InteractionEvent _self;
  final $Res Function(_InteractionEvent) _then;

/// Create a copy of InteractionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interaction = freezed,Object? pageCode = freezed,Object? contextElementType = freezed,Object? contextElementId = freezed,Object? meta = freezed,}) {
  return _then(_InteractionEvent(
interaction: freezed == interaction ? _self.interaction : interaction // ignore: cast_nullable_to_non_nullable
as String?,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,contextElementType: freezed == contextElementType ? _self.contextElementType : contextElementType // ignore: cast_nullable_to_non_nullable
as String?,contextElementId: freezed == contextElementId ? _self.contextElementId : contextElementId // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$ImpressionEvent {

 String? get name; String? get pageCode; String? get contextElementType; String? get contextElementId; Map<String, dynamic>? get meta;
/// Create a copy of ImpressionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImpressionEventCopyWith<ImpressionEvent> get copyWith => _$ImpressionEventCopyWithImpl<ImpressionEvent>(this as ImpressionEvent, _$identity);

  /// Serializes this ImpressionEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ImpressionEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImpressionEvent&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&(identical(other.contextElementType, _this.contextElementType) || other.contextElementType == _this.contextElementType)&&(identical(other.contextElementId, _this.contextElementId) || other.contextElementId == _this.contextElementId)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ImpressionEvent;
  return Object.hash(runtimeType,_this.name,_this.pageCode,_this.contextElementType,_this.contextElementId,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as ImpressionEvent;
  return 'ImpressionEvent(name: ${_this.name}, pageCode: ${_this.pageCode}, contextElementType: ${_this.contextElementType}, contextElementId: ${_this.contextElementId}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $ImpressionEventCopyWith<$Res>  {
  factory $ImpressionEventCopyWith(ImpressionEvent value, $Res Function(ImpressionEvent) _then) = _$ImpressionEventCopyWithImpl;
@useResult
$Res call({
 String? name, String? pageCode, String? contextElementType, String? contextElementId, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$ImpressionEventCopyWithImpl<$Res>
    implements $ImpressionEventCopyWith<$Res> {
  _$ImpressionEventCopyWithImpl(this._self, this._then);

  final ImpressionEvent _self;
  final $Res Function(ImpressionEvent) _then;

/// Create a copy of ImpressionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? pageCode = freezed,Object? contextElementType = freezed,Object? contextElementId = freezed,Object? meta = freezed,}) {
  return _then(ImpressionEvent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,contextElementType: freezed == contextElementType ? _self.contextElementType : contextElementType // ignore: cast_nullable_to_non_nullable
as String?,contextElementId: freezed == contextElementId ? _self.contextElementId : contextElementId // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImpressionEvent].
extension ImpressionEventPatterns on ImpressionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImpressionEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImpressionEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImpressionEvent value)  $default,){
final _that = this;
switch (_that) {
case _ImpressionEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImpressionEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ImpressionEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? pageCode,  String? contextElementType,  String? contextElementId,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImpressionEvent() when $default != null:
return $default(_that.name,_that.pageCode,_that.contextElementType,_that.contextElementId,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? pageCode,  String? contextElementType,  String? contextElementId,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _ImpressionEvent():
return $default(_that.name,_that.pageCode,_that.contextElementType,_that.contextElementId,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? pageCode,  String? contextElementType,  String? contextElementId,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _ImpressionEvent() when $default != null:
return $default(_that.name,_that.pageCode,_that.contextElementType,_that.contextElementId,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImpressionEvent implements ImpressionEvent {
  const _ImpressionEvent({this.name, this.pageCode, this.contextElementType, this.contextElementId,  Map<String, dynamic>? meta}): _meta = meta;
  factory _ImpressionEvent.fromJson(Map<String, dynamic> json) => _$ImpressionEventFromJson(json);

@override final  String? name;
@override final  String? pageCode;
@override final  String? contextElementType;
@override final  String? contextElementId;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ImpressionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImpressionEventCopyWith<_ImpressionEvent> get copyWith => __$ImpressionEventCopyWithImpl<_ImpressionEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImpressionEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImpressionEvent&&(identical(other.name, name) || other.name == name)&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&(identical(other.contextElementType, contextElementType) || other.contextElementType == contextElementType)&&(identical(other.contextElementId, contextElementId) || other.contextElementId == contextElementId)&&const DeepCollectionEquality().equals(other.meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,pageCode,contextElementType,contextElementId,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'ImpressionEvent(name: $name, pageCode: $pageCode, contextElementType: $contextElementType, contextElementId: $contextElementId, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ImpressionEventCopyWith<$Res> implements $ImpressionEventCopyWith<$Res> {
  factory _$ImpressionEventCopyWith(_ImpressionEvent value, $Res Function(_ImpressionEvent) _then) = __$ImpressionEventCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? pageCode, String? contextElementType, String? contextElementId, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$ImpressionEventCopyWithImpl<$Res>
    implements _$ImpressionEventCopyWith<$Res> {
  __$ImpressionEventCopyWithImpl(this._self, this._then);

  final _ImpressionEvent _self;
  final $Res Function(_ImpressionEvent) _then;

/// Create a copy of ImpressionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? pageCode = freezed,Object? contextElementType = freezed,Object? contextElementId = freezed,Object? meta = freezed,}) {
  return _then(_ImpressionEvent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,contextElementType: freezed == contextElementType ? _self.contextElementType : contextElementType // ignore: cast_nullable_to_non_nullable
as String?,contextElementId: freezed == contextElementId ? _self.contextElementId : contextElementId // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$GuideShownEvent {

 String? get guide; Map<String, dynamic>? get meta;
/// Create a copy of GuideShownEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuideShownEventCopyWith<GuideShownEvent> get copyWith => _$GuideShownEventCopyWithImpl<GuideShownEvent>(this as GuideShownEvent, _$identity);

  /// Serializes this GuideShownEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GuideShownEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuideShownEvent&&(identical(other.guide, _this.guide) || other.guide == _this.guide)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GuideShownEvent;
  return Object.hash(runtimeType,_this.guide,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as GuideShownEvent;
  return 'GuideShownEvent(guide: ${_this.guide}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $GuideShownEventCopyWith<$Res>  {
  factory $GuideShownEventCopyWith(GuideShownEvent value, $Res Function(GuideShownEvent) _then) = _$GuideShownEventCopyWithImpl;
@useResult
$Res call({
 String? guide, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$GuideShownEventCopyWithImpl<$Res>
    implements $GuideShownEventCopyWith<$Res> {
  _$GuideShownEventCopyWithImpl(this._self, this._then);

  final GuideShownEvent _self;
  final $Res Function(GuideShownEvent) _then;

/// Create a copy of GuideShownEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guide = freezed,Object? meta = freezed,}) {
  return _then(GuideShownEvent(
guide: freezed == guide ? _self.guide : guide // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GuideShownEvent].
extension GuideShownEventPatterns on GuideShownEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuideShownEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuideShownEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuideShownEvent value)  $default,){
final _that = this;
switch (_that) {
case _GuideShownEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuideShownEvent value)?  $default,){
final _that = this;
switch (_that) {
case _GuideShownEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? guide,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuideShownEvent() when $default != null:
return $default(_that.guide,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? guide,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _GuideShownEvent():
return $default(_that.guide,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? guide,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _GuideShownEvent() when $default != null:
return $default(_that.guide,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GuideShownEvent implements GuideShownEvent {
  const _GuideShownEvent({this.guide,  Map<String, dynamic>? meta}): _meta = meta;
  factory _GuideShownEvent.fromJson(Map<String, dynamic> json) => _$GuideShownEventFromJson(json);

@override final  String? guide;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of GuideShownEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuideShownEventCopyWith<_GuideShownEvent> get copyWith => __$GuideShownEventCopyWithImpl<_GuideShownEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GuideShownEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuideShownEvent&&(identical(other.guide, guide) || other.guide == guide)&&const DeepCollectionEquality().equals(other.meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,guide,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'GuideShownEvent(guide: $guide, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$GuideShownEventCopyWith<$Res> implements $GuideShownEventCopyWith<$Res> {
  factory _$GuideShownEventCopyWith(_GuideShownEvent value, $Res Function(_GuideShownEvent) _then) = __$GuideShownEventCopyWithImpl;
@override @useResult
$Res call({
 String? guide, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$GuideShownEventCopyWithImpl<$Res>
    implements _$GuideShownEventCopyWith<$Res> {
  __$GuideShownEventCopyWithImpl(this._self, this._then);

  final _GuideShownEvent _self;
  final $Res Function(_GuideShownEvent) _then;

/// Create a copy of GuideShownEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? guide = freezed,Object? meta = freezed,}) {
  return _then(_GuideShownEvent(
guide: freezed == guide ? _self.guide : guide // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$TimeMeasurementEvent {

 String? get key; double? get seconds; Map<String, dynamic>? get meta;
/// Create a copy of TimeMeasurementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeMeasurementEventCopyWith<TimeMeasurementEvent> get copyWith => _$TimeMeasurementEventCopyWithImpl<TimeMeasurementEvent>(this as TimeMeasurementEvent, _$identity);

  /// Serializes this TimeMeasurementEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TimeMeasurementEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeMeasurementEvent&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.seconds, _this.seconds) || other.seconds == _this.seconds)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TimeMeasurementEvent;
  return Object.hash(runtimeType,_this.key,_this.seconds,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as TimeMeasurementEvent;
  return 'TimeMeasurementEvent(key: ${_this.key}, seconds: ${_this.seconds}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $TimeMeasurementEventCopyWith<$Res>  {
  factory $TimeMeasurementEventCopyWith(TimeMeasurementEvent value, $Res Function(TimeMeasurementEvent) _then) = _$TimeMeasurementEventCopyWithImpl;
@useResult
$Res call({
 String? key, double? seconds, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$TimeMeasurementEventCopyWithImpl<$Res>
    implements $TimeMeasurementEventCopyWith<$Res> {
  _$TimeMeasurementEventCopyWithImpl(this._self, this._then);

  final TimeMeasurementEvent _self;
  final $Res Function(TimeMeasurementEvent) _then;

/// Create a copy of TimeMeasurementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? seconds = freezed,Object? meta = freezed,}) {
  return _then(TimeMeasurementEvent(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,seconds: freezed == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeMeasurementEvent].
extension TimeMeasurementEventPatterns on TimeMeasurementEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeMeasurementEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeMeasurementEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeMeasurementEvent value)  $default,){
final _that = this;
switch (_that) {
case _TimeMeasurementEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeMeasurementEvent value)?  $default,){
final _that = this;
switch (_that) {
case _TimeMeasurementEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? key,  double? seconds,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeMeasurementEvent() when $default != null:
return $default(_that.key,_that.seconds,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? key,  double? seconds,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _TimeMeasurementEvent():
return $default(_that.key,_that.seconds,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? key,  double? seconds,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _TimeMeasurementEvent() when $default != null:
return $default(_that.key,_that.seconds,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeMeasurementEvent implements TimeMeasurementEvent {
  const _TimeMeasurementEvent({this.key, this.seconds,  Map<String, dynamic>? meta}): _meta = meta;
  factory _TimeMeasurementEvent.fromJson(Map<String, dynamic> json) => _$TimeMeasurementEventFromJson(json);

@override final  String? key;
@override final  double? seconds;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TimeMeasurementEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeMeasurementEventCopyWith<_TimeMeasurementEvent> get copyWith => __$TimeMeasurementEventCopyWithImpl<_TimeMeasurementEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeMeasurementEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeMeasurementEvent&&(identical(other.key, key) || other.key == key)&&(identical(other.seconds, seconds) || other.seconds == seconds)&&const DeepCollectionEquality().equals(other.meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,key,seconds,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'TimeMeasurementEvent(key: $key, seconds: $seconds, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$TimeMeasurementEventCopyWith<$Res> implements $TimeMeasurementEventCopyWith<$Res> {
  factory _$TimeMeasurementEventCopyWith(_TimeMeasurementEvent value, $Res Function(_TimeMeasurementEvent) _then) = __$TimeMeasurementEventCopyWithImpl;
@override @useResult
$Res call({
 String? key, double? seconds, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$TimeMeasurementEventCopyWithImpl<$Res>
    implements _$TimeMeasurementEventCopyWith<$Res> {
  __$TimeMeasurementEventCopyWithImpl(this._self, this._then);

  final _TimeMeasurementEvent _self;
  final $Res Function(_TimeMeasurementEvent) _then;

/// Create a copy of TimeMeasurementEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? seconds = freezed,Object? meta = freezed,}) {
  return _then(_TimeMeasurementEvent(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,seconds: freezed == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$LogEvent {

 String? get name; String? get message; String? get pageCode; Map<String, dynamic>? get meta;
/// Create a copy of LogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogEventCopyWith<LogEvent> get copyWith => _$LogEventCopyWithImpl<LogEvent>(this as LogEvent, _$identity);

  /// Serializes this LogEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LogEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogEvent&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LogEvent;
  return Object.hash(runtimeType,_this.name,_this.message,_this.pageCode,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as LogEvent;
  return 'LogEvent(name: ${_this.name}, message: ${_this.message}, pageCode: ${_this.pageCode}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $LogEventCopyWith<$Res>  {
  factory $LogEventCopyWith(LogEvent value, $Res Function(LogEvent) _then) = _$LogEventCopyWithImpl;
@useResult
$Res call({
 String? name, String? message, String? pageCode, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$LogEventCopyWithImpl<$Res>
    implements $LogEventCopyWith<$Res> {
  _$LogEventCopyWithImpl(this._self, this._then);

  final LogEvent _self;
  final $Res Function(LogEvent) _then;

/// Create a copy of LogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? message = freezed,Object? pageCode = freezed,Object? meta = freezed,}) {
  return _then(LogEvent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LogEvent].
extension LogEventPatterns on LogEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogEvent value)  $default,){
final _that = this;
switch (_that) {
case _LogEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogEvent value)?  $default,){
final _that = this;
switch (_that) {
case _LogEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? message,  String? pageCode,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogEvent() when $default != null:
return $default(_that.name,_that.message,_that.pageCode,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? message,  String? pageCode,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _LogEvent():
return $default(_that.name,_that.message,_that.pageCode,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? message,  String? pageCode,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _LogEvent() when $default != null:
return $default(_that.name,_that.message,_that.pageCode,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LogEvent implements LogEvent {
  const _LogEvent({this.name, this.message, this.pageCode,  Map<String, dynamic>? meta}): _meta = meta;
  factory _LogEvent.fromJson(Map<String, dynamic> json) => _$LogEventFromJson(json);

@override final  String? name;
@override final  String? message;
@override final  String? pageCode;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of LogEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogEventCopyWith<_LogEvent> get copyWith => __$LogEventCopyWithImpl<_LogEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogEvent&&(identical(other.name, name) || other.name == name)&&(identical(other.message, message) || other.message == message)&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&const DeepCollectionEquality().equals(other.meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,message,pageCode,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'LogEvent(name: $name, message: $message, pageCode: $pageCode, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$LogEventCopyWith<$Res> implements $LogEventCopyWith<$Res> {
  factory _$LogEventCopyWith(_LogEvent value, $Res Function(_LogEvent) _then) = __$LogEventCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? message, String? pageCode, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$LogEventCopyWithImpl<$Res>
    implements _$LogEventCopyWith<$Res> {
  __$LogEventCopyWithImpl(this._self, this._then);

  final _LogEvent _self;
  final $Res Function(_LogEvent) _then;

/// Create a copy of LogEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? message = freezed,Object? pageCode = freezed,Object? meta = freezed,}) {
  return _then(_LogEvent(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$VideoPlayedEvent {

 String? get videoId; String? get referenceId; Map<String, dynamic>? get data;
/// Create a copy of VideoPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoPlayedEventCopyWith<VideoPlayedEvent> get copyWith => _$VideoPlayedEventCopyWithImpl<VideoPlayedEvent>(this as VideoPlayedEvent, _$identity);

  /// Serializes this VideoPlayedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VideoPlayedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoPlayedEvent&&(identical(other.videoId, _this.videoId) || other.videoId == _this.videoId)&&(identical(other.referenceId, _this.referenceId) || other.referenceId == _this.referenceId)&&const DeepCollectionEquality().equals(other.data, _this.data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VideoPlayedEvent;
  return Object.hash(runtimeType,_this.videoId,_this.referenceId,const DeepCollectionEquality().hash(_this.data));
}

@override
String toString() {
  final _this = this as VideoPlayedEvent;
  return 'VideoPlayedEvent(videoId: ${_this.videoId}, referenceId: ${_this.referenceId}, data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $VideoPlayedEventCopyWith<$Res>  {
  factory $VideoPlayedEventCopyWith(VideoPlayedEvent value, $Res Function(VideoPlayedEvent) _then) = _$VideoPlayedEventCopyWithImpl;
@useResult
$Res call({
 String? videoId, String? referenceId, Map<String, dynamic>? data
});




}
/// @nodoc
class _$VideoPlayedEventCopyWithImpl<$Res>
    implements $VideoPlayedEventCopyWith<$Res> {
  _$VideoPlayedEventCopyWithImpl(this._self, this._then);

  final VideoPlayedEvent _self;
  final $Res Function(VideoPlayedEvent) _then;

/// Create a copy of VideoPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoId = freezed,Object? referenceId = freezed,Object? data = freezed,}) {
  return _then(VideoPlayedEvent(
videoId: freezed == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoPlayedEvent].
extension VideoPlayedEventPatterns on VideoPlayedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoPlayedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoPlayedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoPlayedEvent value)  $default,){
final _that = this;
switch (_that) {
case _VideoPlayedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoPlayedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _VideoPlayedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? videoId,  String? referenceId,  Map<String, dynamic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoPlayedEvent() when $default != null:
return $default(_that.videoId,_that.referenceId,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? videoId,  String? referenceId,  Map<String, dynamic>? data)  $default,) {final _that = this;
switch (_that) {
case _VideoPlayedEvent():
return $default(_that.videoId,_that.referenceId,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? videoId,  String? referenceId,  Map<String, dynamic>? data)?  $default,) {final _that = this;
switch (_that) {
case _VideoPlayedEvent() when $default != null:
return $default(_that.videoId,_that.referenceId,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoPlayedEvent implements VideoPlayedEvent {
  const _VideoPlayedEvent({this.videoId, this.referenceId,  Map<String, dynamic>? data}): _data = data;
  factory _VideoPlayedEvent.fromJson(Map<String, dynamic> json) => _$VideoPlayedEventFromJson(json);

@override final  String? videoId;
@override final  String? referenceId;
 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of VideoPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoPlayedEventCopyWith<_VideoPlayedEvent> get copyWith => __$VideoPlayedEventCopyWithImpl<_VideoPlayedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoPlayedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoPlayedEvent&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&const DeepCollectionEquality().equals(other.data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,videoId,referenceId,const DeepCollectionEquality().hash(_data));
}

@override
String toString() {
    return 'VideoPlayedEvent(videoId: $videoId, referenceId: $referenceId, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VideoPlayedEventCopyWith<$Res> implements $VideoPlayedEventCopyWith<$Res> {
  factory _$VideoPlayedEventCopyWith(_VideoPlayedEvent value, $Res Function(_VideoPlayedEvent) _then) = __$VideoPlayedEventCopyWithImpl;
@override @useResult
$Res call({
 String? videoId, String? referenceId, Map<String, dynamic>? data
});




}
/// @nodoc
class __$VideoPlayedEventCopyWithImpl<$Res>
    implements _$VideoPlayedEventCopyWith<$Res> {
  __$VideoPlayedEventCopyWithImpl(this._self, this._then);

  final _VideoPlayedEvent _self;
  final $Res Function(_VideoPlayedEvent) _then;

/// Create a copy of VideoPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoId = freezed,Object? referenceId = freezed,Object? data = freezed,}) {
  return _then(_VideoPlayedEvent(
videoId: freezed == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
