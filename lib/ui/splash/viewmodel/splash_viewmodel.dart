import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/init/network/interface/api_client.dart';
import 'package:with_retro_firebase/core/init/network/response/response_model.dart';
import 'package:with_retro_firebase/ui/splash/model/user.dart';
part 'splash_viewmodel.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @observable
  List<User> datalist = <User>[];

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() => isLoading = !isLoading;

  @action
  Future fetchData() async {
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
