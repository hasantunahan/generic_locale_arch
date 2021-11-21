import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
part 'home_navigation_viewmodel.g.dart';

class HomeNavViewModel = _HomeNavViewModelBase with _$HomeNavViewModel;

abstract class _HomeNavViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}
}
