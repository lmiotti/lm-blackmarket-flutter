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

  /// `Flutter Target`
  String get appName {
    return Intl.message(
      'Flutter Target',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `This website uses cookies`
  String get cookiesTitle {
    return Intl.message(
      'This website uses cookies',
      name: 'cookiesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get cookiesAcceptCTA {
    return Intl.message(
      'Accept',
      name: 'cookiesAcceptCTA',
      desc: '',
      args: [],
    );
  }

  /// `We use cookies to personalise content and ads, to provide social media features and to analyse our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.`
  String get cookiesBody {
    return Intl.message(
      'We use cookies to personalise content and ads, to provide social media features and to analyse our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.',
      name: 'cookiesBody',
      desc: '',
      args: [],
    );
  }

  /// `No connection`
  String get noConnection {
    return Intl.message(
      'No connection',
      name: 'noConnection',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later, we are\nworking to fix the issue.`
  String get pleaseTryAgainLaterWeArenworkingToFixTheIssue {
    return Intl.message(
      'Please try again later, we are\nworking to fix the issue.',
      name: 'pleaseTryAgainLaterWeArenworkingToFixTheIssue',
      desc: '',
      args: [],
    );
  }

  /// `Sorry we didn't find any product`
  String get sorryWeDidntFindAnyProduct {
    return Intl.message(
      'Sorry we didn\'t find any product',
      name: 'sorryWeDidntFindAnyProduct',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailLabel {
    return Intl.message(
      'Email',
      name: 'emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Type your email`
  String get emailHint {
    return Intl.message(
      'Type your email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullNameLabel {
    return Intl.message(
      'Full Name',
      name: 'fullNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Type your full name`
  String get fullNameHint {
    return Intl.message(
      'Type your full name',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordLabel {
    return Intl.message(
      'Password',
      name: 'passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Type your password`
  String get passwordHint {
    return Intl.message(
      'Type your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signupButton {
    return Intl.message(
      'Sign up',
      name: 'signupButton',
      desc: '',
      args: [],
    );
  }

  /// `By signing up, you accept the`
  String get bySigningText {
    return Intl.message(
      'By signing up, you accept the',
      name: 'bySigningText',
      desc: '',
      args: [],
    );
  }

  /// `Data Policy `
  String get dataPolicyText {
    return Intl.message(
      'Data Policy ',
      name: 'dataPolicyText',
      desc: '',
      args: [],
    );
  }

  /// `and the `
  String get andTheText {
    return Intl.message(
      'and the ',
      name: 'andTheText',
      desc: '',
      args: [],
    );
  }

  /// `Cookies Policy.`
  String get cookiesPolicyText {
    return Intl.message(
      'Cookies Policy.',
      name: 'cookiesPolicyText',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAccountText {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccountText',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get loginText {
    return Intl.message(
      'Log in',
      name: 'loginText',
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
      Locale.fromSubtags(languageCode: 'es'),
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
