import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/components/container/bottom_container.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/auth/verify/viewmodel/verify_viewmodel.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<VerifyViewModel>(
        viewModel: VerifyViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, VerifyViewModel viewModel) =>
            renderBody(context, theme, viewModel));
  }

  renderBody(BuildContext context, ThemeData theme, value) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: renderPhoneImage(context)),
          Expanded(
            flex: 2,
            child: renderBottomContainer(theme, context, value),
          )
        ],
      ),
    );
  }

  renderBottomContainer(
      ThemeData theme, BuildContext context, VerifyViewModel value) {
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
                S.of(context).email_verify,
                style: theme.textTheme.headline6,
              ),
              DefaultText(
                data: S.of(context).verify_info_textarea,
                style: theme.textTheme.bodyText1!
                    .copyWith(color: theme.colorScheme.primaryVariant),
              ),
              const SizedBox(
                height: 15,
              ),
              renderVerifyButton(context, value),
              const SizedBox(
                height: 10,
              ),
              DefaultText(
                data: S.of(context).didgetMail,
                style: theme.textTheme.bodyText1!
                    .copyWith(color: theme.colorScheme.secondary),
                onPress: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              renderSendAgainButton(context, value),
            ],
          ),
        ),
      ),
    );
  }

  renderSendAgainButton(BuildContext context, VerifyViewModel value) {
    return DefaultButtonWithStyle(
      textColor: Colors.white,
      buttonColor: context.colors.secondary,
      text: S.of(context).send_again,
      onPressed: () => value.sendAgain(),
    );
  }

  renderVerifyButton(BuildContext context, VerifyViewModel value) {
    return DefaultButtonWithStyle(
      textColor: Colors.white,
      buttonColor: context.colors.primary,
      text: S.of(context).verify,
      onPressed: () => value.verifyControl(),
    );
  }

  renderPhoneImage(BuildContext context) {
    return Container(
        padding: context.paddingMediumHorizontal,
        transform: Matrix4.translationValues(0, context.height * .09, 0),
        child: Image.asset('login_verify'.toImagePng));
  }
}
