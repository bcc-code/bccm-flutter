// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      nickname: json['nickname'] as String?,
      picture: json['picture'] as String?,
      updatedAt: json['updatedAt'] as String?,
      countryIso2Code: json['countryIso2Code'] as String?,
      churchId: (json['churchId'] as num?)?.toInt(),
      appMetadata: json['appMetadata'] as Map<String, dynamic>?,
      userMetadata: json['userMetadata'] as Map<String, dynamic>?,
      birthdate: json['birthdate'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      authTime: json['authTime'] as String?,
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickname': instance.nickname,
      'picture': instance.picture,
      'updatedAt': instance.updatedAt,
      'countryIso2Code': instance.countryIso2Code,
      'churchId': instance.churchId,
      'appMetadata': instance.appMetadata,
      'userMetadata': instance.userMetadata,
      'birthdate': instance.birthdate,
      'email': instance.email,
      'gender': instance.gender,
      'authTime': instance.authTime,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
    };
