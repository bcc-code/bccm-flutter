import 'package:bccm_core/bccm_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('toThreeLetterLanguageCode', () {
    final langs = ['en', 'nb-NO', 'zh-HK', 'nld', 'fi-FI'];

    for (final lang in langs) {
      debugPrint('$lang: ${toThreeLetterLanguageCode(lang)}');
      expect(toThreeLetterLanguageCode(lang).length, 3);
    }
  });
}
