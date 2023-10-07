// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get TabBar1 {
    return Intl.message(
      'Home',
      name: 'TabBar1',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get TabBar2 {
    return Intl.message(
      'More',
      name: 'TabBar2',
      desc: '',
      args: [],
    );
  }

  /// `Sample Text 1`
  String get Sample1 {
    return Intl.message(
      'Sample Text 1',
      name: 'Sample1',
      desc: '',
      args: [],
    );
  }

  /// `Sample Text 2`
  String get Sample2 {
    return Intl.message(
      'Sample Text 2',
      name: 'Sample2',
      desc: '',
      args: [],
    );
  }

  /// `Sample Text 3`
  String get Sample3 {
    return Intl.message(
      'Sample Text 3',
      name: 'Sample3',
      desc: '',
      args: [],
    );
  }

  /// `This is App`
  String get HomeAppBar {
    return Intl.message(
      'This is App',
      name: 'HomeAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Top Likes`
  String get Likes {
    return Intl.message(
      'Top Likes',
      name: 'Likes',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get MoreAppBar {
    return Intl.message(
      'More',
      name: 'MoreAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get DarkMode {
    return Intl.message(
      'Dark Mode',
      name: 'DarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Arabic Language`
  String get ArabicLanguage {
    return Intl.message(
      'Arabic Language',
      name: 'ArabicLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Play this`
  String get PlayThis {
    return Intl.message(
      'Play this',
      name: 'PlayThis',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
