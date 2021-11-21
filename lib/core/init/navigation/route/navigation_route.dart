import 'package:flutter/material.dart';
import 'package:with_retro_firebase/ui/auth/login/view/login_view.dart';
import 'package:with_retro_firebase/ui/intro/intro_view.dart';
import '../../../base/error/page/not_found_page.dart';
import '../../../constant/navigation/navigation_contant.dart';
import '../../../../ui/splash/view/splash_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.def:
        return _normalNavigate(const SplashView());
      case NavigationConstants.intro:
        return _normalNavigate(const IntroView());
      case NavigationConstants.login:
        return _normalNavigate(const LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  _normalNavigate(Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return widget;
      },
    );
  }
}
