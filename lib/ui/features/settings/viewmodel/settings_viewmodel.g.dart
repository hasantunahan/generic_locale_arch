// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsViewModel on _SettingsViewModelBase, Store {
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

  final _$_SettingsViewModelBaseActionController =
      ActionController(name: '_SettingsViewModelBase');

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
user: ${user}
    ''';
  }
}
