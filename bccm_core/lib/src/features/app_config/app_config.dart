import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

bool isOldAppVersion(BuildContext context, Query$Application appConfig) {
  final packageInfo = ProviderScope.containerOf(context, listen: false).read(packageInfoProvider);
  final minVersionNumber = appConfig.application.clientVersion;
  final currentVersionNumber = packageInfo.version;
  return getExtendedVersionNumber(minVersionNumber) > getExtendedVersionNumber(currentVersionNumber);
}

final appConfigFutureProvider = StateProvider<Future<Query$Application>>((ref) async {
  return ref.read(bccmGraphQLProvider).query$Application().then((value) {
    if (value.exception != null) {
      throw value.exception!;
    }
    if (value.parsedData == null) {
      throw ErrorDescription('App config data is null.');
    }
    return value.parsedData!;
  });
});
