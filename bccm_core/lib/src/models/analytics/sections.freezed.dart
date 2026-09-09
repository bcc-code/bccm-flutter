// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SectionClickedEvent {

 String get sectionId; String? get sectionName; int get sectionPosition; String get sectionType; String? get elementName; int get elementPosition; String get elementType; String get elementId; String? get pageCode; Map<String, dynamic>? get meta;
/// Create a copy of SectionClickedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionClickedEventCopyWith<SectionClickedEvent> get copyWith => _$SectionClickedEventCopyWithImpl<SectionClickedEvent>(this as SectionClickedEvent, _$identity);

  /// Serializes this SectionClickedEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SectionClickedEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionClickedEvent&&(identical(other.sectionId, _this.sectionId) || other.sectionId == _this.sectionId)&&(identical(other.sectionName, _this.sectionName) || other.sectionName == _this.sectionName)&&(identical(other.sectionPosition, _this.sectionPosition) || other.sectionPosition == _this.sectionPosition)&&(identical(other.sectionType, _this.sectionType) || other.sectionType == _this.sectionType)&&(identical(other.elementName, _this.elementName) || other.elementName == _this.elementName)&&(identical(other.elementPosition, _this.elementPosition) || other.elementPosition == _this.elementPosition)&&(identical(other.elementType, _this.elementType) || other.elementType == _this.elementType)&&(identical(other.elementId, _this.elementId) || other.elementId == _this.elementId)&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SectionClickedEvent;
  return Object.hash(runtimeType,_this.sectionId,_this.sectionName,_this.sectionPosition,_this.sectionType,_this.elementName,_this.elementPosition,_this.elementType,_this.elementId,_this.pageCode,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as SectionClickedEvent;
  return 'SectionClickedEvent(sectionId: ${_this.sectionId}, sectionName: ${_this.sectionName}, sectionPosition: ${_this.sectionPosition}, sectionType: ${_this.sectionType}, elementName: ${_this.elementName}, elementPosition: ${_this.elementPosition}, elementType: ${_this.elementType}, elementId: ${_this.elementId}, pageCode: ${_this.pageCode}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $SectionClickedEventCopyWith<$Res>  {
  factory $SectionClickedEventCopyWith(SectionClickedEvent value, $Res Function(SectionClickedEvent) _then) = _$SectionClickedEventCopyWithImpl;
@useResult
$Res call({
 String sectionId, String? sectionName, int sectionPosition, String sectionType, String? elementName, int elementPosition, String elementType, String elementId, String? pageCode, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$SectionClickedEventCopyWithImpl<$Res>
    implements $SectionClickedEventCopyWith<$Res> {
  _$SectionClickedEventCopyWithImpl(this._self, this._then);

  final SectionClickedEvent _self;
  final $Res Function(SectionClickedEvent) _then;

/// Create a copy of SectionClickedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sectionId = null,Object? sectionName = freezed,Object? sectionPosition = null,Object? sectionType = null,Object? elementName = freezed,Object? elementPosition = null,Object? elementType = null,Object? elementId = null,Object? pageCode = freezed,Object? meta = freezed,}) {
  return _then(SectionClickedEvent(
sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,sectionPosition: null == sectionPosition ? _self.sectionPosition : sectionPosition // ignore: cast_nullable_to_non_nullable
as int,sectionType: null == sectionType ? _self.sectionType : sectionType // ignore: cast_nullable_to_non_nullable
as String,elementName: freezed == elementName ? _self.elementName : elementName // ignore: cast_nullable_to_non_nullable
as String?,elementPosition: null == elementPosition ? _self.elementPosition : elementPosition // ignore: cast_nullable_to_non_nullable
as int,elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionClickedEvent].
extension SectionClickedEventPatterns on SectionClickedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionClickedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionClickedEvent value)  $default,){
final _that = this;
switch (_that) {
case _SectionClickedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionClickedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sectionId,  String? sectionName,  int sectionPosition,  String sectionType,  String? elementName,  int elementPosition,  String elementType,  String elementId,  String? pageCode,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
return $default(_that.sectionId,_that.sectionName,_that.sectionPosition,_that.sectionType,_that.elementName,_that.elementPosition,_that.elementType,_that.elementId,_that.pageCode,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sectionId,  String? sectionName,  int sectionPosition,  String sectionType,  String? elementName,  int elementPosition,  String elementType,  String elementId,  String? pageCode,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _SectionClickedEvent():
return $default(_that.sectionId,_that.sectionName,_that.sectionPosition,_that.sectionType,_that.elementName,_that.elementPosition,_that.elementType,_that.elementId,_that.pageCode,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sectionId,  String? sectionName,  int sectionPosition,  String sectionType,  String? elementName,  int elementPosition,  String elementType,  String elementId,  String? pageCode,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _SectionClickedEvent() when $default != null:
return $default(_that.sectionId,_that.sectionName,_that.sectionPosition,_that.sectionType,_that.elementName,_that.elementPosition,_that.elementType,_that.elementId,_that.pageCode,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SectionClickedEvent implements SectionClickedEvent {
  const _SectionClickedEvent({required this.sectionId, this.sectionName, required this.sectionPosition, required this.sectionType, this.elementName, required this.elementPosition, required this.elementType, required this.elementId, this.pageCode,  Map<String, dynamic>? meta}): _meta = meta;
  factory _SectionClickedEvent.fromJson(Map<String, dynamic> json) => _$SectionClickedEventFromJson(json);

@override final  String sectionId;
@override final  String? sectionName;
@override final  int sectionPosition;
@override final  String sectionType;
@override final  String? elementName;
@override final  int elementPosition;
@override final  String elementType;
@override final  String elementId;
@override final  String? pageCode;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SectionClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionClickedEventCopyWith<_SectionClickedEvent> get copyWith => __$SectionClickedEventCopyWithImpl<_SectionClickedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionClickedEventToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionClickedEvent&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.sectionPosition, sectionPosition) || other.sectionPosition == sectionPosition)&&(identical(other.sectionType, sectionType) || other.sectionType == sectionType)&&(identical(other.elementName, elementName) || other.elementName == elementName)&&(identical(other.elementPosition, elementPosition) || other.elementPosition == elementPosition)&&(identical(other.elementType, elementType) || other.elementType == elementType)&&(identical(other.elementId, elementId) || other.elementId == elementId)&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&const DeepCollectionEquality().equals(other.meta, _meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sectionId,sectionName,sectionPosition,sectionType,elementName,elementPosition,elementType,elementId,pageCode,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'SectionClickedEvent(sectionId: $sectionId, sectionName: $sectionName, sectionPosition: $sectionPosition, sectionType: $sectionType, elementName: $elementName, elementPosition: $elementPosition, elementType: $elementType, elementId: $elementId, pageCode: $pageCode, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SectionClickedEventCopyWith<$Res> implements $SectionClickedEventCopyWith<$Res> {
  factory _$SectionClickedEventCopyWith(_SectionClickedEvent value, $Res Function(_SectionClickedEvent) _then) = __$SectionClickedEventCopyWithImpl;
@override @useResult
$Res call({
 String sectionId, String? sectionName, int sectionPosition, String sectionType, String? elementName, int elementPosition, String elementType, String elementId, String? pageCode, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$SectionClickedEventCopyWithImpl<$Res>
    implements _$SectionClickedEventCopyWith<$Res> {
  __$SectionClickedEventCopyWithImpl(this._self, this._then);

  final _SectionClickedEvent _self;
  final $Res Function(_SectionClickedEvent) _then;

/// Create a copy of SectionClickedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sectionId = null,Object? sectionName = freezed,Object? sectionPosition = null,Object? sectionType = null,Object? elementName = freezed,Object? elementPosition = null,Object? elementType = null,Object? elementId = null,Object? pageCode = freezed,Object? meta = freezed,}) {
  return _then(_SectionClickedEvent(
sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,sectionPosition: null == sectionPosition ? _self.sectionPosition : sectionPosition // ignore: cast_nullable_to_non_nullable
as int,sectionType: null == sectionType ? _self.sectionType : sectionType // ignore: cast_nullable_to_non_nullable
as String,elementName: freezed == elementName ? _self.elementName : elementName // ignore: cast_nullable_to_non_nullable
as String?,elementPosition: null == elementPosition ? _self.elementPosition : elementPosition // ignore: cast_nullable_to_non_nullable
as int,elementType: null == elementType ? _self.elementType : elementType // ignore: cast_nullable_to_non_nullable
as String,elementId: null == elementId ? _self.elementId : elementId // ignore: cast_nullable_to_non_nullable
as String,pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
mixin _$SectionAnalyticsData {

 String? get pageCode; String get id; String? get name; int get position; String get type; Map<String, dynamic>? get meta;
/// Create a copy of SectionAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionAnalyticsDataCopyWith<SectionAnalyticsData> get copyWith => _$SectionAnalyticsDataCopyWithImpl<SectionAnalyticsData>(this as SectionAnalyticsData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SectionAnalyticsData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionAnalyticsData&&(identical(other.pageCode, _this.pageCode) || other.pageCode == _this.pageCode)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.type, _this.type) || other.type == _this.type)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}


@override
int get hashCode {
  final _this = this as SectionAnalyticsData;
  return Object.hash(runtimeType,_this.pageCode,_this.id,_this.name,_this.position,_this.type,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as SectionAnalyticsData;
  return 'SectionAnalyticsData(pageCode: ${_this.pageCode}, id: ${_this.id}, name: ${_this.name}, position: ${_this.position}, type: ${_this.type}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $SectionAnalyticsDataCopyWith<$Res>  {
  factory $SectionAnalyticsDataCopyWith(SectionAnalyticsData value, $Res Function(SectionAnalyticsData) _then) = _$SectionAnalyticsDataCopyWithImpl;
@useResult
$Res call({
 String? pageCode, String id, String? name, int position, String type, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$SectionAnalyticsDataCopyWithImpl<$Res>
    implements $SectionAnalyticsDataCopyWith<$Res> {
  _$SectionAnalyticsDataCopyWithImpl(this._self, this._then);

  final SectionAnalyticsData _self;
  final $Res Function(SectionAnalyticsData) _then;

/// Create a copy of SectionAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageCode = freezed,Object? id = null,Object? name = freezed,Object? position = null,Object? type = null,Object? meta = freezed,}) {
  return _then(SectionAnalyticsData(
pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionAnalyticsData].
extension SectionAnalyticsDataPatterns on SectionAnalyticsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionAnalyticsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionAnalyticsData value)  $default,){
final _that = this;
switch (_that) {
case _SectionAnalyticsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionAnalyticsData value)?  $default,){
final _that = this;
switch (_that) {
case _SectionAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? pageCode,  String id,  String? name,  int position,  String type,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionAnalyticsData() when $default != null:
return $default(_that.pageCode,_that.id,_that.name,_that.position,_that.type,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? pageCode,  String id,  String? name,  int position,  String type,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _SectionAnalyticsData():
return $default(_that.pageCode,_that.id,_that.name,_that.position,_that.type,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? pageCode,  String id,  String? name,  int position,  String type,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _SectionAnalyticsData() when $default != null:
return $default(_that.pageCode,_that.id,_that.name,_that.position,_that.type,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _SectionAnalyticsData implements SectionAnalyticsData {
  const _SectionAnalyticsData({this.pageCode, required this.id, this.name, required this.position, required this.type,  Map<String, dynamic>? meta}): _meta = meta;
  

@override final  String? pageCode;
@override final  String id;
@override final  String? name;
@override final  int position;
@override final  String type;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SectionAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionAnalyticsDataCopyWith<_SectionAnalyticsData> get copyWith => __$SectionAnalyticsDataCopyWithImpl<_SectionAnalyticsData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionAnalyticsData&&(identical(other.pageCode, pageCode) || other.pageCode == pageCode)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.meta, _meta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,pageCode,id,name,position,type,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'SectionAnalyticsData(pageCode: $pageCode, id: $id, name: $name, position: $position, type: $type, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SectionAnalyticsDataCopyWith<$Res> implements $SectionAnalyticsDataCopyWith<$Res> {
  factory _$SectionAnalyticsDataCopyWith(_SectionAnalyticsData value, $Res Function(_SectionAnalyticsData) _then) = __$SectionAnalyticsDataCopyWithImpl;
@override @useResult
$Res call({
 String? pageCode, String id, String? name, int position, String type, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$SectionAnalyticsDataCopyWithImpl<$Res>
    implements _$SectionAnalyticsDataCopyWith<$Res> {
  __$SectionAnalyticsDataCopyWithImpl(this._self, this._then);

  final _SectionAnalyticsData _self;
  final $Res Function(_SectionAnalyticsData) _then;

/// Create a copy of SectionAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageCode = freezed,Object? id = null,Object? name = freezed,Object? position = null,Object? type = null,Object? meta = freezed,}) {
  return _then(_SectionAnalyticsData(
pageCode: freezed == pageCode ? _self.pageCode : pageCode // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
mixin _$SectionItemAnalyticsData {

 int get position; String get type; String get id; String? get name; Map<String, dynamic>? get meta;
/// Create a copy of SectionItemAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionItemAnalyticsDataCopyWith<SectionItemAnalyticsData> get copyWith => _$SectionItemAnalyticsDataCopyWithImpl<SectionItemAnalyticsData>(this as SectionItemAnalyticsData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SectionItemAnalyticsData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionItemAnalyticsData&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&const DeepCollectionEquality().equals(other.meta, _this.meta));
}


@override
int get hashCode {
  final _this = this as SectionItemAnalyticsData;
  return Object.hash(runtimeType,_this.position,_this.type,_this.id,_this.name,const DeepCollectionEquality().hash(_this.meta));
}

@override
String toString() {
  final _this = this as SectionItemAnalyticsData;
  return 'SectionItemAnalyticsData(position: ${_this.position}, type: ${_this.type}, id: ${_this.id}, name: ${_this.name}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $SectionItemAnalyticsDataCopyWith<$Res>  {
  factory $SectionItemAnalyticsDataCopyWith(SectionItemAnalyticsData value, $Res Function(SectionItemAnalyticsData) _then) = _$SectionItemAnalyticsDataCopyWithImpl;
@useResult
$Res call({
 int position, String type, String id, String? name, Map<String, dynamic>? meta
});




}
/// @nodoc
class _$SectionItemAnalyticsDataCopyWithImpl<$Res>
    implements $SectionItemAnalyticsDataCopyWith<$Res> {
  _$SectionItemAnalyticsDataCopyWithImpl(this._self, this._then);

  final SectionItemAnalyticsData _self;
  final $Res Function(SectionItemAnalyticsData) _then;

/// Create a copy of SectionItemAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = null,Object? type = null,Object? id = null,Object? name = freezed,Object? meta = freezed,}) {
  return _then(SectionItemAnalyticsData(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionItemAnalyticsData].
extension SectionItemAnalyticsDataPatterns on SectionItemAnalyticsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionItemAnalyticsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionItemAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionItemAnalyticsData value)  $default,){
final _that = this;
switch (_that) {
case _SectionItemAnalyticsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionItemAnalyticsData value)?  $default,){
final _that = this;
switch (_that) {
case _SectionItemAnalyticsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int position,  String type,  String id,  String? name,  Map<String, dynamic>? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionItemAnalyticsData() when $default != null:
return $default(_that.position,_that.type,_that.id,_that.name,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int position,  String type,  String id,  String? name,  Map<String, dynamic>? meta)  $default,) {final _that = this;
switch (_that) {
case _SectionItemAnalyticsData():
return $default(_that.position,_that.type,_that.id,_that.name,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int position,  String type,  String id,  String? name,  Map<String, dynamic>? meta)?  $default,) {final _that = this;
switch (_that) {
case _SectionItemAnalyticsData() when $default != null:
return $default(_that.position,_that.type,_that.id,_that.name,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _SectionItemAnalyticsData implements SectionItemAnalyticsData {
  const _SectionItemAnalyticsData({required this.position, required this.type, required this.id, this.name,  Map<String, dynamic>? meta}): _meta = meta;
  

@override final  int position;
@override final  String type;
@override final  String id;
@override final  String? name;
 final  Map<String, dynamic>? _meta;
@override Map<String, dynamic>? get meta {
  final value = _meta;
  if (value == null) return null;
  if (_meta is EqualUnmodifiableMapView) return _meta;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SectionItemAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionItemAnalyticsDataCopyWith<_SectionItemAnalyticsData> get copyWith => __$SectionItemAnalyticsDataCopyWithImpl<_SectionItemAnalyticsData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionItemAnalyticsData&&(identical(other.position, position) || other.position == position)&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.meta, _meta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,position,type,id,name,const DeepCollectionEquality().hash(_meta));
}

@override
String toString() {
    return 'SectionItemAnalyticsData(position: $position, type: $type, id: $id, name: $name, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$SectionItemAnalyticsDataCopyWith<$Res> implements $SectionItemAnalyticsDataCopyWith<$Res> {
  factory _$SectionItemAnalyticsDataCopyWith(_SectionItemAnalyticsData value, $Res Function(_SectionItemAnalyticsData) _then) = __$SectionItemAnalyticsDataCopyWithImpl;
@override @useResult
$Res call({
 int position, String type, String id, String? name, Map<String, dynamic>? meta
});




}
/// @nodoc
class __$SectionItemAnalyticsDataCopyWithImpl<$Res>
    implements _$SectionItemAnalyticsDataCopyWith<$Res> {
  __$SectionItemAnalyticsDataCopyWithImpl(this._self, this._then);

  final _SectionItemAnalyticsData _self;
  final $Res Function(_SectionItemAnalyticsData) _then;

/// Create a copy of SectionItemAnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = null,Object? type = null,Object? id = null,Object? name = freezed,Object? meta = freezed,}) {
  return _then(_SectionItemAnalyticsData(
position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,meta: freezed == meta ? _self._meta : meta // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
