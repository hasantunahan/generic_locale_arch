import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
part 'verify_viewmodel.g.dart';

class VerifyViewModel = _VerifyViewModelBase with _$VerifyViewModel;

abstract class _VerifyViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}

  @action
  Future<void> sendAgain() async {
    try {
      await auth!.sendEmailVerification();
      log("gönderildi");
    } catch (e) {
      log("gönderilemedi");
    }
  }

  @action
  Future<void> verifyControl() async {
    await FirebaseAuth.instance.currentUser!.reload();
    if (FirebaseAuth.instance.currentUser!.emailVerified) {
      await navigation.navigateToPageClear(path: NavigationConstants.homenav);
    } else {
      log("not verified");
    }
  }

  @action
  Future<void> goLoginAgain() async {
    FirebaseAuth.instance.signOut();
    await navigation.navigateToPageClear(path: NavigationConstants.login);
  }
}
