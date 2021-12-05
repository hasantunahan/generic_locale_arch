import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/components/snackbar/snackbar.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  @observable
  bool isLoading = false;

  @action
  changeLoading() {
    isLoading = !isLoading;
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {}

  @action
  Future login(TextEditingController controller,
      TextEditingController controller2) async {
    try {
      changeLoading();
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: controller.text, password: controller2.text);
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        if (user.emailVerified) {
          changeLoading();
          await navigation.navigateToPageClear(
              path: NavigationConstants.homenav);
        } else {
          changeLoading();
          await navigation.navigateToPage(path: NavigationConstants.verify);
        }
      } else {
        changeLoading();
        DefaultSnackBar().getSnackbar(context, "User not found", Colors.red);
      }
      log("message" + userCredential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        DefaultSnackBar()
            .getSnackbar(context, 'No user found for that email.', Colors.red);
      } else if (e.code == 'wrong-password') {
        DefaultSnackBar().getSnackbar(
            context, 'Wrong password provided for that user.', Colors.red);
      }
      changeLoading();
    }
    controller.clear();
    controller2.clear();
  }

  Future<void> goRegister() async {
    await navigation.navigateToPageClear(path: NavigationConstants.register);
  }

  @action
  Future<void> goForgotPassword() async {
    await navigation.navigateToPage(path: NavigationConstants.forgotpassword);
  }
}
