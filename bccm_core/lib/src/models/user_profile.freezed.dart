// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get countryIso2Code => throw _privateConstructorUsedError;
  int? get churchId => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get givenName => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  bool? get mediaSubscriber => throw _privateConstructorUsedError;
  bool? get hasMembership => throw _privateConstructorUsedError;
  String? get bccPersonId => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? nickname,
      String? picture,
      String? updatedAt,
      String? countryIso2Code,
      int? churchId,
      String? birthdate,
      String? email,
      String? gender,
      String? givenName,
      String? familyName,
      bool? mediaSubscriber,
      bool? hasMembership,
      String? bccPersonId});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nickname = freezed,
    Object? picture = freezed,
    Object? updatedAt = freezed,
    Object? countryIso2Code = freezed,
    Object? churchId = freezed,
    Object? birthdate = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? mediaSubscriber = freezed,
    Object? hasMembership = freezed,
    Object? bccPersonId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIso2Code: freezed == countryIso2Code
          ? _value.countryIso2Code
          : countryIso2Code // ignore: cast_nullable_to_non_nullable
              as String?,
      churchId: freezed == churchId
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as int?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaSubscriber: freezed == mediaSubscriber
          ? _value.mediaSubscriber
          : mediaSubscriber // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMembership: freezed == hasMembership
          ? _value.hasMembership
          : hasMembership // ignore: cast_nullable_to_non_nullable
              as bool?,
      bccPersonId: freezed == bccPersonId
          ? _value.bccPersonId
          : bccPersonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? nickname,
      String? picture,
      String? updatedAt,
      String? countryIso2Code,
      int? churchId,
      String? birthdate,
      String? email,
      String? gender,
      String? givenName,
      String? familyName,
      bool? mediaSubscriber,
      bool? hasMembership,
      String? bccPersonId});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? nickname = freezed,
    Object? picture = freezed,
    Object? updatedAt = freezed,
    Object? countryIso2Code = freezed,
    Object? churchId = freezed,
    Object? birthdate = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? mediaSubscriber = freezed,
    Object? hasMembership = freezed,
    Object? bccPersonId = freezed,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      countryIso2Code: freezed == countryIso2Code
          ? _value.countryIso2Code
          : countryIso2Code // ignore: cast_nullable_to_non_nullable
              as String?,
      churchId: freezed == churchId
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as int?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaSubscriber: freezed == mediaSubscriber
          ? _value.mediaSubscriber
          : mediaSubscriber // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasMembership: freezed == hasMembership
          ? _value.hasMembership
          : hasMembership // ignore: cast_nullable_to_non_nullable
              as bool?,
      bccPersonId: freezed == bccPersonId
          ? _value.bccPersonId
          : bccPersonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl extends _UserProfile {
  const _$UserProfileImpl(
      {required this.id,
      required this.name,
      this.nickname,
      this.picture,
      this.updatedAt,
      this.countryIso2Code,
      this.churchId,
      this.birthdate,
      this.email,
      this.gender,
      this.givenName,
      this.familyName,
      this.mediaSubscriber,
      this.hasMembership,
      this.bccPersonId})
      : super._();

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? nickname;
  @override
  final String? picture;
  @override
  final String? updatedAt;
  @override
  final String? countryIso2Code;
  @override
  final int? churchId;
  @override
  final String? birthdate;
  @override
  final String? email;
  @override
  final String? gender;
  @override
  final String? givenName;
  @override
  final String? familyName;
  @override
  final bool? mediaSubscriber;
  @override
  final bool? hasMembership;
  @override
  final String? bccPersonId;

  @override
  String toString() {
    return 'UserProfile(id: $id, name: $name, nickname: $nickname, picture: $picture, updatedAt: $updatedAt, countryIso2Code: $countryIso2Code, churchId: $churchId, birthdate: $birthdate, email: $email, gender: $gender, givenName: $givenName, familyName: $familyName, mediaSubscriber: $mediaSubscriber, hasMembership: $hasMembership, bccPersonId: $bccPersonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.countryIso2Code, countryIso2Code) ||
                other.countryIso2Code == countryIso2Code) &&
            (identical(other.churchId, churchId) ||
                other.churchId == churchId) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.mediaSubscriber, mediaSubscriber) ||
                other.mediaSubscriber == mediaSubscriber) &&
            (identical(other.hasMembership, hasMembership) ||
                other.hasMembership == hasMembership) &&
            (identical(other.bccPersonId, bccPersonId) ||
                other.bccPersonId == bccPersonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      nickname,
      picture,
      updatedAt,
      countryIso2Code,
      churchId,
      birthdate,
      email,
      gender,
      givenName,
      familyName,
      mediaSubscriber,
      hasMembership,
      bccPersonId);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile extends UserProfile {
  const factory _UserProfile(
      {required final String id,
      required final String name,
      final String? nickname,
      final String? picture,
      final String? updatedAt,
      final String? countryIso2Code,
      final int? churchId,
      final String? birthdate,
      final String? email,
      final String? gender,
      final String? givenName,
      final String? familyName,
      final bool? mediaSubscriber,
      final bool? hasMembership,
      final String? bccPersonId}) = _$UserProfileImpl;
  const _UserProfile._() : super._();

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get nickname;
  @override
  String? get picture;
  @override
  String? get updatedAt;
  @override
  String? get countryIso2Code;
  @override
  int? get churchId;
  @override
  String? get birthdate;
  @override
  String? get email;
  @override
  String? get gender;
  @override
  String? get givenName;
  @override
  String? get familyName;
  @override
  bool? get mediaSubscriber;
  @override
  bool? get hasMembership;
  @override
  String? get bccPersonId;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
