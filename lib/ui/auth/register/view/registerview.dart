import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/components/container/bottom_container.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/auth/register/viewmodel/register_viewmodel.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class RegisterView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordControllerAgain = TextEditingController();
  RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<RegisterViewModel>(
        viewModel: RegisterViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, RegisterViewModel viewModel) =>
            renderBody(context, theme, viewModel));
  }

  renderBody(BuildContext context, ThemeData theme, value) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        toolbarHeight: 0,
        elevation: 0,
      ),
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
            flex: 15,
            child: renderBottomContainer(theme, context, value),
          )
        ],
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
            S.of(context).register_info_text,
            minFontSize: 5,
          )
        ],
      ),
    );
  }

  renderBottomContainer(
      ThemeData theme, BuildContext context, RegisterViewModel value) {
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
                S.of(context).signup,
                style: theme.textTheme.headline6,
              ),
              const SizedBox(height: 10),
              renderEmailTextField(context, theme),
              const SizedBox(height: 10),
              renderPasswordTextField(context, theme),
              const SizedBox(height: 10),
              renderPasswordTextFieldAgain(context, theme),
              const SizedBox(height: 10),
              renderRegisterButton(theme, context, value),
              const SizedBox(height: 20),
              renderActionsButtons(context, theme, value)
            ],
          ),
        ),
      ),
    );
  }

  renderActionsButtons(
      BuildContext context, ThemeData theme, RegisterViewModel value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DefaultText(onPress: () => value.goLogin(), data: S.of(context).login)
      ],
    );
  }

  renderRegisterButton(
      ThemeData theme, BuildContext context, RegisterViewModel value) {
    return DefaultButtonWithStyle(
      buttonColor: theme.colorScheme.secondary,
      textColor: Colors.white,
      text: S.of(context).signup.toUpperCase(),
      onPressed: () => value.register(
          emailController, passwordController, passwordControllerAgain),
    );
  }

  renderPasswordTextField(BuildContext context, ThemeData theme) {
    return DefaultTextField(
      controller: passwordController,
      secure: true,
      icon: Icons.lock,
      hintText: S.of(context).enter_password,
      theme: theme,
    );
  }

  renderPasswordTextFieldAgain(BuildContext context, ThemeData theme) {
    return DefaultTextField(
      controller: passwordControllerAgain,
      secure: true,
      icon: Icons.lock,
      hintText: S.of(context).enter_password_again,
      theme: theme,
    );
  }

  renderEmailTextField(BuildContext context, ThemeData theme) {
    return DefaultTextField(
      controller: emailController,
      icon: Icons.email,
      hintText: S.of(context).enter_email,
      theme: theme,
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
