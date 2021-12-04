import 'package:flutter/material.dart';
import 'package:with_retro_firebase/ui/auth/forgotpassword/view/forgotpassword_view.dart';
import 'package:with_retro_firebase/ui/auth/login/view/login_view.dart';
import 'package:with_retro_firebase/ui/auth/register/view/registerview.dart';
import 'package:with_retro_firebase/ui/auth/verify/view/verify_view.dart';
import 'package:with_retro_firebase/ui/features/home_nav/view/home_navigation_view.dart';
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
        return _normalNavigate(LoginView());
      case NavigationConstants.homenav:
        return _normalNavigate(const HomeNavView());
      case NavigationConstants.register:
        return _normalNavigate(RegisterView());
      case NavigationConstants.verify:
        return _normalNavigate(const VerifyView());
      case NavigationConstants.forgotpassword:
        return _normalNavigate(const ForgotPasswordView());
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  /* _normalNavigate(Widget widget) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
      return widget;
    } /* ,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) =>
          scaleTransition(animation, child), */
        );
  } */

  _normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    );
  }

  static ScaleTransition scaleTransition(
      Animation<double> animation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        ),
      ),
      child: child,
    );
  }
}
