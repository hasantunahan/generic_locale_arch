// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_navigation_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeNavViewModel on _HomeNavViewModelBase, Store {
  final _$sheetAtom = Atom(name: '_HomeNavViewModelBase.sheet');

  @override
  bool get sheet {
    _$sheetAtom.reportRead();
    return super.sheet;
  }

  @override
  set sheet(bool value) {
    _$sheetAtom.reportWrite(value, super.sheet, () {
      super.sheet = value;
    });
  }

  final _$currentindexAtom = Atom(name: '_HomeNavViewModelBase.currentindex');

  @override
  int get currentindex {
    _$currentindexAtom.reportRead();
    return super.currentindex;
  }

  @override
  set currentindex(int value) {
    _$currentindexAtom.reportWrite(value, super.currentindex, () {
      super.currentindex = value;
    });
  }

  final _$_HomeNavViewModelBaseActionController =
      ActionController(name: '_HomeNavViewModelBase');

  @override
  dynamic changeSheet() {
    final _$actionInfo = _$_HomeNavViewModelBaseActionController.startAction(
        name: '_HomeNavViewModelBase.changeSheet');
    try {
      return super.changeSheet();
    } finally {
      _$_HomeNavViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCurrentIndex(int index) {
    final _$actionInfo = _$_HomeNavViewModelBaseActionController.startAction(
        name: '_HomeNavViewModelBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$_HomeNavViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic showSendAnons(GlobalKey<ScaffoldState> scaffoldKey) {
    final _$actionInfo = _$_HomeNavViewModelBaseActionController.startAction(
        name: '_HomeNavViewModelBase.showSendAnons');
    try {
      return super.showSendAnons(scaffoldKey);
    } finally {
      _$_HomeNavViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget setPage(dynamic index) {
    final _$actionInfo = _$_HomeNavViewModelBaseActionController.startAction(
        name: '_HomeNavViewModelBase.setPage');
    try {
      return super.setPage(index);
    } finally {
      _$_HomeNavViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sheet: ${sheet},
currentindex: ${currentindex}
    ''';
  }
}
