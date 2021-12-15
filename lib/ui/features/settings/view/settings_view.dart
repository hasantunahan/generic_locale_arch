import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:with_retro_firebase/_product/components/settings_card/settings_card.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/image/assetimage.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/features/settings/viewmodel/settings_viewmodel.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<SettingsViewModel>(
        viewModel: SettingsViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, SettingsViewModel viewModel) =>
            renderBody(theme, context, viewModel));
  }

  renderBody(
      ThemeData theme, BuildContext context, SettingsViewModel viewModel) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: overlayStyle(theme),
        elevation: 0,
        backgroundColor: theme.backgroundColor,
        title: DefaultText(
          data: S.of(context).settings,
          style:
              theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.paddingNormalHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              renderTitleWidget(context, theme, S.of(context).profileSettings),
              SettingsCard(
                onPress: () {
                  log("person");
                },
                backgroundColor: Colors.indigo,
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                text: S.of(context).personalSettings,
              ),
              renderTitleWidget(context, theme, S.of(context).appSettings),
              Observer(builder: (_) {
                return SettingsCard(
                  onPress: () {
                    log("message");
                  },
                  backgroundColor: Colors.orange,
                  leftWidget: const AssetImages(
                    height: 12,
                    widht: 12,
                    image: ImageList.theme,
                    isIcon: true,
                  ),
                  text: S.of(context).changetheme,
                  rightWidget: Switch.adaptive(
                    value: viewModel.theme,
                    activeColor: Colors.orange,
                    onChanged: (value) {
                      viewModel.changeTheme(context, value);
                    },
                  ),
                );
              }),
              renderTitleWidget(context, theme, S.of(context).general),
              renderTitleWidget(
                  context, theme, S.of(context).notificationSettings),
              renderTitleWidget(context, theme, S.of(context).aboutme),
              Observer(builder: (_) {
                return Visibility(
                    visible: viewModel.version != '',
                    child: DefaultText(
                      data: 'Version : ${viewModel.version}',
                      style: theme.textTheme.subtitle1,
                    ));
              })
            ],
          ),
        ),
      ),
    );
  }

  renderTitleWidget(BuildContext context, ThemeData theme, String text) {
    return Padding(
      padding: context.paddingLowVertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultText(
            data: text,
            style: theme.textTheme.bodyText1!.copyWith(fontSize: 11),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: theme.colorScheme.primaryVariant,
            size: 11,
          )
        ],
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
}
