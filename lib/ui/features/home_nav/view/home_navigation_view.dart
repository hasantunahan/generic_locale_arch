import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
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
            renderBody(viewModel, theme));
  }

  renderBody(HomeNavViewModel viewModel, ThemeData theme) {
    return Scaffold(
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
        onPressed: () {},
        child: Text(""),
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return renderBottomBar(viewModel, theme);
        },
      ),
    );
  }

  renderBottomBar(HomeNavViewModel viewModel, ThemeData theme) {
    return BottomNavigationBar(
      currentIndex: viewModel.currentindex,
      onTap: (value) {
        viewModel.setCurrentIndex(value);
      },
      backgroundColor: theme.backgroundColor,
      type: BottomNavigationBarType.fixed,
      items: [
        renderHome(theme),
        renderProfile(theme),
        renderChat(theme),
        renderSettings(theme),
      ],
    );
  }

  renderSettings(ThemeData theme) {
    return BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.settings,
          color: theme.colorScheme.primary,
        ),
        icon: Icon(Icons.settings_outlined, color: theme.colorScheme.onPrimary),
        title: const SizedBox(
          height: 0,
        ));
  }

  renderChat(ThemeData theme) {
    return BottomNavigationBarItem(
      activeIcon: Icon(
        Icons.chat,
        color: theme.colorScheme.primary,
      ),
      icon: Icon(Icons.chat_outlined, color: theme.colorScheme.onPrimary),
      title: const SizedBox(
        height: 0,
      ),
    );
  }

  renderAdd(ThemeData theme) {
    return BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.add,
          color: theme.colorScheme.primary,
        ),
        icon: Icon(Icons.add, color: theme.colorScheme.onPrimary),
        title: const SizedBox(
          height: 0,
        ));
  }

  renderProfile(ThemeData theme) {
    return BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.person,
          color: theme.colorScheme.primary,
        ),
        icon: Icon(Icons.person_outline, color: theme.colorScheme.onPrimary),
        title: const SizedBox(
          height: 0,
        ));
  }

  renderHome(ThemeData theme) {
    return BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: theme.colorScheme.primary,
        ),
        icon: Icon(
          Icons.home_outlined,
          color: theme.colorScheme.onPrimary,
        ),
        title: const SizedBox(
          height: 0,
        ));
  }
}
