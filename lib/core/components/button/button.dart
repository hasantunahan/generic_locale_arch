import 'package:flutter/material.dart';

class DefaultButtonWithStyle extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color? textColor;
  final Color? buttonColor;
  final double? radius;
  final double? elevation;
  final double? width;
  const DefaultButtonWithStyle(
      {Key? key,
      this.onPressed,
      this.text,
      this.textColor,
      this.buttonColor,
      this.radius,
      this.elevation = 0,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * .9,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(buttonColor),
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 5),
              ))),
          child: Center(
            child: renderText(theme),
          )),
    );
  }

  renderText(ThemeData theme) {
    return Text(
      text ?? 'Button',
      style:
          theme.textTheme.bodyText2!.copyWith(color: textColor ?? Colors.white),
    );
  }
}
