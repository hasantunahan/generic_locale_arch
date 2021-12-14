import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ThemeData theme;
  final String? hintText;
  final bool? secure;
  final IconData? icon;
  final Widget? customIcon;
  final String? Function(String? value)? validator;
  final bool? rightPadding;
  final int? maxLines;
  final int? minLines;
  final VoidCallback? value;
  const DefaultTextField(
      {Key? key,
      this.controller,
      required this.theme,
      this.hintText,
      this.secure,
      this.icon,
      this.customIcon,
      this.validator,
      this.rightPadding,
      this.maxLines,
      this.minLines,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: rightPadding ?? false
          ? const EdgeInsets.only(right: 50)
          : const EdgeInsets.all(0),
      child: TextFormField(
        maxLines: maxLines ?? 1,
        minLines: minLines ?? 1,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validator != null ? validator!(value) : null,
        style: TextStyle(color: theme.colorScheme.primaryVariant),
        controller: controller,
        obscureText: secure ?? false,
        decoration: InputDecoration(
            prefixIcon: customIcon ??
                Icon(
                  icon,
                  color: theme!.colorScheme.secondary,
                ),
            hintText: hintText,
            hintStyle: theme!.textTheme.bodyText1!
                .copyWith(color: theme!.colorScheme.onSurface)),
      ),
    );
  }
}
