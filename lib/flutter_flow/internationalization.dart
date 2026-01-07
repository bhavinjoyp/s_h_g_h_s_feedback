import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'kn', 'ta'];

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
    String? enText = '',
    String? knText = '',
    String? taText = '',
  }) =>
      [enText, knText, taText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // teachers
  {
    '5genwfsg': {
      'en': 'Rate the following statements on a scale of 1-5:',
      'kn': 'ಕೆಳಗಿನ ಹೇಳಿಕೆಗಳನ್ನು 1-5 ಪ್ರಮಾಣದಲ್ಲಿ ರೇಟ್ ಮಾಡಿ:',
      'ta': 'பின்வரும் அறிக்கைகளை 1-5 என்ற அளவில் மதிப்பிடவும்:',
    },
    'hh7pk6vx': {
      'en': '\n(1 being Strongly Disagree and 5 being Strongly Agree)',
      'kn': '',
      'ta': '',
    },
    'kay49gaa': {
      'en': 'Please select your class...',
      'kn': '',
      'ta': '',
    },
    'kmxg1fe6': {
      'en': 'Search for an item...',
      'kn': '',
      'ta': '',
    },
    '5lgiqo3d': {
      'en': 'Select staff...',
      'kn': '',
      'ta': '',
    },
    '4q618rt1': {
      'en': 'Search for an item...',
      'kn': '',
      'ta': '',
    },
    'v7ppjpjm': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'bvx3jl0c': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    '62l3tuh9': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'bf5x3ek4': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'fco6m4uk': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    '0jjs890v': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'yx6njzag': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'm7wodd6u': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'f0h0up2o': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'jmndm22l': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'f95ihmct': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    '43kmguj4': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    '4wl7gwjv': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'xyrylbtp': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'ekwl03vw': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'n39efdo4': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'x6rjd8dd': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'ot6rhy72': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'asjgho44': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '8p9lgb3e': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'dldog9rl': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'gc3vhaeg': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '9ne5vsmq': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'wfyys4v7': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'ihrnhfj0': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'lggg86pp': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'hhnycz5s': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    '672nns0w': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'nedtmqqf': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    '8vt1r539': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'q79wpky8': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'c9cfybjr': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'f74mh443': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'p4mfa5ro': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'hptckxbn': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'w7owk26v': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'qqty7y7n': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'nn2dzf1k': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'j0qp538u': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    '0dms18uy': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'qbazpiml': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'ec0dqcfk': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'n8d2u4fi': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'vm6g047e': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'b5660yhg': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'c13yaz8a': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'xkapr3e1': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'r3pgubns': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    't4jx5v7g': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'msza6ftc': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    '8wlohejq': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'li62vx3i': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'ipmgnga3': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'mcr9qdpm': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    '5zdskkvn': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '3d098f0w': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'yjxsayjb': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    '0ysrmhir': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'hj79osui': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'iydwdqym': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'dce6t8z1': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'wdst4xg8': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'xbzkrl9c': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'vvrgfsin': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'fq4hh9yc': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    '47grp4uh': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'ga919e9e': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '2xal73i1': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    '3hcx2o5v': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'kqqqq746': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'uyp0n0ip': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    '1rshyi87': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'qj7x5nsz': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '96u0ambf': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'liuqmwia': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'hrnu0a50': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'zilugbnv': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'tvj2iubo': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'loaets82': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'n87fv7hx': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    'zfv6m5fm': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    '3ofzqsv8': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '3ddu42qk': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    'crpokkq6': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'su96es4h': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    'jpq6hbex': {
      'en': '1',
      'kn': '',
      'ta': '',
    },
    '6acrx17p': {
      'en': '2',
      'kn': '',
      'ta': '',
    },
    'i0u8fkeb': {
      'en': '3',
      'kn': '',
      'ta': '',
    },
    '941j05xz': {
      'en': '4',
      'kn': '',
      'ta': '',
    },
    '22nnw0ic': {
      'en': '5',
      'kn': '',
      'ta': '',
    },
    'fm7zsjqr': {
      'en':
          'Please provide any additional comments or suggestions for the teacher:',
      'kn': '',
      'ta': '',
    },
    '8sk1ejtb': {
      'en': 'Submit',
      'kn': '',
      'ta': '',
    },
    'es5418xf': {
      'en': 'Submit',
      'kn': '',
      'ta': '',
    },
    'snjdtxvi': {
      'en': 'Feedback Form',
      'kn': '',
      'ta': '',
    },
    'ogahojw4': {
      'en': 'Home',
      'kn': '',
      'ta': '',
    },
  },
  // success
  {
    'ry4hg8xj': {
      'en': 'Congrats!',
      'kn': 'ಅಭಿನಂದನೆಗಳು!',
      'ta': 'வாழ்த்துக்கள்!',
    },
    'szr5nosz': {
      'en': 'Feedback submitted successfully.',
      'kn': 'ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಸಲ್ಲಿಸಲಾಗಿದೆ.',
      'ta': 'கருத்து வெற்றிகரமாக சமர்ப்பிக்கப்பட்டது.',
    },
    'k5i8ot0s': {
      'en': 'Submit Another Feedback',
      'kn': 'ಮತ್ತೊಂದು ಶಿಕ್ಷಕರ ಪ್ರತಿಕ್ರಿಯೆಯನ್ನು ಸಲ್ಲಿಸಿ',
      'ta': 'மற்றொரு ஆசிரியர் கருத்தைச் சமர்ப்பிக்கவும்',
    },
    '3iakd16d': {
      'en': 'New Student Submission',
      'kn': 'ಹೊಸ ವಿದ್ಯಾರ್ಥಿ ಸಲ್ಲಿಕೆ',
      'ta': 'புதிய மாணவர் சமர்ப்பிப்பு',
    },
    'nmtzrvjs': {
      'en': 'Home',
      'kn': 'ಮನೆ',
      'ta': 'வீடு',
    },
  },
  // Login
  {
    'aa441as9': {
      'en': 'Password',
      'kn': 'ಪಾಸ್ವರ್ಡ್',
      'ta': 'கடவுச்சொல்',
    },
    '5gcvu9th': {
      'en': 'Sign In',
      'kn': 'ಸೈನ್ ಇನ್ ಮಾಡಿ',
      'ta': 'உள்நுழையவும்',
    },
    'wwrby1he': {
      'en': 'Home',
      'kn': 'ಮನೆ',
      'ta': 'வீடு',
    },
  },
  // adminskill
  {
    'j5dt0qpk': {
      'en': 'Rate the following statements on a scale of 1-5:',
      'kn': 'ಕೆಳಗಿನ ಹೇಳಿಕೆಗಳನ್ನು 1-5 ಪ್ರಮಾಣದಲ್ಲಿ ರೇಟ್ ಮಾಡಿ:',
      'ta': 'பின்வரும் அறிக்கைகளை 1-5 என்ற அளவில் மதிப்பிடவும்:',
    },
    'tyiob45q': {
      'en': '\n(1 being Strongly Disagree and 5 being Strongly Agree)',
      'kn': '(1 ಬಲವಾಗಿ ಒಪ್ಪದಿರುವುದು ಮತ್ತು 5 ಬಲವಾಗಿ ಒಪ್ಪುವುದು)',
      'ta': '(1 கடுமையாக உடன்படவில்லை மற்றும் 5 கடுமையாக உடன்படுகிறது)',
    },
    'mx9w0vzy': {
      'en': 'Please select the staff',
      'kn': 'ದಯವಿಟ್ಟು ಸಿಬ್ಬಂದಿಯನ್ನು ಆಯ್ಕೆ ಮಾಡಿ',
      'ta': 'பணியாளர்களைத் தேர்ந்தெடுக்கவும்',
    },
    '160ygq7b': {
      'en': 'Search for an item...',
      'kn': 'ಐಟಂಗಾಗಿ ಹುಡುಕಿ...',
      'ta': 'ஒரு பொருளைத் தேடு...',
    },
    'y5u0uskh': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'h8t7dv8o': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'rc2foxwv': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    '67rpf3ax': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'vg0acsxq': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'iouvsqgj': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    '050y91sm': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'ya4ewawn': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'd5zshv54': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'qucrb780': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'o3h51bek': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'cex9h42j': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'hdo9s8tk': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'hvamhlc3': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    '94nubrkq': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'de2s24gk': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'r74g99er': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'wd6x7wtz': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'guvhzwr0': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'puqf7c32': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'xblsqwnc': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    '71ip3z22': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    '748qd4j3': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    '5791hlfu': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'nl4zvp2i': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'bp9knvjz': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    '3l6xbmir': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    '6uq0tebu': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'nv3nr6xg': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'n90zexkk': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'm2sfilqc': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    '8v9fziz3': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'qhabtn74': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'f6yqm5ca': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'ttp68wre': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'n8b6i39p': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'mih5dac5': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'tz6ud71q': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'fzsn1nrd': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    's2hx8pfg': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'tb3unyme': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'tvkxoq1y': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'u6xhb71s': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'cs1dxqju': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    '2l6m35er': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    's80kb4m6': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'lh1zzzqg': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'zyr3lcda': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'xj2p6wtp': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'pwtss3n7': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'ejlf3uod': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'qjlfasnh': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'm3walmqt': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    '65chfwxq': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'lkvkwl1l': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    '7n7idp09': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'x2jsc4nv': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'gzjc3pa4': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'qwjjn95m': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'emimom3e': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'a6qwmkyg': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'caamynwo': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    '2ja4vwvg': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'kuprdvmm': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    't924yq1t': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    's5gglp3o': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'yc2x4nz7': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'oef9uyzp': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'glpcrkya': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    '3rqeuggs': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'j4k8pxec': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'w10hhor8': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'rxy2gnwj': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'g517e7n7': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'b8rqfhl2': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'om01dofo': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'ff59l1hd': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    '3u9zx0vd': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    '3pelql0z': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    '3c5bn64u': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'gohhi6jn': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    '0caxi11g': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'olyqmq6f': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'wxo9ntqi': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    'g2kvgjv5': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'xuiex2y2': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'os5r9i8z': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'skt6rfxy': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'ny62gr4j': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'yx9o3t37': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'sbgze6j6': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    '3utgivib': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'hg4uvbuo': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'uvld82ox': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'za9vhxk1': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    '8lw0zr9d': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    '1hk52msi': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'dajnb48o': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    '7qb1eml3': {
      'en': 'Hello World',
      'kn': '',
      'ta': '',
    },
    'oxmu7lu2': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'rji7uipr': {
      'en': '1',
      'kn': '1',
      'ta': '1',
    },
    'beghxt5e': {
      'en': '2',
      'kn': '2',
      'ta': '2',
    },
    'zwq1l5tb': {
      'en': '3',
      'kn': '3',
      'ta': '3',
    },
    'frctiir8': {
      'en': '4',
      'kn': '4',
      'ta': '4',
    },
    'cnc2z94m': {
      'en': '5',
      'kn': '5',
      'ta': '5',
    },
    '5gpvcov9': {
      'en':
          'Please provide any additional comments or suggestions for the teacher:',
      'kn':
          'ದಯವಿಟ್ಟು ಶಿಕ್ಷಕರಿಗೆ ಯಾವುದೇ ಹೆಚ್ಚುವರಿ ಕಾಮೆಂಟ್‌ಗಳು ಅಥವಾ ಸಲಹೆಗಳನ್ನು ಒದಗಿಸಿ:',
      'ta':
          'ஆசிரியருக்கு ஏதேனும் கூடுதல் கருத்துகள் அல்லது பரிந்துரைகளை வழங்கவும்:',
    },
    '7jnygcy0': {
      'en': 'Submit',
      'kn': 'ಸಲ್ಲಿಸಿ',
      'ta': 'சமர்ப்பிக்கவும்',
    },
    'fnmzt6a9': {
      'en': 'Feedback Form',
      'kn': 'ಪ್ರತಿಕ್ರಿಯೆ ಫಾರ್ಮ್',
      'ta': 'கருத்து படிவம்',
    },
    'n1450t7r': {
      'en': 'Home',
      'kn': 'ಮನೆ',
      'ta': 'வீடு',
    },
  },
  // questions
  {
    '0w5o0u34': {
      'en': '. ',
      'kn': '.',
      'ta': '.',
    },
  },
  // Miscellaneous
  {
    '13szgnyo': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'w0f1svcd': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'uawu1dsv': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'b7kp9c5n': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'q9sjplke': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '8uedoolt': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'qm7lq9hn': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '0gpzx854': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '6xojatrp': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'ydhjh0wm': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'op16kl4g': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '6veoe2hn': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'asc7ve17': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '5i6ib1at': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'n7rbmjut': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '4ozjneq3': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '2u499yqj': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'qflv35ld': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'gooyyvp2': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'oqkn32iz': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '1v637abv': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'qypdazyv': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'oscwc1jm': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    '0ldzvpqg': {
      'en': '',
      'kn': '',
      'ta': '',
    },
    'mvkfdkhq': {
      'en': '',
      'kn': '',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
