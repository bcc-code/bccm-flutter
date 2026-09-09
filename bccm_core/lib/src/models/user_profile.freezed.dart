// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {

 String get id; String get name; String? get nickname; String? get picture; String? get updatedAt; String? get countryIso2Code; int? get churchId; String? get birthdate; String? get email; String? get gender; String? get givenName; String? get familyName; bool? get mediaSubscriber; bool? get hasMembership; String? get bccPersonId;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.nickname, _this.nickname) || other.nickname == _this.nickname)&&(identical(other.picture, _this.picture) || other.picture == _this.picture)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.countryIso2Code, _this.countryIso2Code) || other.countryIso2Code == _this.countryIso2Code)&&(identical(other.churchId, _this.churchId) || other.churchId == _this.churchId)&&(identical(other.birthdate, _this.birthdate) || other.birthdate == _this.birthdate)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.givenName, _this.givenName) || other.givenName == _this.givenName)&&(identical(other.familyName, _this.familyName) || other.familyName == _this.familyName)&&(identical(other.mediaSubscriber, _this.mediaSubscriber) || other.mediaSubscriber == _this.mediaSubscriber)&&(identical(other.hasMembership, _this.hasMembership) || other.hasMembership == _this.hasMembership)&&(identical(other.bccPersonId, _this.bccPersonId) || other.bccPersonId == _this.bccPersonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserProfile;
  return Object.hash(runtimeType,_this.id,_this.name,_this.nickname,_this.picture,_this.updatedAt,_this.countryIso2Code,_this.churchId,_this.birthdate,_this.email,_this.gender,_this.givenName,_this.familyName,_this.mediaSubscriber,_this.hasMembership,_this.bccPersonId);
}

@override
String toString() {
  final _this = this as UserProfile;
  return 'UserProfile(id: ${_this.id}, name: ${_this.name}, nickname: ${_this.nickname}, picture: ${_this.picture}, updatedAt: ${_this.updatedAt}, countryIso2Code: ${_this.countryIso2Code}, churchId: ${_this.churchId}, birthdate: ${_this.birthdate}, email: ${_this.email}, gender: ${_this.gender}, givenName: ${_this.givenName}, familyName: ${_this.familyName}, mediaSubscriber: ${_this.mediaSubscriber}, hasMembership: ${_this.hasMembership}, bccPersonId: ${_this.bccPersonId})';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? nickname, String? picture, String? updatedAt, String? countryIso2Code, int? churchId, String? birthdate, String? email, String? gender, String? givenName, String? familyName, bool? mediaSubscriber, bool? hasMembership, String? bccPersonId
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nickname = freezed,Object? picture = freezed,Object? updatedAt = freezed,Object? countryIso2Code = freezed,Object? churchId = freezed,Object? birthdate = freezed,Object? email = freezed,Object? gender = freezed,Object? givenName = freezed,Object? familyName = freezed,Object? mediaSubscriber = freezed,Object? hasMembership = freezed,Object? bccPersonId = freezed,}) {
  return _then(UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,picture: freezed == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,countryIso2Code: freezed == countryIso2Code ? _self.countryIso2Code : countryIso2Code // ignore: cast_nullable_to_non_nullable
as String?,churchId: freezed == churchId ? _self.churchId : churchId // ignore: cast_nullable_to_non_nullable
as int?,birthdate: freezed == birthdate ? _self.birthdate : birthdate // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,mediaSubscriber: freezed == mediaSubscriber ? _self.mediaSubscriber : mediaSubscriber // ignore: cast_nullable_to_non_nullable
as bool?,hasMembership: freezed == hasMembership ? _self.hasMembership : hasMembership // ignore: cast_nullable_to_non_nullable
as bool?,bccPersonId: freezed == bccPersonId ? _self.bccPersonId : bccPersonId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? nickname,  String? picture,  String? updatedAt,  String? countryIso2Code,  int? churchId,  String? birthdate,  String? email,  String? gender,  String? givenName,  String? familyName,  bool? mediaSubscriber,  bool? hasMembership,  String? bccPersonId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.name,_that.nickname,_that.picture,_that.updatedAt,_that.countryIso2Code,_that.churchId,_that.birthdate,_that.email,_that.gender,_that.givenName,_that.familyName,_that.mediaSubscriber,_that.hasMembership,_that.bccPersonId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? nickname,  String? picture,  String? updatedAt,  String? countryIso2Code,  int? churchId,  String? birthdate,  String? email,  String? gender,  String? givenName,  String? familyName,  bool? mediaSubscriber,  bool? hasMembership,  String? bccPersonId)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.id,_that.name,_that.nickname,_that.picture,_that.updatedAt,_that.countryIso2Code,_that.churchId,_that.birthdate,_that.email,_that.gender,_that.givenName,_that.familyName,_that.mediaSubscriber,_that.hasMembership,_that.bccPersonId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? nickname,  String? picture,  String? updatedAt,  String? countryIso2Code,  int? churchId,  String? birthdate,  String? email,  String? gender,  String? givenName,  String? familyName,  bool? mediaSubscriber,  bool? hasMembership,  String? bccPersonId)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.name,_that.nickname,_that.picture,_that.updatedAt,_that.countryIso2Code,_that.churchId,_that.birthdate,_that.email,_that.gender,_that.givenName,_that.familyName,_that.mediaSubscriber,_that.hasMembership,_that.bccPersonId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile extends UserProfile {
  const _UserProfile({required this.id, required this.name, this.nickname, this.picture, this.updatedAt, this.countryIso2Code, this.churchId, this.birthdate, this.email, this.gender, this.givenName, this.familyName, this.mediaSubscriber, this.hasMembership, this.bccPersonId}): super._();
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? nickname;
@override final  String? picture;
@override final  String? updatedAt;
@override final  String? countryIso2Code;
@override final  int? churchId;
@override final  String? birthdate;
@override final  String? email;
@override final  String? gender;
@override final  String? givenName;
@override final  String? familyName;
@override final  bool? mediaSubscriber;
@override final  bool? hasMembership;
@override final  String? bccPersonId;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.countryIso2Code, countryIso2Code) || other.countryIso2Code == countryIso2Code)&&(identical(other.churchId, churchId) || other.churchId == churchId)&&(identical(other.birthdate, birthdate) || other.birthdate == birthdate)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.givenName, givenName) || other.givenName == givenName)&&(identical(other.familyName, familyName) || other.familyName == familyName)&&(identical(other.mediaSubscriber, mediaSubscriber) || other.mediaSubscriber == mediaSubscriber)&&(identical(other.hasMembership, hasMembership) || other.hasMembership == hasMembership)&&(identical(other.bccPersonId, bccPersonId) || other.bccPersonId == bccPersonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,nickname,picture,updatedAt,countryIso2Code,churchId,birthdate,email,gender,givenName,familyName,mediaSubscriber,hasMembership,bccPersonId);
}

@override
String toString() {
    return 'UserProfile(id: $id, name: $name, nickname: $nickname, picture: $picture, updatedAt: $updatedAt, countryIso2Code: $countryIso2Code, churchId: $churchId, birthdate: $birthdate, email: $email, gender: $gender, givenName: $givenName, familyName: $familyName, mediaSubscriber: $mediaSubscriber, hasMembership: $hasMembership, bccPersonId: $bccPersonId)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? nickname, String? picture, String? updatedAt, String? countryIso2Code, int? churchId, String? birthdate, String? email, String? gender, String? givenName, String? familyName, bool? mediaSubscriber, bool? hasMembership, String? bccPersonId
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nickname = freezed,Object? picture = freezed,Object? updatedAt = freezed,Object? countryIso2Code = freezed,Object? churchId = freezed,Object? birthdate = freezed,Object? email = freezed,Object? gender = freezed,Object? givenName = freezed,Object? familyName = freezed,Object? mediaSubscriber = freezed,Object? hasMembership = freezed,Object? bccPersonId = freezed,}) {
  return _then(_UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,picture: freezed == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,countryIso2Code: freezed == countryIso2Code ? _self.countryIso2Code : countryIso2Code // ignore: cast_nullable_to_non_nullable
as String?,churchId: freezed == churchId ? _self.churchId : churchId // ignore: cast_nullable_to_non_nullable
as int?,birthdate: freezed == birthdate ? _self.birthdate : birthdate // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,givenName: freezed == givenName ? _self.givenName : givenName // ignore: cast_nullable_to_non_nullable
as String?,familyName: freezed == familyName ? _self.familyName : familyName // ignore: cast_nullable_to_non_nullable
as String?,mediaSubscriber: freezed == mediaSubscriber ? _self.mediaSubscriber : mediaSubscriber // ignore: cast_nullable_to_non_nullable
as bool?,hasMembership: freezed == hasMembership ? _self.hasMembership : hasMembership // ignore: cast_nullable_to_non_nullable
as bool?,bccPersonId: freezed == bccPersonId ? _self.bccPersonId : bccPersonId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
