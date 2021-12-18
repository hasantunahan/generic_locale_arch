// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LanguageViewModel on _LanguageViewModelBase, Store {
  final _$flagsAtom = Atom(name: '_LanguageViewModelBase.flags');

  @override
  List<Language> get flags {
    _$flagsAtom.reportRead();
    return super.flags;
  }

  @override
  set flags(List<Language> value) {
    _$flagsAtom.reportWrite(value, super.flags, () {
      super.flags = value;
    });
  }

  final _$_LanguageViewModelBaseActionController =
      ActionController(name: '_LanguageViewModelBase');

  @override
  dynamic changeLang(BuildContext context, String lang) {
    final _$actionInfo = _$_LanguageViewModelBaseActionController.startAction(
        name: '_LanguageViewModelBase.changeLang');
    try {
      return super.changeLang(context, lang);
    } finally {
      _$_LanguageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFlags() {
    final _$actionInfo = _$_LanguageViewModelBaseActionController.startAction(
        name: '_LanguageViewModelBase.setFlags');
    try {
      return super.setFlags();
    } finally {
      _$_LanguageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
flags: ${flags}
    ''';
  }
}
