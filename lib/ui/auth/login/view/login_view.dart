import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/container/bottom_container.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/auth/login/viewmodel/login_viewmodel.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class LoginView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) {},
        onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
            renderBody(context, theme));
  }

  renderBody(BuildContext context, ThemeData theme) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: renderTopview(context),
            ),
            Expanded(flex: 8, child: renderPhoneImage(context)),
            Expanded(
              flex: 10,
              child: renderBottomContainer(theme, context),
            )
          ],
        ),
      ),
    );
  }

  renderTopview(BuildContext context) {
    return Padding(
      padding: context.paddingMediumHorizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset('logo_text_black'.toImagePng)),
          AutoSizeText(
            S.of(context).login_email_infotext,
            minFontSize: 5,
          )
        ],
      ),
    );
  }

  renderBottomContainer(ThemeData theme, BuildContext context) {
    return BottomContainer(
      containerColor: theme.colorScheme.onPrimary,
      width: context.width,
      widget: SingleChildScrollView(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).login,
                style: theme.textTheme.headline6,
              ),
              const SizedBox(height: 10),
              TextField(
                style: TextStyle(color: theme.colorScheme.primaryVariant),
                controller: emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: theme.colorScheme.secondary,
                    ),
                    hintText: S.of(context).enter_email,
                    hintStyle: theme.textTheme.bodyText1!
                        .copyWith(color: theme.colorScheme.onSurface)),
              ),
              const SizedBox(height: 10),
              TextField(
                style: TextStyle(color: theme.colorScheme.primaryVariant),
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: theme.colorScheme.secondary,
                    ),
                    hintText: S.of(context).enter_password,
                    hintStyle: theme.textTheme.bodyText1!
                        .copyWith(color: theme.colorScheme.onSurface)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  renderPhoneImage(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        padding: context.paddingMediumHorizontal,
        transform: Matrix4.translationValues(0, context.height * .09, 0),
        child: Image.asset('login_phone'.toImagePng));
  }
}
