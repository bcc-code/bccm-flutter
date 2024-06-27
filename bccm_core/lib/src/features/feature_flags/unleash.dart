import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:riverpod/riverpod.dart';
import 'package:unleash_proxy_client_flutter/unleash_context.dart';

/// Override with [getStandardUnleashContext] to enable feature flags.
final unleashContextProvider = Provider<UnleashContext>((ref) {
  throw UnimplementedError('unleashContextProvider was not overriden. Override it to enable feature flags.');
});

UnleashContext getStandardUnleashContext({
  String? userId,
  String? gender,
  String? birthDate,
  bool? isBetaTester,
  bool? androidTv,
}) {
  final birthDateTime = birthDate == null ? null : DateTime.parse(birthDate);
  final age = birthDateTime == null ? null : getAgeFromBirthDate(birthDateTime);
  final ageGroup = age == null ? null : getAgeGroup(age);
  androidTv ??= isAndroidTv;
  return UnleashContext(userId: userId, properties: {
    if (ageGroup != null) 'ageGroupStart': ageGroup.start.toString(),
    if (ageGroup != null) 'ageGroup': ageGroup.name,
    if (gender != null) 'gender': gender,
    if (isBetaTester != null) 'isBetaTester': isBetaTester.toString(),
    'isAndroidTv': isAndroidTv.toString(),
  });
}
