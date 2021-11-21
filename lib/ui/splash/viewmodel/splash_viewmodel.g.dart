// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashViewModel on _SplashViewModelBase, Store {
  final _$datalistAtom = Atom(name: '_SplashViewModelBase.datalist');

  @override
  List<User> get datalist {
    _$datalistAtom.reportRead();
    return super.datalist;
  }

  @override
  set datalist(List<User> value) {
    _$datalistAtom.reportWrite(value, super.datalist, () {
      super.datalist = value;
    });
  }

  final _$isSeenAtom = Atom(name: '_SplashViewModelBase.isSeen');

  @override
  bool get isSeen {
    _$isSeenAtom.reportRead();
    return super.isSeen;
  }

  @override
  set isSeen(bool value) {
    _$isSeenAtom.reportWrite(value, super.isSeen, () {
      super.isSeen = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_SplashViewModelBase.isLoading');

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

  final _$introSeenControlAsyncAction =
      AsyncAction('_SplashViewModelBase.introSeenControl');

  @override
  Future introSeenControl() {
    return _$introSeenControlAsyncAction.run(() => super.introSeenControl());
  }

  final _$fetchDataAsyncAction = AsyncAction('_SplashViewModelBase.fetchData');

  @override
  Future<dynamic> fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  final _$_SplashViewModelBaseActionController =
      ActionController(name: '_SplashViewModelBase');

  @override
  void changeIsLoading() {
    final _$actionInfo = _$_SplashViewModelBaseActionController.startAction(
        name: '_SplashViewModelBase.changeIsLoading');
    try {
      return super.changeIsLoading();
    } finally {
      _$_SplashViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
datalist: ${datalist},
isSeen: ${isSeen},
isLoading: ${isLoading}
    ''';
  }
}
