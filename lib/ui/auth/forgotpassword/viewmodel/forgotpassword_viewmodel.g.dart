// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgotpassword_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForgotPasswordViewModel on _ForgotPasswordViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_ForgotPasswordViewModelBase.isLoading');

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

  final _$resetLinkAsyncAction =
      AsyncAction('_ForgotPasswordViewModelBase.resetLink');

  @override
  Future<bool> resetLink(
      TextEditingController editingController, BuildContext context) {
    return _$resetLinkAsyncAction
        .run(() => super.resetLink(editingController, context));
  }

  final _$goLoginAsyncAction =
      AsyncAction('_ForgotPasswordViewModelBase.goLogin');

  @override
  Future<void> goLogin() {
    return _$goLoginAsyncAction.run(() => super.goLogin());
  }

  final _$_ForgotPasswordViewModelBaseActionController =
      ActionController(name: '_ForgotPasswordViewModelBase');

  @override
  dynamic changeLoading() {
    final _$actionInfo = _$_ForgotPasswordViewModelBaseActionController
        .startAction(name: '_ForgotPasswordViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_ForgotPasswordViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
