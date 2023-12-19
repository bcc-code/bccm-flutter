import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:unleash_proxy_client_flutter/unleash_context.dart';
import 'package:unleash_proxy_client_flutter/unleash_proxy_client_flutter.dart';

final unleashRawProvider = Provider<UnleashClient?>((ref) {
  debugPrint('unleashRawProvider was not overriden. Override it to enable feature flags.');
  return null;
});

final unleashProvider = FutureProvider<UnleashClient?>((ref) async {
  final unleash = ref.watch(unleashRawProvider);
  if (unleash == null) return null;

  unleash.on(
    'error',
    (err) => FlutterError.reportError(
      FlutterErrorDetails(
        exception: Exception(err),
        context: ErrorDescription('Unleash got error $err'),
        stack: StackTrace.current,
      ),
    ),
  );
  unleash.on('update', (_) => debugPrint('Unleash refresh'));
  ref.listen(
    unleashContextProvider,
    (UnleashContext? previous, UnleashContext next) {
      unleash.updateContext(next);
    },
    fireImmediately: true,
  );

  try {
    await unleash.start();
  } catch (e, st) {
    FlutterError.reportError(FlutterErrorDetails(exception: e, stack: st));
    return null;
  }
  return unleash;
});

final unleashContextProvider = Provider<UnleashContext>((ref) {
  final gender = ref.watch(authStateProvider.select((value) => value.user?.gender));
  final birthDate = ref.watch(authStateProvider.select((value) => value.user?.birthdate));
  final birthDateTime = birthDate == null ? null : DateTime.parse(birthDate);
  final age = birthDateTime == null ? null : getAgeFromBirthDate(birthDateTime);
  final ageGroup = age == null ? null : getAgeGroup(age);
  return UnleashContext(
      userId: ref.watch(
        authStateProvider.select((value) => value.user?.bccPersonId),
      ),
      properties: {
        if (ageGroup != null) 'ageGroupStart': ageGroup.start.toString(),
        if (ageGroup != null) 'ageGroup': ageGroup.name,
        if (gender != null) 'gender': gender,
      });
});
