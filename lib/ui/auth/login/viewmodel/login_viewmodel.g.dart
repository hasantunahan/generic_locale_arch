// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_LoginViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginViewModelBase.login');

  @override
  Future<dynamic> login(
      TextEditingController controller, TextEditingController controller2) {
    return _$loginAsyncAction.run(() => super.login(controller, controller2));
  }

  final _$goForgotPasswordAsyncAction =
      AsyncAction('_LoginViewModelBase.goForgotPassword');

  @override
  Future<void> goForgotPassword() {
    return _$goForgotPasswordAsyncAction.run(() => super.goForgotPassword());
  }

  final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase');

  @override
  dynamic changeLoading() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
