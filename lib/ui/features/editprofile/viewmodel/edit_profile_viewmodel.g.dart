// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditProfileViewModel on _EditProfileViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_EditProfileViewModelBase.isLoading');

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

  final _$imagePathAtom = Atom(name: '_EditProfileViewModelBase.imagePath');

  @override
  String get imagePath {
    _$imagePathAtom.reportRead();
    return super.imagePath;
  }

  @override
  set imagePath(String value) {
    _$imagePathAtom.reportWrite(value, super.imagePath, () {
      super.imagePath = value;
    });
  }

  final _$userAtom = Atom(name: '_EditProfileViewModelBase.user');

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

  final _$changeProfileAsyncAction =
      AsyncAction('_EditProfileViewModelBase.changeProfile');

  @override
  Future changeProfile(String photoURL, String name) {
    return _$changeProfileAsyncAction
        .run(() => super.changeProfile(photoURL, name));
  }

  final _$_EditProfileViewModelBaseActionController =
      ActionController(name: '_EditProfileViewModelBase');

  @override
  dynamic changeLoading() {
    final _$actionInfo = _$_EditProfileViewModelBaseActionController
        .startAction(name: '_EditProfileViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_EditProfileViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic takeAPhoto(XFile? file) {
    final _$actionInfo = _$_EditProfileViewModelBaseActionController
        .startAction(name: '_EditProfileViewModelBase.takeAPhoto');
    try {
      return super.takeAPhoto(file);
    } finally {
      _$_EditProfileViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
imagePath: ${imagePath},
user: ${user}
    ''';
  }
}
