import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
part 'forgotpassword_viewmodel.g.dart';

class ForgotPasswordViewModel = _ForgotPasswordViewModelBase
    with _$ForgotPasswordViewModel;

abstract class _ForgotPasswordViewModelBase with Store, BaseViewModel {
  @observable
  bool isLoading = false;

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}

  @action
  changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<bool> resetLink(
      TextEditingController editingController, BuildContext context) async {
    try {
      changeLoading();
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: editingController.text);
      changeLoading();
      editingController.clear();
      return true;
    } catch (e) {
      changeLoading();
      return false;
    }
  }

  @action
  Future<void> goLogin() async {
    await navigation.navigateToPageClear(path: NavigationConstants.login);
  }
}
