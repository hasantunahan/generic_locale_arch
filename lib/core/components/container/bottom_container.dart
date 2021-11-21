import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? containerColor;
  final Widget? widget;
  const BottomContainer(
      {Key? key, this.width, this.height, this.containerColor, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: widget,
    );
  }
}
