import 'package:package_info_plus/package_info_plus.dart';

int getExtendedVersionNumber(String version) {
  if (version.isEmpty) return 0;

  final cells = version.split('.');
  int segment(int index) => index < cells.length ? (int.tryParse(cells[index].trim()) ?? 0) : 0;
  return segment(0) * 100000 + segment(1) * 1000 + segment(2);
}

String formatAppVersion(PackageInfo packageInfo) {
  return '${packageInfo.version}+${packageInfo.buildNumber}';
}
