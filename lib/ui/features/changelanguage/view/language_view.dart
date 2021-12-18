import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/src/provider.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/init/lang/language_change_provider.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/features/changelanguage/viewmodel/language_viewmodel.dart';

class LanguageView extends StatelessWidget {
  final args;
  const LanguageView({Key? key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<LanguageViewModel>(
        viewModel: LanguageViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, LanguageViewModel viewModel) =>
            renderBody(theme, context, viewModel));
  }

  renderBody(
      ThemeData theme, BuildContext context, LanguageViewModel viewModel) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: AppBar(
        iconTheme: theme.iconTheme,
        backgroundColor: theme.backgroundColor,
        title: DefaultText(
          data: S.of(context).languageSettings,
          style: theme.textTheme.headline6,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            renderActiveLangText(context),
            const SizedBox(
              height: 10,
            ),
            renderLanguageList(viewModel, context),
          ],
        ),
      ),
    );
  }

  renderLanguageList(LanguageViewModel viewModel, BuildContext context) {
    return Observer(builder: (_) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: viewModel.flags.map((e) {
          return Expanded(
            child: InkWell(
              onTap: () => viewModel.changeLang(context, e.name ?? "en"),
              child: Container(
                margin: context.paddingLowHorizontal,
                width: context.width * .42,
                height: context.height * 0.13,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.url ?? ""), fit: BoxFit.fill)),
              ),
            ),
          );
        }).toList(),
      );
    });
  }

  renderActiveLangText(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        DefaultText(data: "${S.of(context).activelanguage} :"),
        const SizedBox(
          width: 8,
        ),
        DefaultText(
            data:
                context.read<LanguageChangeProvider>().currentLocale.toString())
      ],
    );
  }
}
