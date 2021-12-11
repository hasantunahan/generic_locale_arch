// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  final _$nearListAtom = Atom(name: '_HomeViewModelBase.nearList');

  @override
  List<UserDTO> get nearList {
    _$nearListAtom.reportRead();
    return super.nearList;
  }

  @override
  set nearList(List<UserDTO> value) {
    _$nearListAtom.reportWrite(value, super.nearList, () {
      super.nearList = value;
    });
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  dynamic setDummy() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.setDummy');
    try {
      return super.setDummy();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nearList: ${nearList}
    ''';
  }
}
