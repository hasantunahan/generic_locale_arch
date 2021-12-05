import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/lotties_extension.dart';

class LoadingWidget extends StatelessWidget {
  final bool? visible;
  const LoadingWidget({Key? key, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible ?? false,
      child: Container(
        color: Colors.black.withOpacity(0.15),
        height: context.height,
        width: context.width,
        child: Center(
          child: Lottie.asset("loading".toLottiePath, width: 80, height: 80),
        ),
      ),
    );
  }
}
