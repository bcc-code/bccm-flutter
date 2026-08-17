import 'package:package_info_plus/package_info_plus.dart';

/// Collapses a semver string into a single comparable integer.
///
/// Any build metadata or pre-release suffix is dropped first: [formatAppVersion]
/// emits `1.2.3+456`, and without stripping the `+456` the patch segment parses
/// as null and silently degrades to 0 — making 1.2.3 and 1.2.0 compare equal.
int getExtendedVersionNumber(String version) {
  if (version.isEmpty) return 0;

  final core = version.split(RegExp(r'[+-]')).first;
  final cells = core.split('.');
  int segment(int index) => index < cells.length ? (int.tryParse(cells[index].trim()) ?? 0) : 0;
  return segment(0) * 100000 + segment(1) * 1000 + segment(2);
}

String formatAppVersion(PackageInfo packageInfo) {
  return '${packageInfo.version}+${packageInfo.buildNumber}';
}
