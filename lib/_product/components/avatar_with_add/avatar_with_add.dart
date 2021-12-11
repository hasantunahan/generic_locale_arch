import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';

class AvatarWithAdd extends StatelessWidget {
  final int? id;
  final String? imageUrl;
  const AvatarWithAdd({Key? key, this.imageUrl, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Padding(
          padding: context.paddingNearAvatar,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl ?? "",
              width: 66,
              height: 66,
              fit: BoxFit.cover,
              key: Key(id.toString()),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () {
              log("add");
            },
            child: Container(
              transform: Matrix4.translationValues(-8, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: theme.backgroundColor),
              child: const Icon(
                Icons.add,
                color: Colors.green,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
