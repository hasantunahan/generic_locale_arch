import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';

class AssetImages extends StatelessWidget {
  final String? image;
  final bool isIcon;
  final double? widht;
  final double? height;
  const AssetImages(
      {Key? key, this.image, this.isIcon = false, this.widht, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isIcon ? image.toIconPng : image.toImagePng,
      width: widht ?? 60,
      height: 60,
      fit: BoxFit.contain,
    );
  }
}
