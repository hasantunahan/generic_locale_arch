import 'package:flutter/material.dart';

class DefaultSnackBar {
  getSnackbar(BuildContext? context, String? text, Color? backgroundColor) {
    ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
      content: Text(
        text ?? "",
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: backgroundColor,
    ));
  }
}
