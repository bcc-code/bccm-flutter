import 'package:bccm_core/platform.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:unleash_proxy_client_flutter/unleash_context.dart';
import 'package:unleash_proxy_client_flutter/unleash_proxy_client_flutter.dart';

final rawUnleashProvider = Provider<UnleashClient?>((ref) {
  debugPrint('unleashRawProvider was not overriden. Override it to enable feature flags.');
  return null;
});

/// Override with [getStandardUnleashContext] to enable feature flags.
final unleashContextProvider = Provider<UnleashContext>((ref) {
  throw UnimplementedError('unleashContextProvider was not overriden. Override it to enable feature flags.');
});

UnleashContext getStandardUnleashContext({
  String? userId,
  String? gender,
  String? birthDate,
  bool? isBetaTester,
}) {
  final birthDateTime = birthDate == null ? null : DateTime.parse(birthDate);
  final age = birthDateTime == null ? null : getAgeFromBirthDate(birthDateTime);
  final ageGroup = age == null ? null : getAgeGroup(age);
  return UnleashContext(userId: userId, properties: {
    if (ageGroup != null) 'ageGroupStart': ageGroup.start.toString(),
    if (ageGroup != null) 'ageGroup': ageGroup.name,
    if (gender != null) 'gender': gender,
    if (gender != null) 'gender': gender,
    if (isBetaTester != null) 'isBetaTester': isBetaTester.toString(),
  });
}

final unleashProvider = FutureProvider<UnleashClient?>((ref) async {
  final unleash = ref.watch(rawUnleashProvider);
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
