import 'package:cached_network_image/cached_network_image.dart';
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
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        width: width ?? 66,
        height: height ?? 66,
        fit: BoxFit.cover,
        imageUrl: photoUrl ?? "",
        placeholder: (context, url) => const CircularProgressIndicator(
          strokeWidth: 1,
          color: Colors.white,
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
