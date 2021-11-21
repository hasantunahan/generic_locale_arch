import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/container/bottom_container.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/auth/login/viewmodel/login_viewmodel.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) {},
        onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
            SafeArea(
              child: Scaffold(
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: context.paddingMediumHorizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('logo_text_black'.toImagePng),
                            Text(S.of(context).login_email_infotext)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 7,
                        child: Container(
                            alignment: Alignment.topRight,
                            padding: context.paddingMediumHorizontal,
                            transform: Matrix4.translationValues(0, 90, 0),
                            child: Image.asset('login_phone'.toImagePng))),
                    Expanded(
                      flex: 8,
                      child: BottomContainer(
                        containerColor: theme.colorScheme.onPrimary,
                        width: context.width,
                        widget: Stack(
                          children: const [Text("Giriş")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
