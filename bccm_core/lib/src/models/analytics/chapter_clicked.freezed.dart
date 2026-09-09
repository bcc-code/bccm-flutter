// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_clicked.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChapterClickedEvent {

 String get elementType; String get elementId; String get chapterId; int get chapterStart;
/// Create a copy of ChapterClickedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterClickedEventCopyWith<ChapterClickedEvent> get copyWith => _$ChapterClickedEventCopyWithImpl<ChapterClickedEvent>(this as ChapterClickedEvent, _$identity);

  /// Serializes this ChapterClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChapterClickedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChapterClickedEvent&&(identical(other.elementType, _this.elementType) || other.elementType == _this.elementType)&&(identical(other.elementId, _this.elementId) || other.elementId == _this.elementId)&&(identical(other.chapterId, _this.chapterId) || other.chapterId == _this.chapterId)&&(identical(other.chapterStart, _this.chapterStart) || other.chapterStart == _this.chapterStart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChapterClickedEvent;
  return Object.hash(runtimeType,_this.elementType,_this.elementId,_this.chapterId,_this.chapterStart);
}

@override
String toString() {
  final _this = this as ChapterClickedEvent;
  return 'ChapterClickedEvent(elementType: ${_this.elementType}, elementId: ${_this.elementId}, chapterId: ${_this.chapterId}, chapterStart: ${_this.chapterStart})';
}


}

/// @nodoc
abstract mixin class $ChapterClickedEventCopyWith<$Res>  {
  factory $ChapterClickedEventCopyWith(ChapterClickedEvent value, $Res Function(ChapterClickedEvent) _then) = _$ChapterClickedEventCopyWithImpl;
@useResult
$Res call({
 String elementType, String elementId, String chapterId, int chapterStart
});




}
/// @nodoc
class _$ChapterClickedEventCopyWithImpl<$Res>
    implements $ChapterClickedEventCopyWith<$Res> {
  _$ChapterClickedEventCopyWithImpl(this._self, this._then);

  final ChapterClickedEvent _self;
  final $Res Function(ChapterClickedEvent) _then;

/// Create a copy of ChapterClickedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? elementType = null,Object? elementId = null,Object? chapterId = null,Object? chapterStart = null,}) {
  return _then(ChapterClickedEvent(
elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,chapterId: null == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as String,chapterStart: null == chapterStart ? _self.chapterStart : chapterStart // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChapterClickedEvent].
extension ChapterClickedEventPatterns on ChapterClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChapterClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChapterClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChapterClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _ChapterClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChapterClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ChapterClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String elementType,  String elementId,  String chapterId,  int chapterStart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChapterClickedEvent() when $default != null:
return $default(_that.elementType,_that.elementId,_that.chapterId,_that.chapterStart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String elementType,  String elementId,  String chapterId,  int chapterStart)  $default,) {final _that = this;
switch (_that) {
case _ChapterClickedEvent():
return $default(_that.elementType,_that.elementId,_that.chapterId,_that.chapterStart);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String elementType,  String elementId,  String chapterId,  int chapterStart)?  $default,) {final _that = this;
switch (_that) {
case _ChapterClickedEvent() when $default != null:
return $default(_that.elementType,_that.elementId,_that.chapterId,_that.chapterStart);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChapterClickedEvent implements ChapterClickedEvent {
  const _ChapterClickedEvent({required this.elementType, required this.elementId, required this.chapterId, required this.chapterStart});
  factory _ChapterClickedEvent.fromJson(Map<String, dynamic> json) => _$ChapterClickedEventFromJson(json);

@override final  String elementType;
@override final  String elementId;
@override final  String chapterId;
@override final  int chapterStart;

/// Create a copy of ChapterClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterClickedEventCopyWith<_ChapterClickedEvent> get copyWith => __$ChapterClickedEventCopyWithImpl<_ChapterClickedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChapterClickedEvent&&(identical(other.elementType, elementType) || other.elementType == elementType)&&(identical(other.elementId, elementId) || other.elementId == elementId)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId)&&(identical(other.chapterStart, chapterStart) || other.chapterStart == chapterStart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,elementType,elementId,chapterId,chapterStart);
}

@override
String toString() {
    return 'ChapterClickedEvent(elementType: $elementType, elementId: $elementId, chapterId: $chapterId, chapterStart: $chapterStart)';
}


}

/// @nodoc
abstract mixin class _$ChapterClickedEventCopyWith<$Res> implements $ChapterClickedEventCopyWith<$Res> {
  factory _$ChapterClickedEventCopyWith(_ChapterClickedEvent value, $Res Function(_ChapterClickedEvent) _then) = __$ChapterClickedEventCopyWithImpl;
@override @useResult
$Res call({
 String elementType, String elementId, String chapterId, int chapterStart
});




}
/// @nodoc
class __$ChapterClickedEventCopyWithImpl<$Res>
    implements _$ChapterClickedEventCopyWith<$Res> {
  __$ChapterClickedEventCopyWithImpl(this._self, this._then);

  final _ChapterClickedEvent _self;
  final $Res Function(_ChapterClickedEvent) _then;

/// Create a copy of ChapterClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? elementType = null,Object? elementId = null,Object? chapterId = null,Object? chapterStart = null,}) {
  return _then(_ChapterClickedEvent(
elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,chapterId: null == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as String,chapterStart: null == chapterStart ? _self.chapterStart : chapterStart // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
