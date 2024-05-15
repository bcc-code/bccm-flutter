import 'package:freezed_annotation/freezed_annotation.dart';

@internal
class SecureStorageKeys {
  SecureStorageKeys._();
  static const refreshToken = 'refresh_token';
  static const idToken = 'id_token';
  static const accessToken = 'access_token';
  static const userProfile = 'user_profile';
}

const kBccmIosId = '913268220';
const kBccmAndroidScheme = 'tv.brunstad.app.main';
const kBccmPackageName = 'tv.brunstad.app';

const kLiveIosId = '6476551025';
const kLiveAndroidScheme = 'connect.bcc.live.main';
const kLivePackageName = 'connect.bcc.live';
