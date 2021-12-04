import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/init/navigation/service/navigation_service.dart';

abstract class BaseViewModel {
  var firabaseAuth = FirebaseAuth.instance;
  User? auth = FirebaseAuth.instance.currentUser;
  BuildContext? context;
  NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
