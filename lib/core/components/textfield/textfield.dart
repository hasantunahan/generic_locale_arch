import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ThemeData? theme;
  final String? hintText;
  final bool? secure;
  const DefaultTextField(
      {Key? key, this.controller, this.theme, this.hintText, this.secure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: theme!.colorScheme.primaryVariant),
      controller: controller,
      obscureText: secure ?? false,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
            color: theme!.colorScheme.secondary,
          ),
          hintText: hintText,
          hintStyle: theme!.textTheme.bodyText1!
              .copyWith(color: theme!.colorScheme.onSurface)),
    );
  }
}
