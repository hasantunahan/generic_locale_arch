import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/_product/model/my_anons/myanons.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';

class AnonsProfileCard extends StatelessWidget {
  final MyAnons? e;
  const AnonsProfileCard({Key? key, this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: context.paddingLowVertical,
      padding: context.paddingLow,
      decoration: BoxDecoration(
          color: theme.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  DefaultAvatar(
                    photoUrl: e!.url,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  DefaultText(
                      data: e!.name ?? "",
                      style: theme.textTheme.bodyText2!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
              DefaultText(
                  data: e!.date ?? "",
                  style: theme.textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: theme.colorScheme.onSecondary))
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          DefaultText(data: e!.text ?? ""),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.comment,
                    color: theme.colorScheme.primaryVariant,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  DefaultText(
                      data:
                          "${e!.comments.toString()} ${S.of(context).comments}",
                      style: theme.textTheme.bodyText1)
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: theme.colorScheme.secondary,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  DefaultText(
                    data: "${e!.likes.toString()} ${S.of(context).like}",
                    style: theme.textTheme.bodyText1,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
