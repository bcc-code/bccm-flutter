import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

bool isOldAppVersion({required String current, required String minimum}) {
  return getExtendedVersionNumber(minimum) > getExtendedVersionNumber(current);
}

RealtimeUpdate? _lastUpdate;
final appConfigFutureProvider = StateProvider<Future<Query$Application>>((ref) async {
  debugPrint('ag: appConfigFutureProvider building');
  final result = await ref
      .watch(bccmGraphQLProvider)
      .query$Application(Options$Query$Application(variables: Variables$Query$Application(timestamp: _lastUpdate?.updatedAt)));
  debugPrint('ag: appConfigFutureProvider result: $result');
  if (result.exception != null) {
    throw result.exception!;
  }
  if (result.parsedData == null) {
    throw ErrorDescription('App config data is null.');
  }
  ref.listen(applicationUpdatesProvider(result.parsedData!.application.code), (_, next) {
    if (next.hasValue == true) {
      _lastUpdate = next.value;
    }
    ref.invalidateSelf();
  }, fireImmediately: false);
  return result.parsedData!;
});

final _appConfigSnapshotProvider = FutureProvider<Query$Application>((ref) async {
  return ref.watch(appConfigFutureProvider);
});

/// Use this provider to get the current app config.
///
/// Note: To refresh, you need to invalidate the [appConfigFutureProvider].
final appConfigProvider = Provider<Query$Application?>((ref) {
  return ref.watch(_appConfigSnapshotProvider).valueOrNull;
});

class RealtimeUpdate {
  final String updatedAt;

  RealtimeUpdate(this.updatedAt);
}

final applicationUpdatesProvider = StreamProvider.family<RealtimeUpdate, String>((ref, String appCode) {
  return FirebaseFirestore.instanceFor(app: Firebase.app('bccm')).collection('updates:applications').doc(appCode).snapshots().map((event) {
    final updatedAt = event.data()?['Updated'];
    if (updatedAt == null) {
      throw ErrorDescription('Realtime update data is null.');
    }
    return RealtimeUpdate(updatedAt);
  }).skip(1);
});
