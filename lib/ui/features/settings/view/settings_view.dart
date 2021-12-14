import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
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
            Scaffold(
              appBar: AppBar(
                elevation: 0,
                title: DefaultText(
                  data: S.of(context).settings,
                  style: theme.textTheme.headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: context.paddingNormalHorizontal,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            viewModel.test();
                          },
                          child: Text("denee")),
                      renderTitleWidget(
                          context, theme, S.of(context).profileSettings),
                      Row(
                        children: [],
                      ),
                      renderTitleWidget(
                          context, theme, S.of(context).appSettings),
                      renderTitleWidget(context, theme, S.of(context).general),
                      renderTitleWidget(
                          context, theme, S.of(context).notificationSettings),
                      renderTitleWidget(context, theme, S.of(context).aboutme),
                    ],
                  ),
                ),
              ),
            ));
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
}
