// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_link_opened.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeepLinkOpenedEvent {

 String get url; String get source; String get campaignId;
/// Create a copy of DeepLinkOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeepLinkOpenedEventCopyWith<DeepLinkOpenedEvent> get copyWith => _$DeepLinkOpenedEventCopyWithImpl<DeepLinkOpenedEvent>(this as DeepLinkOpenedEvent, _$identity);

  /// Serializes this DeepLinkOpenedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeepLinkOpenedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeepLinkOpenedEvent&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.source, _this.source) || other.source == _this.source)&&(identical(other.campaignId, _this.campaignId) || other.campaignId == _this.campaignId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeepLinkOpenedEvent;
  return Object.hash(runtimeType,_this.url,_this.source,_this.campaignId);
}

@override
String toString() {
  final _this = this as DeepLinkOpenedEvent;
  return 'DeepLinkOpenedEvent(url: ${_this.url}, source: ${_this.source}, campaignId: ${_this.campaignId})';
}


}

/// @nodoc
abstract mixin class $DeepLinkOpenedEventCopyWith<$Res>  {
  factory $DeepLinkOpenedEventCopyWith(DeepLinkOpenedEvent value, $Res Function(DeepLinkOpenedEvent) _then) = _$DeepLinkOpenedEventCopyWithImpl;
@useResult
$Res call({
 String url, String source, String campaignId
});




}
/// @nodoc
class _$DeepLinkOpenedEventCopyWithImpl<$Res>
    implements $DeepLinkOpenedEventCopyWith<$Res> {
  _$DeepLinkOpenedEventCopyWithImpl(this._self, this._then);

  final DeepLinkOpenedEvent _self;
  final $Res Function(DeepLinkOpenedEvent) _then;

/// Create a copy of DeepLinkOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? source = null,Object? campaignId = null,}) {
  return _then(DeepLinkOpenedEvent(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeepLinkOpenedEvent].
extension DeepLinkOpenedEventPatterns on DeepLinkOpenedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeepLinkOpenedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeepLinkOpenedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeepLinkOpenedEvent value)  $default,){
final _that = this;
switch (_that) {
case _DeepLinkOpenedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeepLinkOpenedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _DeepLinkOpenedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String source,  String campaignId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeepLinkOpenedEvent() when $default != null:
return $default(_that.url,_that.source,_that.campaignId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String source,  String campaignId)  $default,) {final _that = this;
switch (_that) {
case _DeepLinkOpenedEvent():
return $default(_that.url,_that.source,_that.campaignId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String source,  String campaignId)?  $default,) {final _that = this;
switch (_that) {
case _DeepLinkOpenedEvent() when $default != null:
return $default(_that.url,_that.source,_that.campaignId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeepLinkOpenedEvent implements DeepLinkOpenedEvent {
  const _DeepLinkOpenedEvent({required this.url, required this.source, required this.campaignId});
  factory _DeepLinkOpenedEvent.fromJson(Map<String, dynamic> json) => _$DeepLinkOpenedEventFromJson(json);

@override final  String url;
@override final  String source;
@override final  String campaignId;

/// Create a copy of DeepLinkOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeepLinkOpenedEventCopyWith<_DeepLinkOpenedEvent> get copyWith => __$DeepLinkOpenedEventCopyWithImpl<_DeepLinkOpenedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeepLinkOpenedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeepLinkOpenedEvent&&(identical(other.url, url) || other.url == url)&&(identical(other.source, source) || other.source == source)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,url,source,campaignId);
}

@override
String toString() {
    return 'DeepLinkOpenedEvent(url: $url, source: $source, campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class _$DeepLinkOpenedEventCopyWith<$Res> implements $DeepLinkOpenedEventCopyWith<$Res> {
  factory _$DeepLinkOpenedEventCopyWith(_DeepLinkOpenedEvent value, $Res Function(_DeepLinkOpenedEvent) _then) = __$DeepLinkOpenedEventCopyWithImpl;
@override @useResult
$Res call({
 String url, String source, String campaignId
});




}
/// @nodoc
class __$DeepLinkOpenedEventCopyWithImpl<$Res>
    implements _$DeepLinkOpenedEventCopyWith<$Res> {
  __$DeepLinkOpenedEventCopyWithImpl(this._self, this._then);

  final _DeepLinkOpenedEvent _self;
  final $Res Function(_DeepLinkOpenedEvent) _then;

/// Create a copy of DeepLinkOpenedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? source = null,Object? campaignId = null,}) {
  return _then(_DeepLinkOpenedEvent(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
