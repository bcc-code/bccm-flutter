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
      birthdate: json['birthdate'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
      mediaSubscriber: json['mediaSubscriber'] as bool?,
      hasMembership: json['hasMembership'] as bool?,
      bccPersonId: json['bccPersonId'] as String?,
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
      'birthdate': instance.birthdate,
      'email': instance.email,
      'gender': instance.gender,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'mediaSubscriber': instance.mediaSubscriber,
      'hasMembership': instance.hasMembership,
      'bccPersonId': instance.bccPersonId,
    };
