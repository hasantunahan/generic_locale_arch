import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/_product/model/income_anons/income_anons.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/init/theme/theme_change_provider.dart';
import 'package:with_retro_firebase/generated/l10n.dart';

class AnonsHomeCard extends StatelessWidget {
  final IncomeAnons? e;
  const AnonsHomeCard({Key? key, this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: context.paddingLow,
      margin: context.paddingLowVertical,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultAvatar(
                    height: 20,
                    width: 20,
                    photoUrl: e!.url,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    e!.name ?? "",
                    style: theme.textTheme.bodyText2!
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              DefaultText(
                data: e!.date ?? "",
                style: theme.textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: theme.colorScheme.onSecondary),
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          DefaultText(
            data: e!.text ?? "",
            style: theme.textTheme.bodyText1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultText(
                data: "${e!.comments} ${S.of(context).comments}",
                style: theme.textTheme.bodyText1!
                    .copyWith(color: theme.colorScheme.onSecondary),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DefaultText(
                    data: e!.location ?? "",
                    style: theme.textTheme.bodyText1,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.pin_drop,
                    color: theme.colorScheme.secondary,
                    size: 16,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  log(e!.id.toString());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultText(
                      data: S.of(context).answer_t,
                      style: theme.textTheme.bodyText1,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.send,
                      color: theme.colorScheme.primaryVariant,
                      size: 16,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<ThemeProvider>().toggleTheme("dark");
                },
                child: Icon(
                  e!.isFavorite ?? true
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  size: 16,
                  color: theme.colorScheme.secondary,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
