import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/_product/constants/firebase/collection.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/_product/model/user/user_dto.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/components/snackbar/snackbar.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import 'package:with_retro_firebase/locator.dart';
part 'register_viewmodel.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store, BaseViewModel {
  var my = getIt<FirebaseUser>();

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
      TextEditingController p2, TextEditingController user) async {
    if (p1.text != p2.text) {
      DefaultSnackBar().getSnackbar(context, 'Password not match', Colors.red);
    } else {
      changeLoading();
      try {
        await my
            .getAuth()
            .createUserWithEmailAndPassword(email: e.text, password: p1.text);
        await my.getUser()!.updatePhotoURL(
            "https://firebasestorage.googleapis.com/v0/b/anonsmedia-7c592.appspot.com/o/default%2Favatar.png?alt=media&token=81f0f7a5-b839-4f49-a6d9-f6d252f7a513");
        await my.getUser()!.updateDisplayName(user.text);
        auth = my.getUser();
        await FirebaseFirestore.instance
            .collection(FirebaseCollections.user)
            .add(UserDTO(
                    email: auth!.email,
                    name: auth!.displayName,
                    url: auth!.photoURL)
                .toJson());
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
          DefaultSnackBar().getSnackbar(
              context, 'The password provided is too weak.', Colors.red);
        } else if (e.code == 'email-already-in-use') {
          changeLoading();
          DefaultSnackBar().getSnackbar(context,
              'The account already exists for that email.', Colors.red);
        }
      } catch (e) {
        DefaultSnackBar().getSnackbar(context, e.toString(), Colors.red);
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
