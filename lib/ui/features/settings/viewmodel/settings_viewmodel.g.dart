// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsViewModel on _SettingsViewModelBase, Store {
  final _$versionAtom = Atom(name: '_SettingsViewModelBase.version');

  @override
  String get version {
    _$versionAtom.reportRead();
    return super.version;
  }

  @override
  set version(String value) {
    _$versionAtom.reportWrite(value, super.version, () {
      super.version = value;
    });
  }

  final _$themeAtom = Atom(name: '_SettingsViewModelBase.theme');

  @override
  bool get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(bool value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$userAtom = Atom(name: '_SettingsViewModelBase.user');

  @override
  UserDTO get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserDTO value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$getPackagesInfoAsyncAction =
      AsyncAction('_SettingsViewModelBase.getPackagesInfo');

  @override
  Future<dynamic> getPackagesInfo() {
    return _$getPackagesInfoAsyncAction.run(() => super.getPackagesInfo());
  }

  final _$goPageWithoutArgumentsAsyncAction =
      AsyncAction('_SettingsViewModelBase.goPageWithoutArguments');

  @override
  Future goPageWithoutArguments(String? name) {
    return _$goPageWithoutArgumentsAsyncAction
        .run(() => super.goPageWithoutArguments(name));
  }

  final _$goPageWithArgumentsAsyncAction =
      AsyncAction('_SettingsViewModelBase.goPageWithArguments');

  @override
  Future goPageWithArguments(String? name, Object? body) {
    return _$goPageWithArgumentsAsyncAction
        .run(() => super.goPageWithArguments(name, body));
  }

  final _$_SettingsViewModelBaseActionController =
      ActionController(name: '_SettingsViewModelBase');

  @override
  dynamic changeTheme(BuildContext context, dynamic isDark) {
    final _$actionInfo = _$_SettingsViewModelBaseActionController.startAction(
        name: '_SettingsViewModelBase.changeTheme');
    try {
      return super.changeTheme(context, isDark);
    } finally {
      _$_SettingsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic test() {
    final _$actionInfo = _$_SettingsViewModelBaseActionController.startAction(
        name: '_SettingsViewModelBase.test');
    try {
      return super.test();
    } finally {
      _$_SettingsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
version: ${version},
theme: ${theme},
user: ${user}
    ''';
  }
}
