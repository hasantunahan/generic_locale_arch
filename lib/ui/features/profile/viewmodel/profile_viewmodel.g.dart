// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileViewModel on _ProfileViewModelBase, Store {
  final _$answeredUserAtom = Atom(name: '_ProfileViewModelBase.answeredUser');

  @override
  List<UserDTO> get answeredUser {
    _$answeredUserAtom.reportRead();
    return super.answeredUser;
  }

  @override
  set answeredUser(List<UserDTO> value) {
    _$answeredUserAtom.reportWrite(value, super.answeredUser, () {
      super.answeredUser = value;
    });
  }

  final _$myAnonsAtom = Atom(name: '_ProfileViewModelBase.myAnons');

  @override
  List<MyAnons> get myAnons {
    _$myAnonsAtom.reportRead();
    return super.myAnons;
  }

  @override
  set myAnons(List<MyAnons> value) {
    _$myAnonsAtom.reportWrite(value, super.myAnons, () {
      super.myAnons = value;
    });
  }

  final _$_ProfileViewModelBaseActionController =
      ActionController(name: '_ProfileViewModelBase');

  @override
  dynamic setDummyData() {
    final _$actionInfo = _$_ProfileViewModelBaseActionController.startAction(
        name: '_ProfileViewModelBase.setDummyData');
    try {
      return super.setDummyData();
    } finally {
      _$_ProfileViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
answeredUser: ${answeredUser},
myAnons: ${myAnons}
    ''';
  }
}
