import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:package_info/package_info.dart';
import 'package:with_retro_firebase/_product/model/user/user_dto.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/cache/cache_constant.dart';
import 'package:with_retro_firebase/core/constant/enum/theme/enum.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import 'package:with_retro_firebase/core/init/cache/cache_manager.dart';
import 'package:with_retro_firebase/core/init/theme/theme_change_provider.dart';
import 'package:with_retro_firebase/locator.dart';
import 'package:with_retro_firebase/ui/features/chat/viewmodel/chat_view_model.dart';
import 'package:with_retro_firebase/ui/splash/model/user.dart';
import 'package:provider/src/provider.dart';
import '../../../../core/extension/theme/theme_extension.dart';

part 'settings_viewmodel.g.dart';

class SettingsViewModel = _SettingsViewModelBase with _$SettingsViewModel;

abstract class _SettingsViewModelBase with Store, BaseViewModel {
  var chatViewModel = getIt<ChatViewModel>();
  var themeManager = CacheManager<String>("setting");

  @observable
  String version = '';

  @observable
  bool theme = false;

  @action
  changeTheme(BuildContext context, isDark) {
    if (theme) {
      themeManager.putItem(Cacheconstant.theme, Themes.light.rawValue).then(
          (value) => {
                context
                    .read<ThemeProvider>()
                    .toggleTheme(Themes.light.rawValue),
                theme = false
              });
    } else {
      themeManager.putItem(Cacheconstant.theme, Themes.dark.rawValue).then(
          (value) => {
                context.read<ThemeProvider>().toggleTheme(Themes.dark.rawValue),
                theme = true
              });
    }
  }

  @action
  Future getPackagesInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version = packageInfo.version;
  }

  @action
  test() {
    log("test");
    chatViewModel.setDummy();
  }

  @action
  logout() async {
    await FirebaseAuth.instance.signOut().then((value) =>
        navigation.navigateToPageClear(path: NavigationConstants.login));
  }

  @action
  goPageWithoutArguments(String? name) async {
    await navigation.navigateToPage(path: name);
  }

  @action
  goPageWithArguments(String? name, Object? body) async {
    await navigation.navigateToPage(path: name, data: body);
  }

  @observable
  UserDTO user = UserDTO();

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {
    themeManager.init().then((value) {
      themeManager.getItem(Cacheconstant.theme) == "dark"
          ? theme = true
          : theme = false;
    });
    await getPackagesInfo();
    user = UserDTO(
        email: "hasantunahan12345@gmail.com",
        id: 1,
        name: "Hasan Tunahan",
        url: "https://tashteam.com/images/sero.png");
  }
}
