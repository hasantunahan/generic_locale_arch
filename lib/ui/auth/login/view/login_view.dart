import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/ui/auth/login/viewmodel/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        viewModel: LoginViewModel(),
        onModelReady: (model) {},
        onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
            Scaffold(
              body: Center(
                child: TextButton(
                    onPressed: () {
                      viewModel.login();
                    },
                    child: const Text("Login")),
              ),
            ));
  }
}
