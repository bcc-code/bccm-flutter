// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoDownloadStartedEvent {

 String get downloadId; String get episodeId; String? get quality; String? get audioLanguage;
/// Create a copy of VideoDownloadStartedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoDownloadStartedEventCopyWith<VideoDownloadStartedEvent> get copyWith => _$VideoDownloadStartedEventCopyWithImpl<VideoDownloadStartedEvent>(this as VideoDownloadStartedEvent, _$identity);

  /// Serializes this VideoDownloadStartedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VideoDownloadStartedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoDownloadStartedEvent&&(identical(other.downloadId, _this.downloadId) || other.downloadId == _this.downloadId)&&(identical(other.episodeId, _this.episodeId) || other.episodeId == _this.episodeId)&&(identical(other.quality, _this.quality) || other.quality == _this.quality)&&(identical(other.audioLanguage, _this.audioLanguage) || other.audioLanguage == _this.audioLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VideoDownloadStartedEvent;
  return Object.hash(runtimeType,_this.downloadId,_this.episodeId,_this.quality,_this.audioLanguage);
}

@override
String toString() {
  final _this = this as VideoDownloadStartedEvent;
  return 'VideoDownloadStartedEvent(downloadId: ${_this.downloadId}, episodeId: ${_this.episodeId}, quality: ${_this.quality}, audioLanguage: ${_this.audioLanguage})';
}


}

/// @nodoc
abstract mixin class $VideoDownloadStartedEventCopyWith<$Res>  {
  factory $VideoDownloadStartedEventCopyWith(VideoDownloadStartedEvent value, $Res Function(VideoDownloadStartedEvent) _then) = _$VideoDownloadStartedEventCopyWithImpl;
@useResult
$Res call({
 String downloadId, String episodeId, String? quality, String? audioLanguage
});




}
/// @nodoc
class _$VideoDownloadStartedEventCopyWithImpl<$Res>
    implements $VideoDownloadStartedEventCopyWith<$Res> {
  _$VideoDownloadStartedEventCopyWithImpl(this._self, this._then);

  final VideoDownloadStartedEvent _self;
  final $Res Function(VideoDownloadStartedEvent) _then;

/// Create a copy of VideoDownloadStartedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadId = null,Object? episodeId = null,Object? quality = freezed,Object? audioLanguage = freezed,}) {
  return _then(VideoDownloadStartedEvent(
downloadId: null == downloadId ? _self.downloadId : downloadId // ignore: cast_nullable_to_non_nullable
as String,episodeId: null == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String,quality: freezed == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as String?,audioLanguage: freezed == audioLanguage ? _self.audioLanguage : audioLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoDownloadStartedEvent].
extension VideoDownloadStartedEventPatterns on VideoDownloadStartedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoDownloadStartedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoDownloadStartedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoDownloadStartedEvent value)  $default,){
final _that = this;
switch (_that) {
case _VideoDownloadStartedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoDownloadStartedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _VideoDownloadStartedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String downloadId,  String episodeId,  String? quality,  String? audioLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoDownloadStartedEvent() when $default != null:
return $default(_that.downloadId,_that.episodeId,_that.quality,_that.audioLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String downloadId,  String episodeId,  String? quality,  String? audioLanguage)  $default,) {final _that = this;
switch (_that) {
case _VideoDownloadStartedEvent():
return $default(_that.downloadId,_that.episodeId,_that.quality,_that.audioLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String downloadId,  String episodeId,  String? quality,  String? audioLanguage)?  $default,) {final _that = this;
switch (_that) {
case _VideoDownloadStartedEvent() when $default != null:
return $default(_that.downloadId,_that.episodeId,_that.quality,_that.audioLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoDownloadStartedEvent implements VideoDownloadStartedEvent {
  const _VideoDownloadStartedEvent({required this.downloadId, required this.episodeId, required this.quality, required this.audioLanguage});
  factory _VideoDownloadStartedEvent.fromJson(Map<String, dynamic> json) => _$VideoDownloadStartedEventFromJson(json);

@override final  String downloadId;
@override final  String episodeId;
@override final  String? quality;
@override final  String? audioLanguage;

/// Create a copy of VideoDownloadStartedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoDownloadStartedEventCopyWith<_VideoDownloadStartedEvent> get copyWith => __$VideoDownloadStartedEventCopyWithImpl<_VideoDownloadStartedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoDownloadStartedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoDownloadStartedEvent&&(identical(other.downloadId, downloadId) || other.downloadId == downloadId)&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.audioLanguage, audioLanguage) || other.audioLanguage == audioLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,downloadId,episodeId,quality,audioLanguage);
}

@override
String toString() {
    return 'VideoDownloadStartedEvent(downloadId: $downloadId, episodeId: $episodeId, quality: $quality, audioLanguage: $audioLanguage)';
}


}

/// @nodoc
abstract mixin class _$VideoDownloadStartedEventCopyWith<$Res> implements $VideoDownloadStartedEventCopyWith<$Res> {
  factory _$VideoDownloadStartedEventCopyWith(_VideoDownloadStartedEvent value, $Res Function(_VideoDownloadStartedEvent) _then) = __$VideoDownloadStartedEventCopyWithImpl;
@override @useResult
$Res call({
 String downloadId, String episodeId, String? quality, String? audioLanguage
});




}
/// @nodoc
class __$VideoDownloadStartedEventCopyWithImpl<$Res>
    implements _$VideoDownloadStartedEventCopyWith<$Res> {
  __$VideoDownloadStartedEventCopyWithImpl(this._self, this._then);

  final _VideoDownloadStartedEvent _self;
  final $Res Function(_VideoDownloadStartedEvent) _then;

/// Create a copy of VideoDownloadStartedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadId = null,Object? episodeId = null,Object? quality = freezed,Object? audioLanguage = freezed,}) {
  return _then(_VideoDownloadStartedEvent(
downloadId: null == downloadId ? _self.downloadId : downloadId // ignore: cast_nullable_to_non_nullable
as String,episodeId: null == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String,quality: freezed == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as String?,audioLanguage: freezed == audioLanguage ? _self.audioLanguage : audioLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$VideoDownloadRemovedEvent {

 String get downloadId; String? get episodeId;
/// Create a copy of VideoDownloadRemovedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoDownloadRemovedEventCopyWith<VideoDownloadRemovedEvent> get copyWith => _$VideoDownloadRemovedEventCopyWithImpl<VideoDownloadRemovedEvent>(this as VideoDownloadRemovedEvent, _$identity);

  /// Serializes this VideoDownloadRemovedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VideoDownloadRemovedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoDownloadRemovedEvent&&(identical(other.downloadId, _this.downloadId) || other.downloadId == _this.downloadId)&&(identical(other.episodeId, _this.episodeId) || other.episodeId == _this.episodeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VideoDownloadRemovedEvent;
  return Object.hash(runtimeType,_this.downloadId,_this.episodeId);
}

@override
String toString() {
  final _this = this as VideoDownloadRemovedEvent;
  return 'VideoDownloadRemovedEvent(downloadId: ${_this.downloadId}, episodeId: ${_this.episodeId})';
}


}

/// @nodoc
abstract mixin class $VideoDownloadRemovedEventCopyWith<$Res>  {
  factory $VideoDownloadRemovedEventCopyWith(VideoDownloadRemovedEvent value, $Res Function(VideoDownloadRemovedEvent) _then) = _$VideoDownloadRemovedEventCopyWithImpl;
@useResult
$Res call({
 String downloadId, String? episodeId
});




}
/// @nodoc
class _$VideoDownloadRemovedEventCopyWithImpl<$Res>
    implements $VideoDownloadRemovedEventCopyWith<$Res> {
  _$VideoDownloadRemovedEventCopyWithImpl(this._self, this._then);

  final VideoDownloadRemovedEvent _self;
  final $Res Function(VideoDownloadRemovedEvent) _then;

/// Create a copy of VideoDownloadRemovedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadId = null,Object? episodeId = freezed,}) {
  return _then(VideoDownloadRemovedEvent(
downloadId: null == downloadId ? _self.downloadId : downloadId // ignore: cast_nullable_to_non_nullable
as String,episodeId: freezed == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoDownloadRemovedEvent].
extension VideoDownloadRemovedEventPatterns on VideoDownloadRemovedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoDownloadRemovedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoDownloadRemovedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoDownloadRemovedEvent value)  $default,){
final _that = this;
switch (_that) {
case _VideoDownloadRemovedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoDownloadRemovedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _VideoDownloadRemovedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String downloadId,  String? episodeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoDownloadRemovedEvent() when $default != null:
return $default(_that.downloadId,_that.episodeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String downloadId,  String? episodeId)  $default,) {final _that = this;
switch (_that) {
case _VideoDownloadRemovedEvent():
return $default(_that.downloadId,_that.episodeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String downloadId,  String? episodeId)?  $default,) {final _that = this;
switch (_that) {
case _VideoDownloadRemovedEvent() when $default != null:
return $default(_that.downloadId,_that.episodeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoDownloadRemovedEvent implements VideoDownloadRemovedEvent {
  const _VideoDownloadRemovedEvent({required this.downloadId, required this.episodeId});
  factory _VideoDownloadRemovedEvent.fromJson(Map<String, dynamic> json) => _$VideoDownloadRemovedEventFromJson(json);

@override final  String downloadId;
@override final  String? episodeId;

/// Create a copy of VideoDownloadRemovedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoDownloadRemovedEventCopyWith<_VideoDownloadRemovedEvent> get copyWith => __$VideoDownloadRemovedEventCopyWithImpl<_VideoDownloadRemovedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoDownloadRemovedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoDownloadRemovedEvent&&(identical(other.downloadId, downloadId) || other.downloadId == downloadId)&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,downloadId,episodeId);
}

@override
String toString() {
    return 'VideoDownloadRemovedEvent(downloadId: $downloadId, episodeId: $episodeId)';
}


}

/// @nodoc
abstract mixin class _$VideoDownloadRemovedEventCopyWith<$Res> implements $VideoDownloadRemovedEventCopyWith<$Res> {
  factory _$VideoDownloadRemovedEventCopyWith(_VideoDownloadRemovedEvent value, $Res Function(_VideoDownloadRemovedEvent) _then) = __$VideoDownloadRemovedEventCopyWithImpl;
@override @useResult
$Res call({
 String downloadId, String? episodeId
});




}
/// @nodoc
class __$VideoDownloadRemovedEventCopyWithImpl<$Res>
    implements _$VideoDownloadRemovedEventCopyWith<$Res> {
  __$VideoDownloadRemovedEventCopyWithImpl(this._self, this._then);

  final _VideoDownloadRemovedEvent _self;
  final $Res Function(_VideoDownloadRemovedEvent) _then;

/// Create a copy of VideoDownloadRemovedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadId = null,Object? episodeId = freezed,}) {
  return _then(_VideoDownloadRemovedEvent(
downloadId: null == downloadId ? _self.downloadId : downloadId // ignore: cast_nullable_to_non_nullable
as String,episodeId: freezed == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$VideoDownloadPlayedEvent {

 String get downloadId; String? get episodeId;
/// Create a copy of VideoDownloadPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoDownloadPlayedEventCopyWith<VideoDownloadPlayedEvent> get copyWith => _$VideoDownloadPlayedEventCopyWithImpl<VideoDownloadPlayedEvent>(this as VideoDownloadPlayedEvent, _$identity);

  /// Serializes this VideoDownloadPlayedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VideoDownloadPlayedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoDownloadPlayedEvent&&(identical(other.downloadId, _this.downloadId) || other.downloadId == _this.downloadId)&&(identical(other.episodeId, _this.episodeId) || other.episodeId == _this.episodeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VideoDownloadPlayedEvent;
  return Object.hash(runtimeType,_this.downloadId,_this.episodeId);
}

@override
String toString() {
  final _this = this as VideoDownloadPlayedEvent;
  return 'VideoDownloadPlayedEvent(downloadId: ${_this.downloadId}, episodeId: ${_this.episodeId})';
}


}

/// @nodoc
abstract mixin class $VideoDownloadPlayedEventCopyWith<$Res>  {
  factory $VideoDownloadPlayedEventCopyWith(VideoDownloadPlayedEvent value, $Res Function(VideoDownloadPlayedEvent) _then) = _$VideoDownloadPlayedEventCopyWithImpl;
@useResult
$Res call({
 String downloadId, String? episodeId
});




}
/// @nodoc
class _$VideoDownloadPlayedEventCopyWithImpl<$Res>
    implements $VideoDownloadPlayedEventCopyWith<$Res> {
  _$VideoDownloadPlayedEventCopyWithImpl(this._self, this._then);

  final VideoDownloadPlayedEvent _self;
  final $Res Function(VideoDownloadPlayedEvent) _then;

/// Create a copy of VideoDownloadPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadId = null,Object? episodeId = freezed,}) {
  return _then(VideoDownloadPlayedEvent(
downloadId: null == downloadId ? _self.downloadId : downloadId // ignore: cast_nullable_to_non_nullable
as String,episodeId: freezed == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoDownloadPlayedEvent].
extension VideoDownloadPlayedEventPatterns on VideoDownloadPlayedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoDownloadPlayedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoDownloadPlayedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoDownloadPlayedEvent value)  $default,){
final _that = this;
switch (_that) {
case _VideoDownloadPlayedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoDownloadPlayedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _VideoDownloadPlayedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String downloadId,  String? episodeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoDownloadPlayedEvent() when $default != null:
return $default(_that.downloadId,_that.episodeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String downloadId,  String? episodeId)  $default,) {final _that = this;
switch (_that) {
case _VideoDownloadPlayedEvent():
return $default(_that.downloadId,_that.episodeId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String downloadId,  String? episodeId)?  $default,) {final _that = this;
switch (_that) {
case _VideoDownloadPlayedEvent() when $default != null:
return $default(_that.downloadId,_that.episodeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoDownloadPlayedEvent implements VideoDownloadPlayedEvent {
  const _VideoDownloadPlayedEvent({required this.downloadId, required this.episodeId});
  factory _VideoDownloadPlayedEvent.fromJson(Map<String, dynamic> json) => _$VideoDownloadPlayedEventFromJson(json);

@override final  String downloadId;
@override final  String? episodeId;

/// Create a copy of VideoDownloadPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoDownloadPlayedEventCopyWith<_VideoDownloadPlayedEvent> get copyWith => __$VideoDownloadPlayedEventCopyWithImpl<_VideoDownloadPlayedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoDownloadPlayedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoDownloadPlayedEvent&&(identical(other.downloadId, downloadId) || other.downloadId == downloadId)&&(identical(other.episodeId, episodeId) || other.episodeId == episodeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,downloadId,episodeId);
}

@override
String toString() {
    return 'VideoDownloadPlayedEvent(downloadId: $downloadId, episodeId: $episodeId)';
}


}

/// @nodoc
abstract mixin class _$VideoDownloadPlayedEventCopyWith<$Res> implements $VideoDownloadPlayedEventCopyWith<$Res> {
  factory _$VideoDownloadPlayedEventCopyWith(_VideoDownloadPlayedEvent value, $Res Function(_VideoDownloadPlayedEvent) _then) = __$VideoDownloadPlayedEventCopyWithImpl;
@override @useResult
$Res call({
 String downloadId, String? episodeId
});




}
/// @nodoc
class __$VideoDownloadPlayedEventCopyWithImpl<$Res>
    implements _$VideoDownloadPlayedEventCopyWith<$Res> {
  __$VideoDownloadPlayedEventCopyWithImpl(this._self, this._then);

  final _VideoDownloadPlayedEvent _self;
  final $Res Function(_VideoDownloadPlayedEvent) _then;

/// Create a copy of VideoDownloadPlayedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadId = null,Object? episodeId = freezed,}) {
  return _then(_VideoDownloadPlayedEvent(
downloadId: null == downloadId ? _self.downloadId : downloadId // ignore: cast_nullable_to_non_nullable
as String,episodeId: freezed == episodeId ? _self.episodeId : episodeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
