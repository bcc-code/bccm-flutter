import 'package:bccm_core/src/models/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    UserProfile? user,
    String? auth0AccessToken,
    DateTime? expiresAt,
    String? idToken,
    bool? signedOutManually,
  }) = _Auth;

  bool get isLoggedIn => auth0AccessToken != null && user != null;
  bool get isBccMember => isLoggedIn && user?.hasMembership == true;
}
