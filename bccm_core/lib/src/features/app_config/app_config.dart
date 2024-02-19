import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

bool isOldAppVersion(BuildContext context, Query$Application appConfig) {
  final packageInfo = ProviderScope.containerOf(context, listen: false).read(packageInfoProvider);
  final minVersionNumber = appConfig.application.clientVersion;
  final currentVersionNumber = packageInfo.version;
  return getExtendedVersionNumber(minVersionNumber) > getExtendedVersionNumber(currentVersionNumber);
}

final appConfigFutureProvider = StateProvider<Future<Query$Application>>((ref) async {
  final result = await ref.read(bccmGraphQLProvider).query$Application();
  if (result.exception != null) {
    throw result.exception!;
  }
  if (result.parsedData == null) {
    throw ErrorDescription('App config data is null.');
  }
  ref.listen(applicationUpdatesProvider(result.parsedData!.application.code), (snapshot, _) {
    ref.invalidateSelf();
  }, fireImmediately: false);
  return result.parsedData!;
});

final applicationUpdatesProvider = StreamProvider.family<DocumentSnapshot, String>((ref, String appCode) {
  return FirebaseFirestore.instance.collection('updates:applications').doc(appCode).snapshots();
});
