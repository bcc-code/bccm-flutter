import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

bool isOldAppVersion(BuildContext context, Query$Application appConfig) {
  final packageInfo = ProviderScope.containerOf(context).read(packageInfoProvider);
  final minVersionNumber = appConfig.application.clientVersion;
  final currentVersionNumber = packageInfo.version;
  return getExtendedVersionNumber(minVersionNumber) > getExtendedVersionNumber(currentVersionNumber);
}
