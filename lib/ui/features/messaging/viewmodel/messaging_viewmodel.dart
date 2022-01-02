import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
part 'messaging_viewmodel.g.dart';

class MessagingViewModel = _MessagingViewModelBase with _$MessagingViewModel;

abstract class _MessagingViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {}
}
