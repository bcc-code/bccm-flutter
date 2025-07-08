import 'package:intl/intl.dart';
import 'dart:ui';

import 'package:intl/intl_standalone.dart' if (dart.library.html) 'package:intl/intl_browser.dart';

Future<String> getDefaultLocale({
  required String fallbackLanguage,
  required List<String> supportedLocales,
}) async {
  final String systemLocale = await findSystemLocale();
  final verifiedLocale = Intl.verifiedLocale(systemLocale, NumberFormat.localeExists, onFailure: (String _) => fallbackLanguage);
  if (verifiedLocale == null) {
    return fallbackLanguage;
  }
  final shortLocale = Intl.shortLocale(verifiedLocale);
  if (!supportedLocales.contains(shortLocale)) {
    return fallbackLanguage;
  }

  return normalizeLanguage(shortLocale);
}

class LanguageInfo {
  final Locale locale;
  final String nativeName;
  final String englishName;

  const LanguageInfo({
    required this.locale,
    required this.nativeName,
    required this.englishName,
  });
}

class LanguageCodes {
  static const de = 'de';
  static const en = 'en';
  static const es = 'es';
  static const fi = 'fi';
  static const fr = 'fr';
  static const hr = 'hr';
  static const hu = 'hu';
  static const it = 'it';
  static const ml = 'ml';
  static const nl = 'nl';
  static const no = 'no';
  static const pl = 'pl';
  static const pt = 'pt';
  static const ro = 'ro';
  static const ru = 'ru';
  static const sl = 'sl';
  static const ta = 'ta';
  static const tr = 'tr';
  static const da = 'da';
  static const bg = 'bg';
  static const zh = 'zh';
  static const zhHK = 'zh-HK';
}

const languages = {
  LanguageCodes.de: LanguageInfo(
    locale: Locale(LanguageCodes.de),
    nativeName: 'Deutsch',
    englishName: 'German',
  ),
  LanguageCodes.en: LanguageInfo(
    locale: Locale(LanguageCodes.en),
    nativeName: 'English',
    englishName: 'English',
  ),
  LanguageCodes.es: LanguageInfo(
    locale: Locale(LanguageCodes.es),
    nativeName: 'Español',
    englishName: 'Spanish',
  ),
  LanguageCodes.fi: LanguageInfo(
    locale: Locale(LanguageCodes.fi),
    nativeName: 'Suomi',
    englishName: 'Finnish',
  ),
  LanguageCodes.fr: LanguageInfo(
    locale: Locale(LanguageCodes.fr),
    nativeName: 'Français',
    englishName: 'French',
  ),
  LanguageCodes.hr: LanguageInfo(
    locale: Locale(LanguageCodes.hr),
    nativeName: 'Hrvatski',
    englishName: 'Croatian',
  ),
  LanguageCodes.hu: LanguageInfo(
    locale: Locale(LanguageCodes.hu),
    nativeName: 'Magyar',
    englishName: 'Hungarian',
  ),
  LanguageCodes.it: LanguageInfo(
    locale: Locale(LanguageCodes.it),
    nativeName: 'Italiano',
    englishName: 'Italian',
  ),
  LanguageCodes.ml: LanguageInfo(
    locale: Locale(LanguageCodes.ml),
    nativeName: 'മലയാളം',
    englishName: 'Malayalam',
  ),
  LanguageCodes.nl: LanguageInfo(
    locale: Locale(LanguageCodes.nl),
    nativeName: 'Nederlands',
    englishName: 'Dutch',
  ),
  LanguageCodes.no: LanguageInfo(
    locale: Locale(LanguageCodes.no),
    nativeName: 'Norsk',
    englishName: 'Norwegian',
  ),
  LanguageCodes.pl: LanguageInfo(
    locale: Locale(LanguageCodes.pl),
    nativeName: 'Polski',
    englishName: 'Polish',
  ),
  LanguageCodes.pt: LanguageInfo(
    locale: Locale(LanguageCodes.pt),
    nativeName: 'Português',
    englishName: 'Portuguese',
  ),
  LanguageCodes.ro: LanguageInfo(
    locale: Locale(LanguageCodes.ro),
    nativeName: 'Română',
    englishName: 'Romanian',
  ),
  LanguageCodes.ru: LanguageInfo(
    locale: Locale(LanguageCodes.ru),
    nativeName: 'Pусский',
    englishName: 'Russian',
  ),
  LanguageCodes.sl: LanguageInfo(
    locale: Locale(LanguageCodes.sl),
    nativeName: 'Slovenščina',
    englishName: 'Slovenian',
  ),
  LanguageCodes.ta: LanguageInfo(
    locale: Locale(LanguageCodes.ta),
    nativeName: 'தமிழ்',
    englishName: 'Tamil',
  ),
  LanguageCodes.tr: LanguageInfo(
    locale: Locale(LanguageCodes.tr),
    nativeName: 'Türkçe',
    englishName: 'Turkish',
  ),
  LanguageCodes.da: LanguageInfo(
    locale: Locale(LanguageCodes.da),
    nativeName: 'Dansk',
    englishName: 'Danish',
  ),
  LanguageCodes.bg: LanguageInfo(
    locale: Locale(LanguageCodes.bg),
    nativeName: 'български',
    englishName: 'Bulgarian',
  ),
  LanguageCodes.zh: LanguageInfo(
    locale: Locale(LanguageCodes.zh),
    nativeName: '中文',
    englishName: 'Chinese',
  ),
  LanguageCodes.zhHK: LanguageInfo(
    locale: Locale('zh', 'HK'),
    nativeName: '粵語',
    englishName: 'Cantonese',
  ),
};

final appLanuageCodes = [
  LanguageCodes.no,
  LanguageCodes.en,
  LanguageCodes.de,
  LanguageCodes.es,
  LanguageCodes.fr,
  LanguageCodes.nl,
  LanguageCodes.fi,
  LanguageCodes.hu,
  LanguageCodes.it,
  LanguageCodes.pl,
  LanguageCodes.pt,
  LanguageCodes.ro,
  LanguageCodes.ru,
  LanguageCodes.sl,
  LanguageCodes.tr,
  LanguageCodes.da,
  LanguageCodes.bg,
];

String? getLanguageName(String? languageCode) {
  if (languageCode == null) {
    return null;
  }
  return languages[languageCode]?.nativeName;
}

Locale? getLocale(String? languageCode) {
  if (languageCode == null) {
    return null;
  }
  return languages[languageCode]?.locale;
}

String normalizeLanguage(String code) {
  switch (code) {
    case 'tk':
      return 'tr';
    case 'nb':
    case 'nn':
      return 'no';
    default:
      return code;
  }
}

String toThreeLetterLanguageCode(String code) {
  switch (code) {
    // Norwegian
    case 'no':
    case 'nb':
    case 'nb-NO':
    case 'nor':
    case 'nob':
    case 'no-nob':
      return 'nor';

    // English
    case 'en':
    case 'eng':
    case 'en-US':
    case 'en-GB':
      return 'eng';

    // French
    case 'fr':
    case 'fra':
    case 'fr-FR':
      return 'fra';

    // German
    case 'de':
    case 'deu':
    case 'de-DE':
      return 'deu';

    // Hungarian
    case 'hu':
    case 'hun':
    case 'hu-HU':
      return 'hun';

    // Spanish
    case 'es':
    case 'spa':
    case 'es-ES':
      return 'spa';

    // Italian
    case 'it':
    case 'ita':
    case 'it-IT':
      return 'ita';

    // Polish
    case 'pl':
    case 'pol':
    case 'pl-PL':
      return 'pol';

    // Romanian
    case 'ro':
    case 'ron':
    case 'ro-RO':
      return 'ron';

    // Russian
    case 'ru':
    case 'rus':
    case 'ru-RU':
      return 'rus';

    // Slovenian
    case 'sl':
    case 'slv':
    case 'sl-SI':
      return 'slv';

    // Turkish
    case 'tr':
    case 'tur':
    case 'tr-TR':
      return 'tur';

    // Chinese
    case 'zh':
    case 'zho':
    case 'cmn':
    case 'zh-cmn':
    case 'zh-CN':
      return 'zho';

    // Cantonese
    case 'zh-HK':
    case 'yue':
    case 'yue-HK':
      return 'yue';

    // Tamil
    case 'ta':
    case 'tam':
    case 'ta-IN':
      return 'tam';

    // Bulgarian
    case 'bg':
    case 'bul':
    case 'bg-BG':
      return 'bul';

    // Netherlands
    case 'nl':
    case 'nld':
    case 'nl-NL':
      return 'nld';

    // Danish
    case 'da':
    case 'dan':
    case 'da-DK':
      return 'dan';

    // Finnish
    case 'fi':
    case 'fin':
    case 'fi-FI':
      return 'fin';

    // Portuguese
    case 'pt':
    case 'por':
    case 'pt-PT':
      return 'por';

    // Khasi
    case 'kha':
    case 'kha-IN':
      return 'kha';

    // Croatian
    case 'hr':
    case 'hrv':
    case 'hbs-hrv':
    case 'hr-HR':
      return 'hrv';

    default:
      return code;
  }
}
