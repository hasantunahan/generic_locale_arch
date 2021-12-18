import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/components/container/bottom_container.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/utils/validation/validate.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/_partial/loading/loading.dart';
import 'package:with_retro_firebase/ui/auth/login/viewmodel/login_viewmodel.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class LoginView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
            renderPage(context, theme, viewModel));
  }

  renderPage(BuildContext context, ThemeData theme, LoginViewModel viewModel) {
    return Stack(
      children: [
        renderBody(context, theme, viewModel),
        Observer(builder: (_) {
          return LoadingWidget(
            visible: viewModel.isLoading,
          );
        }),
      ],
    );
  }

  renderBody(BuildContext context, ThemeData theme, value) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
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
            flex: 10,
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
            S.of(context).login_email_infotext,
            minFontSize: 5,
          )
        ],
      ),
    );
  }

  renderBottomContainer(
      ThemeData theme, BuildContext context, LoginViewModel value) {
    return BottomContainer(
      containerColor: theme.colorScheme.onPrimary,
      width: context.width,
      widget: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                renderEmailTextField(context, theme),
                const SizedBox(height: 10),
                renderPasswordTextField(context, theme),
                const SizedBox(height: 10),
                renderLoginButton(theme, context, value),
                const SizedBox(height: 20),
                renderActionsButtons(context, theme, value),
              ],
            ),
          ),
        ),
      ),
    );
  }

  renderActionsButtons(
      BuildContext context, ThemeData theme, LoginViewModel value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultText(
          onPress: () => value.goForgotPassword(),
          data: S.of(context).forgot_password,
          style: theme.textTheme.bodyText1!
              .copyWith(color: theme.colorScheme.primary),
        ),
        DefaultText(
            onPress: () => value.goRegister(), data: S.of(context).signup)
      ],
    );
  }

  renderLoginButton(
      ThemeData theme, BuildContext context, LoginViewModel value) {
    return DefaultButtonWithStyle(
      buttonColor: theme.colorScheme.secondary,
      textColor: Colors.white,
      text: S.of(context).login.toUpperCase(),
      onPressed: () => {value.login(emailController, passwordController)},
    );
  }

  renderPasswordTextField(BuildContext context, ThemeData theme) {
    return DefaultTextField(
      controller: passwordController,
      secure: true,
      icon: Icons.lock,
      hintText: S.of(context).enter_password,
      theme: theme,
      validator: (value) {
        return Validator.passwordValidate(context, passwordController.text);
      },
    );
  }

  renderEmailTextField(BuildContext context, ThemeData theme) {
    return DefaultTextField(
      controller: emailController,
      icon: Icons.email,
      hintText: S.of(context).enter_email,
      theme: theme,
      validator: (value) {
        return Validator.emailValidate(context, emailController.text);
      },
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
