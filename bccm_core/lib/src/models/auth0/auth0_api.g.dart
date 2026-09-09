// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth0_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Auth0SignupRequestBody _$Auth0SignupRequestBodyFromJson(
  Map<String, dynamic> json,
) => _Auth0SignupRequestBody(
  clientId: json['client_id'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  connection: json['connection'] as String,
  username: json['username'] as String?,
  givenName: json['given_name'] as String?,
  familyName: json['family_name'] as String?,
  name: json['name'] as String?,
  nickname: json['nickname'] as String?,
  pictureUrl: json['picture_url'] as String?,
  userMetadata: (json['user_metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
);

Map<String, dynamic> _$Auth0SignupRequestBodyToJson(
  _Auth0SignupRequestBody instance,
) => <String, dynamic>{
  'client_id': instance.clientId,
  'email': instance.email,
  'password': instance.password,
  'connection': instance.connection,
  'username': ?instance.username,
  'given_name': ?instance.givenName,
  'family_name': ?instance.familyName,
  'name': ?instance.name,
  'nickname': ?instance.nickname,
  'picture_url': ?instance.pictureUrl,
  'user_metadata': ?instance.userMetadata,
};

_Auth0SignupResponse _$Auth0SignupResponseFromJson(Map<String, dynamic> json) =>
    _Auth0SignupResponse(
      user_id: json['user_id'] as String,
      emailVerified: json['email_verified'] as bool,
      email: json['email'] as String,
    );

Map<String, dynamic> _$Auth0SignupResponseToJson(
  _Auth0SignupResponse instance,
) => <String, dynamic>{
  'user_id': instance.user_id,
  'email_verified': instance.emailVerified,
  'email': instance.email,
};

_Auth0ApiException _$Auth0ApiExceptionFromJson(Map<String, dynamic> json) =>
    _Auth0ApiException(
      name: json['name'] as String?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$Auth0ApiExceptionToJson(_Auth0ApiException instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'statusCode': instance.statusCode,
    };
