import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? enText = '',
  }) =>
      [ruText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    'xcya3c3w': {
      'ru': 'Вход',
      'en': '',
    },
    '59ix97ao': {
      'ru': 'Введите фамилию сотрудника',
      'en': '',
    },
    '9a8atn06': {
      'ru': '\n',
      'en': '',
    },
    'j9x6wacq': {
      'ru': 'Home',
      'en': '',
    },
  },
  // HomePage
  {
    'eej5tktd': {
      'ru': 'Обеды',
      'en': '',
    },
    'ml4kfm7g': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Dinners
  {
    '692r4euf': {
      'ru': 'Home',
      'en': '',
    },
  },
  // HomePageCopy
  {
    '6caieqv3': {
      'ru': 'Обеды',
      'en': '',
    },
    '31nhmkef': {
      'ru': 'Развозка в пятницу',
      'en': '',
    },
    'z1mkb36f': {
      'ru': 'м. Лыбидская',
      'en': '',
    },
    '2g1hwquy': {
      'ru': 'утро, 8:30',
      'en': '',
    },
    '4c5xi97m': {
      'ru': 'вечер, 17:00',
      'en': '',
    },
    'yynlex2z': {
      'ru': 'м. Выдубичи',
      'en': '',
    },
    'j297cxy6': {
      'ru': 'утро, 8:30',
      'en': '',
    },
    '7a269004': {
      'ru': 'вечер, 17:00',
      'en': '',
    },
    '6ebp2e5q': {
      'ru': 'Home',
      'en': '',
    },
  },
  // SetUpMenu
  {
    '20qixci0': {
      'ru': 'Введите название блюда...',
      'en': '',
    },
    '8sffcois': {
      'ru': '\n',
      'en': '',
    },
    'wqkikbr3': {
      'ru': 'Home',
      'en': '',
    },
  },
  // ModalMenuShow
  {
    'ragvawus': {
      'ru': 'Меню дня',
      'en': '',
    },
  },
  // Miscellaneous
  {
    's8w22h9b': {
      'ru':
          'Резрешите отправлять оповещения, чтобы вы не пропустили вовремя записаться',
      'en': '',
    },
    'injzfz28': {
      'ru': '',
      'en': '',
    },
    't0iq0d17': {
      'ru': '',
      'en': '',
    },
    '3hcwjf02': {
      'ru': '',
      'en': '',
    },
    '5leo609p': {
      'ru': '',
      'en': '',
    },
    '3ddyd12t': {
      'ru': '',
      'en': '',
    },
    '92jzoqlc': {
      'ru': '',
      'en': '',
    },
    'agvdnupe': {
      'ru': '',
      'en': '',
    },
    'inebnnno': {
      'ru': '',
      'en': '',
    },
    '69l22pw1': {
      'ru': '',
      'en': '',
    },
    '8rxp7n9q': {
      'ru': '',
      'en': '',
    },
    '834rhvo5': {
      'ru': '',
      'en': '',
    },
    'cpw7s5bu': {
      'ru': '',
      'en': '',
    },
    'k6s62pkf': {
      'ru': '',
      'en': '',
    },
    'vs4b92lq': {
      'ru': '',
      'en': '',
    },
    'nj6u62tt': {
      'ru': '',
      'en': '',
    },
    'xrpgi2z6': {
      'ru': '',
      'en': '',
    },
    'ovt2lspz': {
      'ru': '',
      'en': '',
    },
    'u9y4kgfq': {
      'ru': '',
      'en': '',
    },
    '9k5cokqd': {
      'ru': '',
      'en': '',
    },
    'qzfo8eiq': {
      'ru': '',
      'en': '',
    },
    'x78bw1gq': {
      'ru': '',
      'en': '',
    },
    'hgk0prwc': {
      'ru': '',
      'en': '',
    },
    'lx6i5m9j': {
      'ru': '',
      'en': '',
    },
    '39mswa5c': {
      'ru': '',
      'en': '',
    },
    '58jxa631': {
      'ru': '',
      'en': '',
    },
    '0gqyti7l': {
      'ru': '',
      'en': '',
    },
    '6h7d3036': {
      'ru': '',
      'en': '',
    },
    'a6t34t7b': {
      'ru': '',
      'en': '',
    },
    'fqzu5fun': {
      'ru': '',
      'en': '',
    },
    '6fxilscf': {
      'ru': '',
      'en': '',
    },
    'u8khgrqo': {
      'ru': '',
      'en': '',
    },
    'k1or2yol': {
      'ru': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
