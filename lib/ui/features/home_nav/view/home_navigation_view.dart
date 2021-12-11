import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/ui/features/home_nav/viewmodel/home_navigation_viewmodel.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<HomeNavViewModel>(
        viewModel: HomeNavViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, HomeNavViewModel viewModel) =>
            renderBody(viewModel, theme, context));
  }

  renderBody(
      HomeNavViewModel viewModel, ThemeData theme, BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: theme.backgroundColor,
        elevation: 0,
      ),
      body: Observer(builder: (_) {
        return viewModel.setPage(viewModel.currentindex);
      }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.colorScheme.primary,
        onPressed: () {},
        child: const Icon(Icons.notifications),
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return renderBottomBar(viewModel, theme, context);
        },
      ),
    );
  }

  renderBottomBar(
      HomeNavViewModel viewModel, ThemeData theme, BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      elevation: 5,
      notchMargin: 8,
      color: theme.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          renderHome(theme, viewModel, context),
          renderProfile(theme, viewModel, context),
          renderChat(theme, viewModel, context),
          renderSettings(theme, viewModel, context)
        ],
      ),
    );
  }

  renderSettings(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 3;
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: Container(
            height: 50,
            width: context.width * .2,
            child: index == viewModel.currentindex
                ? Icon(Icons.settings, color: theme.colorScheme.primary)
                : Icon(Icons.settings_outlined,
                    color: theme.colorScheme.onPrimary)),
      );
    });
  }

  renderChat(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 2;
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
          height: 50,
          width: context.width * .3,
          child: index == viewModel.currentindex
              ? Icon(
                  Icons.chat,
                  color: theme.colorScheme.primary,
                )
              : Icon(Icons.chat_outlined, color: theme.colorScheme.onPrimary),
        ),
      );
    });
  }

  renderProfile(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 1;
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
          height: 50,
          width: context.width * .3,
          child: index == viewModel.currentindex
              ? Icon(
                  Icons.person,
                  color: theme.colorScheme.primary,
                )
              : Icon(Icons.person_outline, color: theme.colorScheme.onPrimary),
        ),
      );
    });
  }

  renderHome(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 0;
    return Observer(builder: (_) {
      return GestureDetector(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
            height: 50,
            width: context.width * .2,
            child: index == viewModel.currentindex
                ? Icon(
                    Icons.home,
                    color: theme.colorScheme.primary,
                  )
                : Icon(
                    Icons.home_outlined,
                    color: theme.colorScheme.onPrimary,
                  )),
      );
    });
  }
}
