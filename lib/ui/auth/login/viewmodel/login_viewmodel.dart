import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {}

  @action
  Future login(TextEditingController controller,
      TextEditingController controller2) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: controller.text, password: controller2.text);
      log("message" + userCredential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        log('Wrong password provided for that user.');
      }
    }
    log(FirebaseAuth.instance.currentUser.toString());
    log("tamam");
    controller.clear();
    controller2.clear();
  }

  Future<void> goRegister() async {
    await navigation.navigateToPageClear(path: NavigationConstants.register);
  }
}
