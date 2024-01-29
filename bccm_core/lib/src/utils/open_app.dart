import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<bool> openBccmOrStore({String? path}) async {
  return await openAppOrStore(
    androidScheme: kBccmAndroidScheme,
    androidPackageName: kBccmPackageName,
    iosScheme: kBccmPackageName,
    iosStoreId: kBccmIosId,
    path: path,
  );
}

Future<bool> openLiveOrStore({String? path}) async {
  return await openAppOrStore(
    androidScheme: kLiveAndroidScheme,
    androidPackageName: kLivePackageName,
    iosScheme: kLivePackageName,
    iosStoreId: kLiveIosId,
    path: path,
  );
}

Future<bool> openAppOrStore({
  required String androidScheme,
  required String androidPackageName,
  required String iosScheme,
  required String iosStoreId,
  String? path,
}) async {
  bool success = false;
  final scheme = Platform.isAndroid ? androidScheme : iosScheme;
  try {
    path ??= '/';
    final url = '$scheme://$path';
    success = await launchUrlString(url, mode: LaunchMode.externalApplication);
  } catch (e) {
    debugPrint(e.toString());
    success = false;
  }
  if (!success) {
    return await openStore(
      androidPackageName: androidPackageName,
      iosStoreId: iosStoreId,
    );
  }
  return success;
}

Future<bool> openStore(
    {required String androidPackageName, required String iosStoreId}) async {
  if (Platform.isAndroid) {
    return openPlayStore(androidPackageName);
  } else if (Platform.isIOS) {
    return openAppStore(iosStoreId);
  }
  return false;
}

Future<bool> openPlayStore(String packageName) async {
  bool success = false;
  try {
    success = await launchUrlString("market://details?id=$packageName",
        mode: LaunchMode.externalApplication);
  } catch (e) {
    success = await launchUrlString(
        "https://play.google.com/store/apps/details?id=$packageName",
        mode: LaunchMode.externalApplication);
  }
  return success;
}

Future<bool> openAppStore(String id) async {
  return await launchUrlString("https://itunes.apple.com/app/id$id",
      mode: LaunchMode.externalApplication);
}
