// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth0_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Auth0SignupRequestBody implements DiagnosticableTreeMixin {

 String get clientId; String get email; String get password; String get connection; String? get username; String? get givenName; String? get familyName; String? get name; String? get nickname; String? get pictureUrl; Map<String, String>? get userMetadata;
/// Create a copy of Auth0SignupRequestBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Auth0SignupRequestBodyCopyWith<Auth0SignupRequestBody> get copyWith => _$Auth0SignupRequestBodyCopyWithImpl<Auth0SignupRequestBody>(this as Auth0SignupRequestBody, _$identity);

  /// Serializes this Auth0SignupRequestBody to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as Auth0SignupRequestBody;
  properties
    ..add(DiagnosticsProperty('type', 'Auth0SignupRequestBody'))
    ..add(DiagnosticsProperty('clientId', _this.clientId))..add(DiagnosticsProperty('email', _this.email))..add(DiagnosticsProperty('password', _this.password))..add(DiagnosticsProperty('connection', _this.connection))..add(DiagnosticsProperty('username', _this.username))..add(DiagnosticsProperty('givenName', _this.givenName))..add(DiagnosticsProperty('familyName', _this.familyName))..add(DiagnosticsProperty('name', _this.name))..add(DiagnosticsProperty('nickname', _this.nickname))..add(DiagnosticsProperty('pictureUrl', _this.pictureUrl))..add(DiagnosticsProperty('userMetadata', _this.userMetadata));
}

@override
bool operator ==(Object other) {
  final _this = this as Auth0SignupRequestBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Auth0SignupRequestBody&&(identical(other.clientId, _this.clientId) || other.clientId == _this.clientId)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.connection, _this.connection) || other.connection == _this.connection)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.givenName, _this.givenName) || other.givenName == _this.givenName)&&(identical(other.familyName, _this.familyName) || other.familyName == _this.familyName)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.nickname, _this.nickname) || other.nickname == _this.nickname)&&(identical(other.pictureUrl, _this.pictureUrl) || other.pictureUrl == _this.pictureUrl)&&const DeepCollectionEquality().equals(other.userMetadata, _this.userMetadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Auth0SignupRequestBody;
  return Object.hash(runtimeType,_this.clientId,_this.email,_this.password,_this.connection,_this.username,_this.givenName,_this.familyName,_this.name,_this.nickname,_this.pictureUrl,const DeepCollectionEquality().hash(_this.userMetadata));
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as Auth0SignupRequestBody;
  return 'Auth0SignupRequestBody(clientId: ${_this.clientId}, email: ${_this.email}, password: ${_this.password}, connection: ${_this.connection}, username: ${_this.username}, givenName: ${_this.givenName}, familyName: ${_this.familyName}, name: ${_this.name}, nickname: ${_this.nickname}, pictureUrl: ${_this.pictureUrl}, userMetadata: ${_this.userMetadata})';
}


}

/// @nodoc
abstract mixin class $Auth0SignupRequestBodyCopyWith<$Res>  {
  factory $Auth0SignupRequestBodyCopyWith(Auth0SignupRequestBody value, $Res Function(Auth0SignupRequestBody) _then) = _$Auth0SignupRequestBodyCopyWithImpl;
@useResult
$Res call({
 String clientId, String email, String password, String connection, String? username, String? givenName, String? familyName, String? name, String? nickname, String? pictureUrl, Map<String, String>? userMetadata
});




}
/// @nodoc
class _$Auth0SignupRequestBodyCopyWithImpl<$Res>
    implements $Auth0SignupRequestBodyCopyWith<$Res> {
  _$Auth0SignupRequestBodyCopyWithImpl(this._self, this._then);

  final Auth0SignupRequestBody _self;
  final $Res Function(Auth0SignupRequestBody) _then;

/// Create a copy of Auth0SignupRequestBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientId = null,Object? email = null,Object? password = null,Object? connection = null,Object? username = freezed,Object? givenName = freezed,Object? familyName = freezed,Object? name = freezed,Object? nickname = freezed,Object? pictureUrl = freezed,Object? userMetadata = freezed,}) {
  return _then(Auth0SignupRequestBody(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,connection: null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,userMetadata: freezed == userMetadata ? _self.userMetadata : userMetadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Auth0SignupRequestBody].
extension Auth0SignupRequestBodyPatterns on Auth0SignupRequestBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Auth0SignupRequestBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Auth0SignupRequestBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Auth0SignupRequestBody value)  $default,){
final _that = this;
switch (_that) {
case _Auth0SignupRequestBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Auth0SignupRequestBody value)?  $default,){
final _that = this;
switch (_that) {
case _Auth0SignupRequestBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clientId,  String email,  String password,  String connection,  String? username,  String? givenName,  String? familyName,  String? name,  String? nickname,  String? pictureUrl,  Map<String, String>? userMetadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Auth0SignupRequestBody() when $default != null:
return $default(_that.clientId,_that.email,_that.password,_that.connection,_that.username,_that.givenName,_that.familyName,_that.name,_that.nickname,_that.pictureUrl,_that.userMetadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clientId,  String email,  String password,  String connection,  String? username,  String? givenName,  String? familyName,  String? name,  String? nickname,  String? pictureUrl,  Map<String, String>? userMetadata)  $default,) {final _that = this;
switch (_that) {
case _Auth0SignupRequestBody():
return $default(_that.clientId,_that.email,_that.password,_that.connection,_that.username,_that.givenName,_that.familyName,_that.name,_that.nickname,_that.pictureUrl,_that.userMetadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clientId,  String email,  String password,  String connection,  String? username,  String? givenName,  String? familyName,  String? name,  String? nickname,  String? pictureUrl,  Map<String, String>? userMetadata)?  $default,) {final _that = this;
switch (_that) {
case _Auth0SignupRequestBody() when $default != null:
return $default(_that.clientId,_that.email,_that.password,_that.connection,_that.username,_that.givenName,_that.familyName,_that.name,_that.nickname,_that.pictureUrl,_that.userMetadata);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
class _Auth0SignupRequestBody with DiagnosticableTreeMixin implements Auth0SignupRequestBody {
   _Auth0SignupRequestBody({required this.clientId, required this.email, required this.password, required this.connection, this.username, this.givenName, this.familyName, this.name, this.nickname, this.pictureUrl,  Map<String, String>? userMetadata}): _userMetadata = userMetadata;
  factory _Auth0SignupRequestBody.fromJson(Map<String, dynamic> json) => _$Auth0SignupRequestBodyFromJson(json);

@override final  String clientId;
@override final  String email;
@override final  String password;
@override final  String connection;
@override final  String? username;
@override final  String? givenName;
@override final  String? familyName;
@override final  String? name;
@override final  String? nickname;
@override final  String? pictureUrl;
 final  Map<String, String>? _userMetadata;
@override Map<String, String>? get userMetadata {
  final value = _userMetadata;
  if (value == null) return null;
  if (_userMetadata is EqualUnmodifiableMapView) return _userMetadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Auth0SignupRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Auth0SignupRequestBodyCopyWith<_Auth0SignupRequestBody> get copyWith => __$Auth0SignupRequestBodyCopyWithImpl<_Auth0SignupRequestBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Auth0SignupRequestBodyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'Auth0SignupRequestBody'))
    ..add(DiagnosticsProperty('clientId', clientId))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('connection', connection))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('givenName', givenName))..add(DiagnosticsProperty('familyName', familyName))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('nickname', nickname))..add(DiagnosticsProperty('pictureUrl', pictureUrl))..add(DiagnosticsProperty('userMetadata', userMetadata));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Auth0SignupRequestBody&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.connection, connection) || other.connection == connection)&&(identical(other.username, username) || other.username == username)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&const DeepCollectionEquality().equals(other.userMetadata, _userMetadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,clientId,email,password,connection,username,givenName,familyName,name,nickname,pictureUrl,const DeepCollectionEquality().hash(_userMetadata));
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'Auth0SignupRequestBody(clientId: $clientId, email: $email, password: $password, connection: $connection, username: $username, givenName: $givenName, familyName: $familyName, name: $name, nickname: $nickname, pictureUrl: $pictureUrl, userMetadata: $userMetadata)';
}


}

/// @nodoc
abstract mixin class _$Auth0SignupRequestBodyCopyWith<$Res> implements $Auth0SignupRequestBodyCopyWith<$Res> {
  factory _$Auth0SignupRequestBodyCopyWith(_Auth0SignupRequestBody value, $Res Function(_Auth0SignupRequestBody) _then) = __$Auth0SignupRequestBodyCopyWithImpl;
@override @useResult
$Res call({
 String clientId, String email, String password, String connection, String? username, String? givenName, String? familyName, String? name, String? nickname, String? pictureUrl, Map<String, String>? userMetadata
});




}
/// @nodoc
class __$Auth0SignupRequestBodyCopyWithImpl<$Res>
    implements _$Auth0SignupRequestBodyCopyWith<$Res> {
  __$Auth0SignupRequestBodyCopyWithImpl(this._self, this._then);

  final _Auth0SignupRequestBody _self;
  final $Res Function(_Auth0SignupRequestBody) _then;

/// Create a copy of Auth0SignupRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? email = null,Object? password = null,Object? connection = null,Object? username = freezed,Object? givenName = freezed,Object? familyName = freezed,Object? name = freezed,Object? nickname = freezed,Object? pictureUrl = freezed,Object? userMetadata = freezed,}) {
  return _then(_Auth0SignupRequestBody(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,connection: null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,pictureUrl: freezed == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String?,userMetadata: freezed == userMetadata ? _self._userMetadata : userMetadata // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}


/// @nodoc
mixin _$Auth0SignupResponse implements DiagnosticableTreeMixin {

@JsonKey(name: 'user_id') String get user_id;@JsonKey(name: 'email_verified') bool get emailVerified; String get email;
/// Create a copy of Auth0SignupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Auth0SignupResponseCopyWith<Auth0SignupResponse> get copyWith => _$Auth0SignupResponseCopyWithImpl<Auth0SignupResponse>(this as Auth0SignupResponse, _$identity);

  /// Serializes this Auth0SignupResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as Auth0SignupResponse;
  properties
    ..add(DiagnosticsProperty('type', 'Auth0SignupResponse'))
    ..add(DiagnosticsProperty('user_id', _this.user_id))..add(DiagnosticsProperty('emailVerified', _this.emailVerified))..add(DiagnosticsProperty('email', _this.email));
}

@override
bool operator ==(Object other) {
  final _this = this as Auth0SignupResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Auth0SignupResponse&&(identical(other.user_id, _this.user_id) || other.user_id == _this.user_id)&&(identical(other.emailVerified, _this.emailVerified) || other.emailVerified == _this.emailVerified)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Auth0SignupResponse;
  return Object.hash(runtimeType,_this.user_id,_this.emailVerified,_this.email);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as Auth0SignupResponse;
  return 'Auth0SignupResponse(user_id: ${_this.user_id}, emailVerified: ${_this.emailVerified}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $Auth0SignupResponseCopyWith<$Res>  {
  factory $Auth0SignupResponseCopyWith(Auth0SignupResponse value, $Res Function(Auth0SignupResponse) _then) = _$Auth0SignupResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String user_id,@JsonKey(name: 'email_verified') bool emailVerified, String email
});




}
/// @nodoc
class _$Auth0SignupResponseCopyWithImpl<$Res>
    implements $Auth0SignupResponseCopyWith<$Res> {
  _$Auth0SignupResponseCopyWithImpl(this._self, this._then);

  final Auth0SignupResponse _self;
  final $Res Function(Auth0SignupResponse) _then;

/// Create a copy of Auth0SignupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user_id = null,Object? emailVerified = null,Object? email = null,}) {
  return _then(Auth0SignupResponse(
user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Auth0SignupResponse].
extension Auth0SignupResponsePatterns on Auth0SignupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Auth0SignupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Auth0SignupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Auth0SignupResponse value)  $default,){
final _that = this;
switch (_that) {
case _Auth0SignupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Auth0SignupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _Auth0SignupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String user_id, @JsonKey(name: 'email_verified')  bool emailVerified,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Auth0SignupResponse() when $default != null:
return $default(_that.user_id,_that.emailVerified,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String user_id, @JsonKey(name: 'email_verified')  bool emailVerified,  String email)  $default,) {final _that = this;
switch (_that) {
case _Auth0SignupResponse():
return $default(_that.user_id,_that.emailVerified,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String user_id, @JsonKey(name: 'email_verified')  bool emailVerified,  String email)?  $default,) {final _that = this;
switch (_that) {
case _Auth0SignupResponse() when $default != null:
return $default(_that.user_id,_that.emailVerified,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Auth0SignupResponse with DiagnosticableTreeMixin implements Auth0SignupResponse {
  const _Auth0SignupResponse({@JsonKey(name: 'user_id') required this.user_id, @JsonKey(name: 'email_verified') required this.emailVerified, required this.email});
  factory _Auth0SignupResponse.fromJson(Map<String, dynamic> json) => _$Auth0SignupResponseFromJson(json);

@override@JsonKey(name: 'user_id') final  String user_id;
@override@JsonKey(name: 'email_verified') final  bool emailVerified;
@override final  String email;

/// Create a copy of Auth0SignupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Auth0SignupResponseCopyWith<_Auth0SignupResponse> get copyWith => __$Auth0SignupResponseCopyWithImpl<_Auth0SignupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Auth0SignupResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'Auth0SignupResponse'))
    ..add(DiagnosticsProperty('user_id', user_id))..add(DiagnosticsProperty('emailVerified', emailVerified))..add(DiagnosticsProperty('email', email));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Auth0SignupResponse&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,user_id,emailVerified,email);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'Auth0SignupResponse(user_id: $user_id, emailVerified: $emailVerified, email: $email)';
}


}

/// @nodoc
abstract mixin class _$Auth0SignupResponseCopyWith<$Res> implements $Auth0SignupResponseCopyWith<$Res> {
  factory _$Auth0SignupResponseCopyWith(_Auth0SignupResponse value, $Res Function(_Auth0SignupResponse) _then) = __$Auth0SignupResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String user_id,@JsonKey(name: 'email_verified') bool emailVerified, String email
});




}
/// @nodoc
class __$Auth0SignupResponseCopyWithImpl<$Res>
    implements _$Auth0SignupResponseCopyWith<$Res> {
  __$Auth0SignupResponseCopyWithImpl(this._self, this._then);

  final _Auth0SignupResponse _self;
  final $Res Function(_Auth0SignupResponse) _then;

/// Create a copy of Auth0SignupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user_id = null,Object? emailVerified = null,Object? email = null,}) {
  return _then(_Auth0SignupResponse(
user_id: null == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Auth0ApiException implements DiagnosticableTreeMixin {

 String? get name; String? get code; String? get description; int? get statusCode;
/// Create a copy of Auth0ApiException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Auth0ApiExceptionCopyWith<Auth0ApiException> get copyWith => _$Auth0ApiExceptionCopyWithImpl<Auth0ApiException>(this as Auth0ApiException, _$identity);

  /// Serializes this Auth0ApiException to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  final _this = this as Auth0ApiException;
  properties
    ..add(DiagnosticsProperty('type', 'Auth0ApiException'))
    ..add(DiagnosticsProperty('name', _this.name))..add(DiagnosticsProperty('code', _this.code))..add(DiagnosticsProperty('description', _this.description))..add(DiagnosticsProperty('statusCode', _this.statusCode));
}

@override
bool operator ==(Object other) {
  final _this = this as Auth0ApiException;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Auth0ApiException&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.statusCode, _this.statusCode) || other.statusCode == _this.statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Auth0ApiException;
  return Object.hash(runtimeType,_this.name,_this.code,_this.description,_this.statusCode);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  final _this = this as Auth0ApiException;
  return 'Auth0ApiException(name: ${_this.name}, code: ${_this.code}, description: ${_this.description}, statusCode: ${_this.statusCode})';
}


}

/// @nodoc
abstract mixin class $Auth0ApiExceptionCopyWith<$Res>  {
  factory $Auth0ApiExceptionCopyWith(Auth0ApiException value, $Res Function(Auth0ApiException) _then) = _$Auth0ApiExceptionCopyWithImpl;
@useResult
$Res call({
 String? name, String? code, String? description, int? statusCode
});




}
/// @nodoc
class _$Auth0ApiExceptionCopyWithImpl<$Res>
    implements $Auth0ApiExceptionCopyWith<$Res> {
  _$Auth0ApiExceptionCopyWithImpl(this._self, this._then);

  final Auth0ApiException _self;
  final $Res Function(Auth0ApiException) _then;

/// Create a copy of Auth0ApiException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? code = freezed,Object? description = freezed,Object? statusCode = freezed,}) {
  return _then(Auth0ApiException(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Auth0ApiException].
extension Auth0ApiExceptionPatterns on Auth0ApiException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Auth0ApiException value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Auth0ApiException() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Auth0ApiException value)  $default,){
final _that = this;
switch (_that) {
case _Auth0ApiException():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Auth0ApiException value)?  $default,){
final _that = this;
switch (_that) {
case _Auth0ApiException() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? code,  String? description,  int? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Auth0ApiException() when $default != null:
return $default(_that.name,_that.code,_that.description,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? code,  String? description,  int? statusCode)  $default,) {final _that = this;
switch (_that) {
case _Auth0ApiException():
return $default(_that.name,_that.code,_that.description,_that.statusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? code,  String? description,  int? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _Auth0ApiException() when $default != null:
return $default(_that.name,_that.code,_that.description,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Auth0ApiException with DiagnosticableTreeMixin implements Auth0ApiException {
  const _Auth0ApiException({this.name, this.code, this.description, this.statusCode});
  factory _Auth0ApiException.fromJson(Map<String, dynamic> json) => _$Auth0ApiExceptionFromJson(json);

@override final  String? name;
@override final  String? code;
@override final  String? description;
@override final  int? statusCode;

/// Create a copy of Auth0ApiException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Auth0ApiExceptionCopyWith<_Auth0ApiException> get copyWith => __$Auth0ApiExceptionCopyWithImpl<_Auth0ApiException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Auth0ApiExceptionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
    ..add(DiagnosticsProperty('type', 'Auth0ApiException'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('statusCode', statusCode));
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Auth0ApiException&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,code,description,statusCode);
}

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'Auth0ApiException(name: $name, code: $code, description: $description, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$Auth0ApiExceptionCopyWith<$Res> implements $Auth0ApiExceptionCopyWith<$Res> {
  factory _$Auth0ApiExceptionCopyWith(_Auth0ApiException value, $Res Function(_Auth0ApiException) _then) = __$Auth0ApiExceptionCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? code, String? description, int? statusCode
});




}
/// @nodoc
class __$Auth0ApiExceptionCopyWithImpl<$Res>
    implements _$Auth0ApiExceptionCopyWith<$Res> {
  __$Auth0ApiExceptionCopyWithImpl(this._self, this._then);

  final _Auth0ApiException _self;
  final $Res Function(_Auth0ApiException) _then;

/// Create a copy of Auth0ApiException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? code = freezed,Object? description = freezed,Object? statusCode = freezed,}) {
  return _then(_Auth0ApiException(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
