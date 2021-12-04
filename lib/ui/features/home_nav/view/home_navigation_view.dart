import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import 'package:with_retro_firebase/ui/features/home_nav/viewmodel/home_navigation_viewmodel.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeNavViewModel>(
        viewModel: HomeNavViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, HomeNavViewModel viewModel) =>
            Scaffold(
                body: Center(
              child: TextButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, NavigationConstants.login);
                  },
                  child: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  )),
            )));
  }
}
