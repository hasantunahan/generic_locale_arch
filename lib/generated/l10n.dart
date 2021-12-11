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

  /// `Anons`
  String get app_name {
    return Intl.message(
      'Anons',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard`
  String get intro1Body {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard',
      name: 'intro1Body',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's `
  String get intro2Body {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s ',
      name: 'intro2Body',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem  has been  industry's standard`
  String get intro3Body {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem  has been  industry\'s standard',
      name: 'intro3Body',
      desc: '',
      args: [],
    );
  }

  /// `What is Anons?`
  String get what {
    return Intl.message(
      'What is Anons?',
      name: 'what',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip_intro {
    return Intl.message(
      'Skip',
      name: 'skip_intro',
      desc: '',
      args: [],
    );
  }

  /// `Login with email address`
  String get login_email_infotext {
    return Intl.message(
      'Login with email address',
      name: 'login_email_infotext',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Enter email address`
  String get enter_email {
    return Intl.message(
      'Enter email address',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enter_password {
    return Intl.message(
      'Enter password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signup {
    return Intl.message(
      'Sign Up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get register_info_text {
    return Intl.message(
      'Create new account',
      name: 'register_info_text',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password again`
  String get enter_password_again {
    return Intl.message(
      'Repeat password again',
      name: 'enter_password_again',
      desc: '',
      args: [],
    );
  }

  /// `Email Verification`
  String get email_verify {
    return Intl.message(
      'Email Verification',
      name: 'email_verify',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a verification link to your email address so you can log in. Please verify email.`
  String get verify_info_textarea {
    return Intl.message(
      'We have sent a verification link to your email address so you can log in. Please verify email.',
      name: 'verify_info_textarea',
      desc: '',
      args: [],
    );
  }

  /// `Didn't get your email?`
  String get didgetMail {
    return Intl.message(
      'Didn\'t get your email?',
      name: 'didgetMail',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Send again`
  String get send_again {
    return Intl.message(
      'Send again',
      name: 'send_again',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get check_email {
    return Intl.message(
      'Check your email',
      name: 'check_email',
      desc: '',
      args: [],
    );
  }

  /// `If you want to reset password, check your email address.`
  String get check_email_info {
    return Intl.message(
      'If you want to reset password, check your email address.',
      name: 'check_email_info',
      desc: '',
      args: [],
    );
  }

  /// `Open Email`
  String get open_email {
    return Intl.message(
      'Open Email',
      name: 'open_email',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get send_reset {
    return Intl.message(
      'Send Reset Link',
      name: 'send_reset',
      desc: '',
      args: [],
    );
  }

  /// `Go back login page`
  String get go_login {
    return Intl.message(
      'Go back login page',
      name: 'go_login',
      desc: '',
      args: [],
    );
  }

  /// `Password mustn't be blank`
  String get password_validate {
    return Intl.message(
      'Password mustn\'t be blank',
      name: 'password_validate',
      desc: '',
      args: [],
    );
  }

  /// `Email mustn't be blank`
  String get email_validate {
    return Intl.message(
      'Email mustn\'t be blank',
      name: 'email_validate',
      desc: '',
      args: [],
    );
  }

  /// `Passwords not match`
  String get password_match {
    return Intl.message(
      'Passwords not match',
      name: 'password_match',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters!`
  String get password_validate_lenght {
    return Intl.message(
      'Password must be at least 6 characters!',
      name: 'password_validate_lenght',
      desc: '',
      args: [],
    );
  }

  /// `I want to use another email`
  String get want_change_email {
    return Intl.message(
      'I want to use another email',
      name: 'want_change_email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid email!`
  String get email_validate_confirm {
    return Intl.message(
      'Please enter valid email!',
      name: 'email_validate_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Recent anons postings`
  String get anons_send_near_time {
    return Intl.message(
      'Recent anons postings',
      name: 'anons_send_near_time',
      desc: '',
      args: [],
    );
  }

  /// `Answer`
  String get answer_t {
    return Intl.message(
      'Answer',
      name: 'answer_t',
      desc: '',
      args: [],
    );
  }

  /// `answering`
  String get comments {
    return Intl.message(
      'answering',
      name: 'comments',
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
      Locale.fromSubtags(languageCode: 'tr'),
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
