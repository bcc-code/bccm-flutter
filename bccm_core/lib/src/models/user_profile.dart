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
    String? birthdate,
    String? email,
    String? gender,
    String? givenName,
    String? familyName,
    bool? mediaSubscriber,
    bool? hasMembership,
    String? bccPersonId,
  }) = _UserProfile;

  static UserProfile mergeWithIdToken(Auth0IdToken token, UserProfile? user) {
    return UserProfile(
      id: token.sub,
      name: token.name,
      nickname: token.nickname ?? user?.nickname,
      picture: token.picture ?? user?.picture,
      updatedAt: token.updatedAt ?? user?.updatedAt,
      countryIso2Code: token.countryIso2Code ?? user?.countryIso2Code,
      churchId: token.churchId ?? user?.churchId,
      birthdate: token.birthdate ?? user?.birthdate,
      email: token.email ?? user?.email,
      gender: token.gender ?? user?.gender,
      givenName: token.givenName ?? user?.givenName,
      familyName: token.familyName ?? user?.familyName,
      mediaSubscriber: token.userMetadata?['media_subscriber'] ?? user?.mediaSubscriber,
      hasMembership: token.userMetadata?['has_membership'] ?? user?.hasMembership,
      bccPersonId: token.userMetadata?['bcc_person_id'] ?? user?.bccPersonId,
    );
  }

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}
