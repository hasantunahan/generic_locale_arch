import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/_product/components/anons_home_card/anons_home_card.dart';
import 'package:with_retro_firebase/_product/components/avatar_with_add/avatar_with_add.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/_product/model/income_anons/income_anons.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/environment/config/config_reader.dart';
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
          Text(Configreader.getKey()),
          Expanded(
            flex: 17,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  renderNearText(context, theme),
                  renderNearAvatarList(viewModel, context, theme),
                  renderAnonsText(context, theme),
                  renderIcomeAnons(viewModel, theme, context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  renderIcomeAnons(
      HomeViewModel viewModel, ThemeData theme, BuildContext context) {
    return Observer(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 2),
          child: StreamBuilder<List<IncomeAnons>>(
            initialData: viewModel.incomeAnonsList,
            builder: (context, AsyncSnapshot<List<IncomeAnons>> snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: snapshot.data!.map((e) {
                    return AnonsHomeCard(
                      e: e,
                    );
                  }).toList(),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        );
      },
    );
  }

  renderAnonsText(BuildContext context, ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "#${S.of(context).app_name}",
          style: theme.textTheme.bodyText1,
        ),
        Padding(
          padding: context.paddingLowHorizontal,
          child: Image.asset(
            ImageList.logo.toImagePng,
            width: 16,
            height: 16,
          ),
        )
      ],
    );
  }

  renderNearText(BuildContext context, ThemeData theme) {
    return DefaultText(
      data: "#${S.of(context).anons_send_near_time}",
      style: theme.textTheme.bodyText1,
    );
  }

  renderNearAvatarList(
      HomeViewModel viewModel, BuildContext context, ThemeData theme) {
    return Observer(builder: (_) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: viewModel.nearList.map((e) {
            return AvatarWithAdd(
              imageUrl: e.url,
              id: e.id,
            );
          }).toList(),
        ),
      );
    });
  }
}
