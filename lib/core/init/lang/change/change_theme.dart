import 'package:flutter/cupertino.dart';
import 'package:provider/src/provider.dart';
import 'package:with_retro_firebase/core/init/lang/language_change_provider.dart';

class ChangeLanguage {
  final BuildContext context;
  final String name;

  const ChangeLanguage(this.context, this.name);

  Future<void> changes() async {
    context.read<LanguageChangeProvider>().changeLocale(name);
  }
}
