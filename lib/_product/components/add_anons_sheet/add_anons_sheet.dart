import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';

class AddAnonsSheet extends StatelessWidget {
  final ThemeData theme;
  final VoidCallback onPress;
  const AddAnonsSheet({Key? key, required this.theme, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(child: Container(height: 5, width: 50, color: Colors.grey)),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageList.logo.toImagePng,
                  width: 25,
                  height: 25,
                ),
                const SizedBox(
                  width: 10,
                ),
                DefaultText(
                  data: S.of(context).newanons,
                  style: theme.textTheme.headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        Stack(
          children: [
            DefaultTextField(
              theme: theme,
              icon: Icons.add,
              hintText: S.of(context).newanons,
              rightPadding: true,
              maxLines: 4,
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    log("send");
                  },
                  child: Container(
                    color: theme.colorScheme.primary,
                    height: 40,
                    width: 40,
                    child: const Center(
                      child: Icon(Icons.send),
                    ),
                  ),
                ))
          ],
        )
      ],
    );
  }
}
