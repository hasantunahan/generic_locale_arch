import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/components/snackbar/snackbar.dart';
import 'package:with_retro_firebase/locator.dart';
import 'package:with_retro_firebase/ui/features/home_nav/viewmodel/home_navigation_viewmodel.dart';
import 'package:with_retro_firebase/ui/features/profile/viewmodel/profile_viewmodel.dart';
part 'edit_profile_viewmodel.g.dart';

class EditProfileViewModel = _EditProfileViewModelBase
    with _$EditProfileViewModel;

abstract class _EditProfileViewModelBase with Store, BaseViewModel {
  var profileView = getIt<ProfileViewModel>();
  var nav = getIt<HomeNavViewModel>();
  ProfileViewModel profileViewModel = ProfileViewModel();

  @action
  changeProfile(String photoURL, String name) async {
    try {
      await FirebaseUser.instance.getUser()!.updateDisplayName(name);
      DefaultSnackBar().getSnackbar(context, 'Başarılı', Colors.greenAccent);
    } catch (e) {
      log("başarızsız");
    }
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}
}
