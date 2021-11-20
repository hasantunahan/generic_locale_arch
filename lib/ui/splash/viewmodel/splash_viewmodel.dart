import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/src/provider.dart';
import '../../../core/base/model/baseviewmodel.dart';
import '../../../core/constant/cache/cache_constant.dart';
import '../../../core/constant/enum/theme/enum.dart';
import '../../../core/init/cache/cache_manager.dart';
import '../../../core/init/network/interface/api_client.dart';
import '../../../core/init/network/response/response_model.dart';
import '../../../core/init/theme/theme_change_provider.dart';
import '../model/user.dart';
import '../../../core/extension/theme/theme_extension.dart';
part 'splash_viewmodel.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  var themeManager = CacheManager<String>("setting");
  @observable
  List<User> datalist = <User>[];

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
  Future fetchData() async {
    themeManager.init().then((value) => {themeControl()});
    changeIsLoading();
    await getUsers();
    changeIsLoading();
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {
    await fetchData();
  }

  Future<void> getUsers() async {
    final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    ResponseData<List<User>> res = await client.getUsers();
    datalist.addAll(res.data!);
  }
}
