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

  /// `Friends`
  String get friend {
    return Intl.message(
      'Friends',
      name: 'friend',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get like {
    return Intl.message(
      'Like',
      name: 'like',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editprofile {
    return Intl.message(
      'Edit Profile',
      name: 'editprofile',
      desc: '',
      args: [],
    );
  }

  /// `Responders to their announcements`
  String get responders {
    return Intl.message(
      'Responders to their announcements',
      name: 'responders',
      desc: '',
      args: [],
    );
  }

  /// `My Anons`
  String get myanons {
    return Intl.message(
      'My Anons',
      name: 'myanons',
      desc: '',
      args: [],
    );
  }

  /// `New Anons`
  String get newanons {
    return Intl.message(
      'New Anons',
      name: 'newanons',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `Search in chat`
  String get chatsearch {
    return Intl.message(
      'Search in chat',
      name: 'chatsearch',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme`
  String get changetheme {
    return Intl.message(
      'Change Theme',
      name: 'changetheme',
      desc: '',
      args: [],
    );
  }

  /// `Evaluate the application`
  String get appevaluate {
    return Intl.message(
      'Evaluate the application',
      name: 'appevaluate',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Notification Settings`
  String get notificationSettings {
    return Intl.message(
      'Notification Settings',
      name: 'notificationSettings',
      desc: '',
      args: [],
    );
  }

  /// `To Inform`
  String get aboutme {
    return Intl.message(
      'To Inform',
      name: 'aboutme',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Friquently Asked Questions`
  String get frequentlyquestion {
    return Intl.message(
      'Friquently Asked Questions',
      name: 'frequentlyquestion',
      desc: '',
      args: [],
    );
  }

  /// `Issue an Error`
  String get issue {
    return Intl.message(
      'Issue an Error',
      name: 'issue',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacypolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacypolicy',
      desc: '',
      args: [],
    );
  }

  /// `User Agrement`
  String get useraggrement {
    return Intl.message(
      'User Agrement',
      name: 'useraggrement',
      desc: '',
      args: [],
    );
  }

  /// `Buy Premium`
  String get getPremium {
    return Intl.message(
      'Buy Premium',
      name: 'getPremium',
      desc: '',
      args: [],
    );
  }

  /// `Personal Settings`
  String get personalSettings {
    return Intl.message(
      'Personal Settings',
      name: 'personalSettings',
      desc: '',
      args: [],
    );
  }

  /// `Profile Settings`
  String get profileSettings {
    return Intl.message(
      'Profile Settings',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `App Settings`
  String get appSettings {
    return Intl.message(
      'App Settings',
      name: 'appSettings',
      desc: '',
      args: [],
    );
  }

  /// `Language Settings`
  String get languageSettings {
    return Intl.message(
      'Language Settings',
      name: 'languageSettings',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Active Language`
  String get activelanguage {
    return Intl.message(
      'Active Language',
      name: 'activelanguage',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure logout app?`
  String get aresurelogout {
    return Intl.message(
      'Are you sure logout app?',
      name: 'aresurelogout',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get iptal {
    return Intl.message(
      'Cancel',
      name: 'iptal',
      desc: '',
      args: [],
    );
  }

  /// `Enter username`
  String get enterusername {
    return Intl.message(
      'Enter username',
      name: 'enterusername',
      desc: '',
      args: [],
    );
  }

  /// `Username cannot be blank`
  String get user_validate_empty {
    return Intl.message(
      'Username cannot be blank',
      name: 'user_validate_empty',
      desc: '',
      args: [],
    );
  }

  /// `Username must be at least 2 characters!`
  String get user_validate_lenght {
    return Intl.message(
      'Username must be at least 2 characters!',
      name: 'user_validate_lenght',
      desc: '',
      args: [],
    );
  }

  /// `Change profile image`
  String get changeprofileimage {
    return Intl.message(
      'Change profile image',
      name: 'changeprofileimage',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
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
