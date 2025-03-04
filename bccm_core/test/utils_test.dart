import 'package:bccm_core/bccm_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getExtendedVersionNumber works', () async {
    final version = '5.6.66+2300226';
    final extendedVersion = getExtendedVersionNumber(version);
    expect(extendedVersion, 506066);
  });
}
