import 'package:bccm_core/src/models/auth_state.dart';
import 'package:bccm_core/src/features/auth/auth0_api.dart';
import 'package:bccm_core/src/features/auth/auth_state.dart';
import 'package:riverpod/riverpod.dart';

class AuthStateNotifierDisabled extends StateNotifier<AuthState> implements AuthStateNotifier {
  AuthStateNotifierDisabled() : super(const AuthState());

  @override
  Future<bool> forceRefresh() {
    return Future.value(false);
  }

  @override
  Future<AuthState?> getExistingAndEnsureNotExpired() {
    return Future.value(null);
  }

  @override
  Future<bool> load() {
    return Future.value(false);
  }

  @override
  Future<bool> login({String? connection}) {
    return Future.value(false);
  }

  @override
  Future logout({bool manual = true}) {
    return Future.value();
  }

  @override
  Future<void> loginViaDeviceCode(DeviceTokenRequestResponse deviceToken) {
    return Future.value();
  }
}
