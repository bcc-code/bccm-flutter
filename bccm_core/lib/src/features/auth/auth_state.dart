import 'dart:async';

import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_state_notifier_stub.dart'
    if (dart.library.io) './implementations/auth_state_notifier_mobile.dart'
    if (dart.library.html) './implementations/auth_state_notifier_web.dart';

class AuthConfig {
  String auth0ClientId;
  String auth0Domain;
  String auth0Audience;
  List<String> scopes;
  bool isTv;
  VoidCallback? onSignout;
  VoidCallback? onSignIn;

  AuthConfig({
    required this.auth0ClientId,
    required this.auth0Domain,
    required this.auth0Audience,
    required this.scopes,
    required this.isTv,
    this.onSignout,
    this.onSignIn,
  });
}

abstract class AuthStateNotifier implements StateNotifier<AuthState> {
  Completer<void> get initializeCompleter;
  Future<AuthState?> getExistingAndEnsureNotExpired();
  Future<void> initialize();
  Future<bool> forceRefresh();
  Future logout({bool manual = true});
  Future<bool> login({String? connection});
  Future<void> loginViaDeviceCode(DeviceTokenRequestResponse deviceToken);
  factory AuthStateNotifier(AuthConfig config, Ref ref) => getPlatformSpecificAuthStateNotifier(config, ref);
}

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  debugPrint('WARNING: authStateProvider was not overridden.');
  return AuthStateNotifierDisabled();
});
