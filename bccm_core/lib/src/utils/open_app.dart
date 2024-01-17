import 'package:flutter/material.dart';
import 'package:universal_io/io.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<bool> openAppOrStore({required String packageName, required String iosStoreId, String? url}) async {
  bool success = false;
  try {
    url ??= '$packageName:///';
    success = await launchUrlString(url, mode: LaunchMode.externalApplication);
  } catch (e) {
    debugPrint(e.toString());
    success = false;
  }
  if (!success) {
    return await openStore(
      packageName: packageName,
      iosStoreId: iosStoreId,
    );
  }
  return success;
}

Future<bool> openStore({required String packageName, required String iosStoreId}) async {
  if (Platform.isAndroid) {
    return openPlayStore(packageName);
  } else if (Platform.isIOS) {
    return openAppStore(iosStoreId);
  }
  return false;
}

Future<bool> openPlayStore(String packageName) async {
  bool success = false;
  try {
    success = await launchUrlString("market://details?id=$packageName", mode: LaunchMode.externalApplication);
  } catch (e) {
    success = await launchUrlString("https://play.google.com/store/apps/details?id=$packageName", mode: LaunchMode.externalApplication);
  }
  return success;
}

Future<bool> openAppStore(String id) async {
  return await launchUrlString("https://itunes.apple.com/app/id$id", mode: LaunchMode.externalApplication);
}
