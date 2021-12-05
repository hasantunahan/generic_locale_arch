import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
part 'register_viewmodel.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store, BaseViewModel {
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
  Future<void> register(TextEditingController e, TextEditingController p1,
      TextEditingController p2) async {
    if (p1.text != p2.text) {
      log("password not match");
    } else {
      changeLoading();
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: e.text, password: p1.text);
        auth = FirebaseAuth.instance.currentUser;
        if (auth!.emailVerified) {
          changeLoading();
          goHome();
        } else {
          await auth!.sendEmailVerification();
          changeLoading();
          goVerify();
        }
        e.clear();
        p1.clear();
        p2.clear();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          changeLoading();
          log('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          changeLoading();
          log('The account already exists for that email.');
        }
      } catch (e) {
        log(e.toString());
      }
    }
  }

  @action
  Future<void> goLogin() async {
    await navigation.navigateToPageClear(path: NavigationConstants.login);
  }

  Future<void> goHome() async {
    await navigation.navigateToPage(path: NavigationConstants.homenav);
  }

  Future<void> goVerify() async {
    await navigation.navigateToPage(path: NavigationConstants.verify);
  }
}
