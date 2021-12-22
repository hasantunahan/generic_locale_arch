import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

  @observable
  bool isLoading = false;

  @observable
  String imagePath = '';

  @observable
  User user = FirebaseAuth.instance.currentUser!;

  @action
  changeLoading() => isLoading = !isLoading;

  @action
  takeAPhoto(XFile? file) {
    imagePath = file!.path;
    log(imagePath);
  }

  @action
  changeProfile(String photoURL, String name) async {
    changeLoading();
    try {
      await FirebaseUser.instance.getUser()!.updateDisplayName(name);
      File file = File(imagePath);
      await FirebaseStorage.instance
          .ref(
              '${FirebaseUser.instance.getUser()!.uid.toString()}/${FirebaseUser.instance.getUser()!.uid.toString()}.png')
          .putFile(file);
      var newURl = await FirebaseStorage.instance
          .ref(
              '${FirebaseUser.instance.getUser()!.uid.toString()}/${FirebaseUser.instance.getUser()!.uid.toString()}.png')
          .getDownloadURL();
      await FirebaseUser.instance.getUser()!.updatePhotoURL(newURl);
      changeLoading();
      DefaultSnackBar().getSnackbar(context, 'Başarılı', Colors.green);
    } catch (e) {
      log("başarızsız");
      changeLoading();
    }
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}
}
