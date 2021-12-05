import 'package:flutter/cupertino.dart';
import 'package:with_retro_firebase/generated/l10n.dart';

class Validator {
  static String? passwordValidate(BuildContext context, String value) {
    if (value.isEmpty) {
      return S.of(context).password_validate;
    } else {
      if (value.length < 6) {
        return S.of(context).password_validate_lenght;
      } else {
        return null;
      }
    }
  }

  static String? emailValidate(BuildContext context, String value) {
    if (value.isEmpty) {
      return S.of(context).email_validate;
    } else {
      if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)) {
        return S.of(context).email_validate_confirm;
      } else {
        return null;
      }
    }
  }
}
