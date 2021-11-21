import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/src/provider.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import '../../../core/base/model/baseviewmodel.dart';
import '../../../core/constant/cache/cache_constant.dart';
import '../../../core/constant/enum/theme/enum.dart';
import '../../../core/init/cache/cache_manager.dart';
import '../../../core/init/theme/theme_change_provider.dart';
import '../../../core/extension/theme/theme_extension.dart';
part 'splash_viewmodel.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  var themeManager = CacheManager<String>("setting");
  @observable
  bool isSeen = false;

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() => isLoading = !isLoading;

  themeControl() {
    var res = themeManager.getItem(Cacheconstant.theme);
    if (res == null) {
      log("message");
      context!.read<ThemeProvider>().toggleTheme(Themes.light.rawValue);
    } else {
      log("message res");
      context!.read<ThemeProvider>().toggleTheme(res.toString());
    }
  }

  Future<void> changeTheme() async {
    if (currentTheme.currentTheme == ThemeMode.dark) {
      themeManager.putItem(Cacheconstant.theme, Themes.light.rawValue).then(
          (value) => {
                context!
                    .read<ThemeProvider>()
                    .toggleTheme(Themes.light.rawValue)
              });
    } else {
      themeManager.putItem(Cacheconstant.theme, Themes.dark.rawValue).then(
          (value) => {
                context!.read<ThemeProvider>().toggleTheme(Themes.dark.rawValue)
              });
    }
  }

  @action
  introSeenControl() async {
    var seen = themeManager.getItem(Cacheconstant.intro);
    log(seen.toString() + "seen");
    if (seen == null) {
      isSeen = false;
      await navigation.navigateToPageClear(path: NavigationConstants.intro);
    } else {
      isSeen = true;
      if (FirebaseAuth.instance.currentUser == null) {
        await navigation.navigateToPageClear(path: NavigationConstants.login);
      } else {
        await navigation.navigateToPageClear(path: NavigationConstants.login);
      }
    }
  }

  @action
  Future fetchData() async {
    themeManager.init().then((value) => {themeControl()});
    Future.delayed(const Duration(milliseconds: 2500), () {
      introSeenControl();
    });
    /* changeIsLoading();
    await getUsers();
    changeIsLoading(); */
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {
    await fetchData();
  }
}
