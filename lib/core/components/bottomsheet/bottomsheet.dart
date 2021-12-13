import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';

class DefaultBottomSheet extends StatelessWidget {
  final Color? bottomsheetColor;
  final double? height;
  final Widget? widget;
  const DefaultBottomSheet(
      {Key? key, this.bottomsheetColor, this.height, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: height ?? context.height * .7,
              width: context.width,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(color: Colors.black, offset: Offset(1, 2))
                  ],
                  color: bottomsheetColor ?? Colors.grey,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: widget ?? Container()),
        ],
      ),
    );
  }
}
