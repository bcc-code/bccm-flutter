import 'package:bccm_core/bccm_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();
  const factory UserProfile({
    required String id,
    required String name,
    String? nickname,
    String? picture,
    String? updatedAt,
    String? countryIso2Code,
    int? churchId,
    Map<String, dynamic>? appMetadata,
    Map<String, dynamic>? userMetadata,
    String? birthdate,
    String? email,
    String? gender,
    String? authTime,
    String? givenName,
    String? familyName,
  }) = _UserProfile;

  bool? get mediaSubscriber => userMetadata?['media_subscriber'];
  bool? get hasMembership => appMetadata?['hasMembership'];
  String? get bccPersonId => appMetadata?['personId']?.toString();

  static UserProfile mergeWithIdToken(Auth0IdToken token, UserProfile? user) {
    return UserProfile(
      id: token.sub,
      name: token.name,
      nickname: token.nickname ?? user?.nickname,
      picture: token.picture ?? user?.picture,
      updatedAt: token.updatedAt ?? user?.updatedAt,
      countryIso2Code: token.countryIso2Code ?? user?.countryIso2Code,
      churchId: token.churchId ?? user?.churchId,
      appMetadata: token.appMetadata ?? user?.appMetadata,
      userMetadata: token.userMetadata ?? user?.userMetadata,
      birthdate: token.birthdate ?? user?.birthdate,
      email: token.email ?? user?.email,
    );
  }

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}
