import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
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
            ));
  }
}
