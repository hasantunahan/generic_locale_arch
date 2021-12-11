import 'package:flutter/material.dart';

class DefaultAvatar extends StatelessWidget {
  final String? photoUrl;
  final double? width;
  final double? height;
  const DefaultAvatar({Key? key, this.photoUrl, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.network(photoUrl ?? "",
            width: width ?? 66, height: height ?? 66, fit: BoxFit.cover));
  }
}
