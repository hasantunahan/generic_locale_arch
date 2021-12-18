import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/src/provider.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/core/constant/cache/cache_constant.dart';
import 'package:with_retro_firebase/core/init/cache/cache_manager.dart';
import 'package:with_retro_firebase/core/init/lang/change/change_theme.dart';
import 'package:with_retro_firebase/core/init/lang/language_change_provider.dart';
import 'package:with_retro_firebase/ui/features/changelanguage/model/language.dart';
import '../../../../core/extension/image/image_extension.dart';
part 'language_viewmodel.g.dart';

class LanguageViewModel = _LanguageViewModelBase with _$LanguageViewModel;

abstract class _LanguageViewModelBase with Store, BaseViewModel {
  var langManager = CacheManager<String>("setting");

  @observable
  List<Language> flags = <Language>[];

  @action
  changeLang(BuildContext context, String lang) {
    langManager
        .putItem(Cacheconstant.lang, lang)
        .then((val) => {ChangeLanguage(context, lang).changes()});
  }

  @action
  setFlags() {
    flags.add(Language(id: 1, name: "en", url: ImageList.en.toImagePng));
    flags.add(Language(id: 2, name: "tr", url: ImageList.tr.toImagePng));
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {
    setFlags();
    await langManager.init();
  }
}
