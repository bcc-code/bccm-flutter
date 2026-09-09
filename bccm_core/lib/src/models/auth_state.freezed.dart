// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 UserProfile? get user; String? get auth0AccessToken; DateTime? get expiresAt; String? get idToken; bool? get signedOutManually;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AuthState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.auth0AccessToken, _this.auth0AccessToken) || other.auth0AccessToken == _this.auth0AccessToken)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.idToken, _this.idToken) || other.idToken == _this.idToken)&&(identical(other.signedOutManually, _this.signedOutManually) || other.signedOutManually == _this.signedOutManually));
}


@override
int get hashCode {
  final _this = this as AuthState;
  return Object.hash(runtimeType,_this.user,_this.auth0AccessToken,_this.expiresAt,_this.idToken,_this.signedOutManually);
}

@override
String toString() {
  final _this = this as AuthState;
  return 'AuthState(user: ${_this.user}, auth0AccessToken: ${_this.auth0AccessToken}, expiresAt: ${_this.expiresAt}, idToken: ${_this.idToken}, signedOutManually: ${_this.signedOutManually})';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 UserProfile? user, String? auth0AccessToken, DateTime? expiresAt, String? idToken, bool? signedOutManually
});


$UserProfileCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? auth0AccessToken = freezed,Object? expiresAt = freezed,Object? idToken = freezed,Object? signedOutManually = freezed,}) {
  return _then(AuthState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile?,auth0AccessToken: freezed == auth0AccessToken ? _self.auth0AccessToken : auth0AccessToken // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,signedOutManually: freezed == signedOutManually ? _self.signedOutManually : signedOutManually // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Auth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Auth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Auth value)  $default,){
final _that = this;
switch (_that) {
case _Auth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Auth value)?  $default,){
final _that = this;
switch (_that) {
case _Auth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfile? user,  String? auth0AccessToken,  DateTime? expiresAt,  String? idToken,  bool? signedOutManually)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Auth() when $default != null:
return $default(_that.user,_that.auth0AccessToken,_that.expiresAt,_that.idToken,_that.signedOutManually);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfile? user,  String? auth0AccessToken,  DateTime? expiresAt,  String? idToken,  bool? signedOutManually)  $default,) {final _that = this;
switch (_that) {
case _Auth():
return $default(_that.user,_that.auth0AccessToken,_that.expiresAt,_that.idToken,_that.signedOutManually);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfile? user,  String? auth0AccessToken,  DateTime? expiresAt,  String? idToken,  bool? signedOutManually)?  $default,) {final _that = this;
switch (_that) {
case _Auth() when $default != null:
return $default(_that.user,_that.auth0AccessToken,_that.expiresAt,_that.idToken,_that.signedOutManually);case _:
  return null;

}
}

}

/// @nodoc


class _Auth extends AuthState {
  const _Auth({this.user, this.auth0AccessToken, this.expiresAt, this.idToken, this.signedOutManually}): super._();
  

@override final  UserProfile? user;
@override final  String? auth0AccessToken;
@override final  DateTime? expiresAt;
@override final  String? idToken;
@override final  bool? signedOutManually;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthCopyWith<_Auth> get copyWith => __$AuthCopyWithImpl<_Auth>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Auth&&(identical(other.user, user) || other.user == user)&&(identical(other.auth0AccessToken, auth0AccessToken) || other.auth0AccessToken == auth0AccessToken)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.signedOutManually, signedOutManually) || other.signedOutManually == signedOutManually));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user,auth0AccessToken,expiresAt,idToken,signedOutManually);
}

@override
String toString() {
    return 'AuthState(user: $user, auth0AccessToken: $auth0AccessToken, expiresAt: $expiresAt, idToken: $idToken, signedOutManually: $signedOutManually)';
}


}

/// @nodoc
abstract mixin class _$AuthCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthCopyWith(_Auth value, $Res Function(_Auth) _then) = __$AuthCopyWithImpl;
@override @useResult
$Res call({
 UserProfile? user, String? auth0AccessToken, DateTime? expiresAt, String? idToken, bool? signedOutManually
});


@override $UserProfileCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthCopyWithImpl<$Res>
    implements _$AuthCopyWith<$Res> {
  __$AuthCopyWithImpl(this._self, this._then);

  final _Auth _self;
  final $Res Function(_Auth) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? auth0AccessToken = freezed,Object? expiresAt = freezed,Object? idToken = freezed,Object? signedOutManually = freezed,}) {
  return _then(_Auth(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile?,auth0AccessToken: freezed == auth0AccessToken ? _self.auth0AccessToken : auth0AccessToken // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,signedOutManually: freezed == signedOutManually ? _self.signedOutManually : signedOutManually // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
