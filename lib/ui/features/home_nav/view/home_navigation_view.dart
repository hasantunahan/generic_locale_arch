import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/ui/features/home_nav/viewmodel/home_navigation_viewmodel.dart';

class HomeNavView extends StatelessWidget {
  const HomeNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return BaseView<HomeNavViewModel>(
        viewModel: HomeNavViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, HomeNavViewModel viewModel) =>
            renderBody(viewModel, theme, context, scaffoldKey));
  }

  renderBody(HomeNavViewModel viewModel, ThemeData theme, BuildContext context,
      GlobalKey<ScaffoldState> scaffoldKey) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: theme.backgroundColor,
        systemOverlayStyle: overlayStyle(theme),
        elevation: 0,
      ),
      body: Observer(builder: (_) {
        return viewModel.setPage(viewModel.currentindex);
      }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Observer(
        builder: (context) {
          return Visibility(
              visible: !viewModel.sheet,
              child: FloatingActionButton(
                backgroundColor: theme.colorScheme.secondary,
                onPressed: () {
                  viewModel.showSendAnons(scaffoldKey, theme, context);
                },
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ));
        },
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return Visibility(
              visible: !viewModel.sheet,
              child: renderBottomBar(viewModel, theme, context));
        },
      ),
    );
  }

  SystemUiOverlayStyle overlayStyle(theme) {
    return SystemUiOverlayStyle(
        statusBarColor: theme.backgroundColor,
        statusBarBrightness: theme.colorScheme.brightness,
        statusBarIconBrightness: theme.colorScheme.brightness,
        systemNavigationBarIconBrightness: theme.colorScheme.brightness);
  }

  renderBottomBar(
      HomeNavViewModel viewModel, ThemeData theme, BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      elevation: 5,
      notchMargin: 8,
      color: theme.colorScheme.onPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          renderHome(theme, viewModel, context),
          renderProfile(theme, viewModel, context),
          renderEmpty(theme, viewModel, context),
          renderChat(theme, viewModel, context),
          renderSettings(theme, viewModel, context)
        ],
      ),
    );
  }

  renderSettings(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 4;
    return Observer(builder: (_) {
      return InkWell(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
            height: 50,
            width: context.width * .2,
            child: index == viewModel.currentindex
                ? Icon(Icons.settings, color: theme.colorScheme.secondary)
                : Icon(Icons.settings_outlined,
                    color: theme.colorScheme.primaryVariant)),
      );
    });
  }

  renderChat(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 3;
    return Observer(builder: (_) {
      return InkWell(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
          height: 50,
          width: context.width * .2,
          child: index == viewModel.currentindex
              ? Icon(
                  Icons.chat,
                  color: theme.colorScheme.secondary,
                )
              : Icon(Icons.chat_outlined,
                  color: theme.colorScheme.primaryVariant),
        ),
      );
    });
  }

  renderProfile(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 1;
    return Observer(builder: (_) {
      return InkWell(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
          height: 50,
          width: context.width * .2,
          child: index == viewModel.currentindex
              ? Icon(
                  Icons.person,
                  color: theme.colorScheme.secondary,
                )
              : Icon(Icons.person_outline,
                  color: theme.colorScheme.primaryVariant),
        ),
      );
    });
  }

  renderHome(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    int index = 0;
    return Observer(builder: (_) {
      return InkWell(
        onTap: () {
          viewModel.setCurrentIndex(index);
        },
        child: SizedBox(
            height: 50,
            width: context.width * .2,
            child: index == viewModel.currentindex
                ? Icon(
                    Icons.home,
                    color: theme.colorScheme.secondary,
                  )
                : Icon(
                    Icons.home_outlined,
                    color: theme.colorScheme.primaryVariant,
                  )),
      );
    });
  }

  renderEmpty(
      ThemeData theme, HomeNavViewModel viewModel, BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.width * .2,
    );
  }
}
