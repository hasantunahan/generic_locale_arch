import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/_product/model/user/user_dto.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/locator.dart';
import 'package:with_retro_firebase/ui/features/chat/viewmodel/chat_view_model.dart';
import 'package:with_retro_firebase/ui/splash/model/user.dart';
part 'settings_viewmodel.g.dart';

class SettingsViewModel = _SettingsViewModelBase with _$SettingsViewModel;

abstract class _SettingsViewModelBase with Store, BaseViewModel {
  var chatViewModel = getIt<ChatViewModel>();

  @action
  test() {
    log("test");
    chatViewModel.setDummy();
  }

  @observable
  UserDTO user = UserDTO();

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {
    user = UserDTO(
        email: "hasantunahan12345@gmail.com",
        id: 1,
        name: "Hasan Tunahan",
        url: "https://tashteam.com/images/sero.png");
  }
}
