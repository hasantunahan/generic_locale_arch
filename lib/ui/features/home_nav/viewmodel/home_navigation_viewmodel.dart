import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/ui/features/chat/view/chat_view.dart';
import 'package:with_retro_firebase/ui/features/home/view/home_view.dart';
import 'package:with_retro_firebase/ui/features/profile/view/profile_view.dart';
import 'package:with_retro_firebase/ui/features/settings/view/settings_view.dart';
part 'home_navigation_viewmodel.g.dart';

class HomeNavViewModel = _HomeNavViewModelBase with _$HomeNavViewModel;

abstract class _HomeNavViewModelBase with Store, BaseViewModel {
  @observable
  int currentindex = 0;

  @action
  setCurrentIndex(int index) => currentindex = index;

  @action
  Widget setPage(index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const ProfileView();
      case 3:
        return const ChatView();
      case 4:
        return const SettingsView();
      default:
        return const HomeView();
    }
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}
}
