import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/ui/features/home_nav/viewmodel/home_navigation_viewmodel.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeNavViewModel>(
        viewModel: HomeNavViewModel(),
        onModelReady: (model) {},
        onPageBuilder: (BuildContext context, HomeNavViewModel viewModel) =>
            const Scaffold(
              body: Center(
                child: Text("home"),
              ),
            ));
  }
}
