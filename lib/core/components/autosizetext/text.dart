import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final VoidCallback? onPress;
  final TextAlign? alignment;
  const DefaultText(
      {Key? key, required this.data, this.style, this.onPress, this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: AutoSizeText(
        data,
        maxFontSize: 15,
        minFontSize: 6,
        style: style,
        textAlign: alignment ?? TextAlign.left,
      ),
    );
  }
}
