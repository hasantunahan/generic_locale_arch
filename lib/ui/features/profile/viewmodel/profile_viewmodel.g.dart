// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileViewModel on _ProfileViewModelBase, Store {
  final _$myAtom = Atom(name: '_ProfileViewModelBase.my');

  @override
  FirebaseUser get my {
    _$myAtom.reportRead();
    return super.my;
  }

  @override
  set my(FirebaseUser value) {
    _$myAtom.reportWrite(value, super.my, () {
      super.my = value;
    });
  }

  final _$userAtom = Atom(name: '_ProfileViewModelBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$nameAtom = Atom(name: '_ProfileViewModelBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

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

  final _$goEditPageAsyncAction =
      AsyncAction('_ProfileViewModelBase.goEditPage');

  @override
  Future goEditPage() {
    return _$goEditPageAsyncAction.run(() => super.goEditPage());
  }

  final _$_ProfileViewModelBaseActionController =
      ActionController(name: '_ProfileViewModelBase');

  @override
  dynamic setNewName() {
    final _$actionInfo = _$_ProfileViewModelBaseActionController.startAction(
        name: '_ProfileViewModelBase.setNewName');
    try {
      return super.setNewName();
    } finally {
      _$_ProfileViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

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
my: ${my},
user: ${user},
name: ${name},
answeredUser: ${answeredUser},
myAnons: ${myAnons}
    ''';
  }
}
