import 'package:flutter/cupertino.dart';
import 'package:provider/src/provider.dart';
import '../language_change_provider.dart';

class ChangeLanguage {
  final BuildContext context;
  final String name;

  const ChangeLanguage(this.context, this.name);

  Future<void> changes() async {
    context.read<LanguageChangeProvider>().changeLocale(name);
  }
}
