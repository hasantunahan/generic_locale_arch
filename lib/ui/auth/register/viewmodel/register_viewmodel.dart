import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
part 'register_viewmodel.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store, BaseViewModel {
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
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: e.text, password: p1.text);
        goHome();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          log('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          log('The account already exists for that email.');
        }
      } catch (e) {
        log(e.toString());
      }
    }
    e.clear();
    p1.clear();
    p2.clear();
  }

  @action
  Future<void> goLogin() async {
    await navigation.navigateToPageClear(path: NavigationConstants.login);
  }

  Future<void> goHome() async {
    await navigation.navigateToPage(path: NavigationConstants.homenav);
  }
}
