import 'package:bccm_core/bccm_core.dart';
import 'package:bccm_core/platform.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('getExtendedVersionNumber', () {
    test('works', () async {
      final version = '5.6.66+2300226';
      final extendedVersion = getExtendedVersionNumber(version);
      expect(extendedVersion, 506066);
    });

    test('ignores build metadata and pre-release suffixes', () {
      expect(getExtendedVersionNumber('5.6.66'), 506066);
      expect(getExtendedVersionNumber('5.6.66+2300226'), 506066);
      expect(getExtendedVersionNumber('5.6.66-beta.1'), 506066);
      expect(getExtendedVersionNumber('5.6.66-rc1+99'), 506066);
    });

    test('orders versions by every segment', () {
      expect(getExtendedVersionNumber('5.6.66'), greaterThan(getExtendedVersionNumber('5.6.10')));
      expect(getExtendedVersionNumber('5.7.0'), greaterThan(getExtendedVersionNumber('5.6.99')));
      expect(getExtendedVersionNumber('6.0.0'), greaterThan(getExtendedVersionNumber('5.99.999')));
    });

    test('tolerates empty, partial and malformed input', () {
      expect(getExtendedVersionNumber(''), 0);
      expect(getExtendedVersionNumber('5'), 500000);
      expect(getExtendedVersionNumber('5.6'), 506000);
      expect(getExtendedVersionNumber('not.a.version'), 0);
    });
  });

  group('isOldAppVersion', () {
    test('respects the patch segment when a build number is attached', () {
      // Regression: the build metadata used to swallow the patch segment, so a
      // patch-level minimum version could never force an update.
      expect(isOldAppVersion(current: '5.6.10+2300226', minimum: '5.6.66'), isTrue);
      expect(isOldAppVersion(current: '5.6.66+2300226', minimum: '5.6.66'), isFalse);
      expect(isOldAppVersion(current: '5.6.66+2300226', minimum: '5.6.10'), isFalse);
    });
  });
}
