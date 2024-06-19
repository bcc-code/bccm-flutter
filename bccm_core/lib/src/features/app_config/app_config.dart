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
  final gql = ref.watch(bccmGraphQLProvider);
  final result = await gql.query$Application(Options$Query$Application(variables: Variables$Query$Application(timestamp: _lastUpdate?.updatedAt)));
  if (result.exception != null) throw result.exception!;

  final data = result.parsedData;
  if (data == null) throw ErrorDescription('App config data is null.');

  // Listen for realtime updates
  ref.listen(applicationUpdatesProvider(data.application.code), (_, next) {
    if (next.hasValue == true) {
      _lastUpdate = next.value;
    }
    ref.invalidateSelf();
  }, fireImmediately: false);

  ref.scheduleRefresh(const Duration(minutes: 5));

  return data;
});

/// A snapshot of the app config
final _appConfigSnapshotProvider = FutureProvider<Query$Application>((ref) async {
  return ref.watch(appConfigFutureProvider);
});

/// Use this provider to get the current app config.
///
/// Note: To refresh, you need to invalidate the [appConfigFutureProvider].
final appConfigProvider = Provider<Query$Application?>((ref) {
  return ref.watch(_appConfigSnapshotProvider).valueOrNull;
});

/// Listen to firebase updates
final applicationUpdatesProvider = StreamProvider.family<RealtimeUpdate, String>((ref, String appCode) {
  return FirebaseFirestore.instanceFor(app: Firebase.app('bccm')).collection('updates:applications').doc(appCode).snapshots().map((event) {
    final updatedAt = event.data()?['Updated'];
    if (updatedAt == null) {
      throw ErrorDescription('Realtime update data is null.');
    }
    return RealtimeUpdate(updatedAt);
  }).skip(1);
});

class RealtimeUpdate {
  RealtimeUpdate(this.updatedAt);
  final String updatedAt;
}
