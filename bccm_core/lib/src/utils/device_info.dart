import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:universal_io/io.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bccm_core/bccm_core.dart';

final isPhysicalDeviceProvider = FutureProvider<bool>((ref) {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  Future<bool> future;
  if (Platform.isAndroid) {
    future = deviceInfo.androidInfo.then((val) => val.isPhysicalDevice);
  } else if (Platform.isIOS) {
    future = deviceInfo.iosInfo.then((val) => val.isPhysicalDevice);
  } else {
    return false;
  }
  return future;
});

final contactDeviceInfoProvider = FutureProvider<ContactDeviceInfo?>((ref) async {
  final context = globalNavigatorKey.currentContext;
  if (context == null) {
    return null;
  }

  String? device, manufacturer, os, userId;
  String screenSize, appVer;

  final screenWidth = View.of(context).physicalSize.width.toInt().toString();
  final screenHeight = View.of(context).physicalSize.height.toInt().toString();
  screenSize = '${screenHeight}x$screenWidth';

  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  appVer = formatAppVersion(packageInfo);
  userId = ref.watch(authStateProvider).user?.name;

  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
    os = '${Platform.operatingSystem.capitalized} ${androidInfo.version.release}';
    device = androidInfo.model;
    manufacturer = androidInfo.manufacturer;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
    os = '${Platform.operatingSystem.capitalized} ${iosInfo.systemVersion}';
    device = iosInfo.model;
    manufacturer = 'Apple';
  } else {
    //Windows or Chrome or Linux
    return null;
  }

  return ContactDeviceInfo(
    device: device,
    envOverride: ref.watch(sharedPreferencesProvider).getString('env_override'),
    manufacturer: manufacturer,
    os: os,
    screenSize: screenSize,
    appVer: appVer,
    userId: userId,
  );
});

class ContactDeviceInfo {
  final String? device;
  final String? envOverride;
  final String? manufacturer;
  final String? os;
  final String screenSize;
  final String appVer;
  final String? userId;

  const ContactDeviceInfo({
    required this.device,
    required this.envOverride,
    required this.manufacturer,
    required this.os,
    required this.screenSize,
    required this.appVer,
    required this.userId,
  });

  Map<String, String> toMap() {
    return {
      'Device': device ?? '',
      'EnvOverride': envOverride ?? '',
      'Manufacturer': manufacturer ?? '',
      'OS': os ?? '',
      'Screen Size': screenSize,
      'App Version': appVer,
      'User ID': userId ?? '',
    };
  }
}
