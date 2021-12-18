import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/src/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:with_retro_firebase/_product/components/settings_card/settings_card.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/image/assetimage.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/core/init/lang/language_change_provider.dart';
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
      appBar: renderAppBat(theme, context),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.paddingNormalHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(ImageList.tr.toImagePng),
                    radius: 24,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      DefaultText(data: "Name"),
                      DefaultText(data: "email")
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
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
              SettingsCard(
                onPress: () {
                  viewModel.goPageWithArguments(NavigationConstants.language, {
                    "lang": context.read<LanguageChangeProvider>().currentLocale
                  });
                },
                backgroundColor: Colors.green,
                icon: const Icon(
                  Icons.translate_outlined,
                  color: Colors.white,
                ),
                text: S.of(context).languageSettings,
              ),
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
              renderTitleWidget(
                  context, theme, S.of(context).notificationSettings),
              SettingsCard(
                onPress: () {
                  log("person");
                },
                backgroundColor: Colors.redAccent,
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                text: S.of(context).notification,
              ),
              renderTitleWidget(context, theme, S.of(context).aboutme),
              SettingsCard(
                onPress: () {
                  log("person");
                },
                backgroundColor: Colors.blueGrey,
                icon: const Icon(
                  Icons.policy,
                  color: Colors.white,
                ),
                text: S.of(context).privacypolicy,
              ),
              SettingsCard(
                onPress: () {
                  log("person");
                },
                backgroundColor: Colors.blueGrey,
                icon: const Icon(
                  Icons.document_scanner,
                  color: Colors.white,
                ),
                text: S.of(context).useraggrement,
              ),
              SettingsCard(
                onPress: () {
                  log("person");
                },
                backgroundColor: Colors.amberAccent,
                icon: const Icon(
                  Icons.help,
                  color: Colors.white,
                ),
                text: S.of(context).help,
              ),
              SettingsCard(
                onPress: () async => await Alert(
                    context: context,
                    style: AlertStyle(
                      backgroundColor: theme.colorScheme.onPrimary,
                    ),
                    content: Text(
                      S.of(context).aresurelogout,
                      style: TextStyle(
                          color: theme.colorScheme.primaryVariant,
                          fontSize: 11),
                      textAlign: TextAlign.start,
                    ),
                    buttons: [
                      DialogButton(
                        color: Colors.redAccent,
                        child: Text(
                          S.of(context).iptal,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      DialogButton(
                        color: Colors.green,
                        child: Text(
                          S.of(context).ok,
                        ),
                        onPressed: () {
                          viewModel.logout();
                        },
                      )
                    ]).show(),
                backgroundColor: Colors.red,
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                text: S.of(context).logout,
              ),
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

  AppBar renderAppBat(ThemeData theme, BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: theme.backgroundColor,
      title: DefaultText(
        data: S.of(context).settings,
        style: theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
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
