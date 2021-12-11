import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/features/home/viewmodel/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, HomeViewModel viewModel) =>
            renderBody(context, theme, viewModel));
  }

  renderBody(BuildContext context, ThemeData theme, HomeViewModel viewModel) {
    return Padding(
      padding: context.paddingNormal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              theme.colorScheme.brightness == Brightness.light
                  ? ImageList.logodark.toImagePng
                  : ImageList.logolight.toImagePng,
            ),
          ),
          Expanded(
            flex: 17,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                renderNearText(context, theme),
                renderNearAvatarList(viewModel, context),
                renderAnonsText(context, theme),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  renderAnonsText(BuildContext context, ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).app_name,
          style: theme.textTheme.headline5,
        ),
        Padding(
          padding: context.paddingLowHorizontal,
          child: Image.asset(
            ImageList.logo.toImagePng,
            width: 20,
            height: 20,
          ),
        )
      ],
    );
  }

  renderNearText(BuildContext context, ThemeData theme) {
    return DefaultText(
      data: S.of(context).anons_send_near_time,
      style: theme.textTheme.subtitle1,
    );
  }

  renderNearAvatarList(HomeViewModel viewModel, BuildContext context) {
    return Observer(builder: (_) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: viewModel.nearList.map((e) {
            return Container(
              padding: context.paddingNearAvatar,
              child: Image.network(
                e.url ?? "",
                width: 66,
                height: 66,
                key: Key(e.id.toString()),
              ),
            );
          }).toList(),
        ),
      );
    });
  }
}
