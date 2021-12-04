import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/auth/forgotpassword/viewmodel/forgotpassword_viewmodel.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final theme = Theme.of(context);
    return BaseView<ForgotPasswordViewModel>(
        viewModel: ForgotPasswordViewModel(),
        onModelReady: (model) {},
        onPageBuilder:
            (BuildContext context, ForgotPasswordViewModel viewModel) =>
                renderBody(theme, context, emailController, viewModel));
  }

  renderBody(
      ThemeData theme,
      BuildContext context,
      TextEditingController emailController,
      ForgotPasswordViewModel viewModel) {
    return Scaffold(
      appBar: renderAppBar(theme),
      body: SizedBox(
        width: context.width,
        child: SingleChildScrollView(
          padding: context.paddingNormalHorizontal,
          child: renderFormBody(context, theme, emailController, viewModel),
        ),
      ),
    );
  }

  renderAppBar(ThemeData theme) {
    return AppBar(
      elevation: 0,
      backgroundColor: theme.colorScheme.background,
    );
  }

  renderFormBody(
      BuildContext context,
      ThemeData theme,
      TextEditingController emailController,
      ForgotPasswordViewModel viewModel) {
    return Column(
      children: [
        Image.asset(
          'login_forgot'.toImagePng,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(S.of(context).check_email,
            style: theme.textTheme.headline5!
                .copyWith(fontWeight: FontWeight.bold)),
        DefaultText(
          data: S.of(context).check_email_info,
          alignment: TextAlign.center,
          style: theme.textTheme.bodyText2,
        ),
        const SizedBox(
          height: 20,
        ),
        renderEmailTextField(emailController, context, theme),
        const SizedBox(
          height: 20,
        ),
        renderResetButton(theme, viewModel, emailController, context),
        const SizedBox(
          height: 5,
        ),
        renderLaunchMail(theme, context),
        const SizedBox(
          height: 15,
        ),
        // renderGoLogin(context, theme, viewModel)
      ],
    );
  }

  renderGoLogin(BuildContext context, ThemeData theme,
      ForgotPasswordViewModel viewModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DefaultText(
          data: S.of(context).go_login,
          style: theme.textTheme.bodyText2,
          onPress: () async {
            await viewModel.goLogin();
          },
        ),
      ],
    );
  }

  renderEmailTextField(TextEditingController emailController,
      BuildContext context, ThemeData theme) {
    return DefaultTextField(
      controller: emailController,
      hintText: S.of(context).enter_email,
      icon: Icons.email,
      theme: theme,
    );
  }

  renderResetButton(ThemeData theme, ForgotPasswordViewModel viewModel,
      TextEditingController emailController, BuildContext context) {
    return DefaultButtonWithStyle(
      buttonColor: theme.colorScheme.primary,
      elevation: 5,
      onPressed: () async {
        await viewModel.resetLink(emailController, context);
      },
      text: S.of(context).send_reset,
    );
  }

  renderLaunchMail(ThemeData theme, BuildContext context) {
    return DefaultButtonWithStyle(
      buttonColor: theme.colorScheme.secondary,
      elevation: 5,
      onPressed: () {
        log("launch email app");
      },
      text: S.of(context).open_email,
    );
  }
}
