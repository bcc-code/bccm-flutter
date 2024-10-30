import 'package:bccm_core/bccm_core.dart';
import 'package:package_info_plus/package_info_plus.dart';

String formatAppName(PackageInfo packageInfo) {
  var appName = '';
  if (packageInfo.appName == 'BCC Media') {
    appName = isAndroidTv ? 'bccm-androidtv' : 'bccm-mobile';
  }
  if (packageInfo.appName == 'Live') {
    appName = isAndroidTv ? 'live-androidtv' : 'live-mobile';
  }
  if (packageInfo.appName == 'Bible Kids') {
    appName = 'kids-mobile';
  }
  return appName;
}
