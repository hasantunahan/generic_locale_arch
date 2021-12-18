// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterViewModel on _RegisterViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_RegisterViewModelBase.isLoading');

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

  final _$registerAsyncAction = AsyncAction('_RegisterViewModelBase.register');

  @override
  Future<void> register(TextEditingController e, TextEditingController p1,
      TextEditingController p2, TextEditingController user) {
    return _$registerAsyncAction.run(() => super.register(e, p1, p2, user));
  }

  final _$goLoginAsyncAction = AsyncAction('_RegisterViewModelBase.goLogin');

  @override
  Future<void> goLogin() {
    return _$goLoginAsyncAction.run(() => super.goLogin());
  }

  final _$_RegisterViewModelBaseActionController =
      ActionController(name: '_RegisterViewModelBase');

  @override
  dynamic changeLoading() {
    final _$actionInfo = _$_RegisterViewModelBaseActionController.startAction(
        name: '_RegisterViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_RegisterViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
