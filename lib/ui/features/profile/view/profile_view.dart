import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/components/anons_profile_card/anons_profile_card.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/_product/components/avatar_with_add/avatar_with_add.dart';
import 'package:with_retro_firebase/_product/constants/image/image_list.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/features/profile/viewmodel/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<ProfileViewModel>(
        viewModel: ProfileViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, ProfileViewModel viewModel) =>
            renderBody(theme, context, viewModel));
  }

  renderBody(
      ThemeData theme, BuildContext context, ProfileViewModel viewModel) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: renderAppBar(context, theme),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.paddingNormal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              renderProfileDescription(context, theme),
              const SizedBox(
                height: 10,
              ),
              renderEditProfile(context, theme),
              const SizedBox(
                height: 5,
              ),
              renderRespondersText(context),
              renderResponders(viewModel),
              renderMyAnonsText(context),
              renderMyAnonsList(viewModel)
            ],
          ),
        ),
      ),
    );
  }

  renderMyAnonsList(ProfileViewModel viewModel) {
    return Column(
      children: viewModel.myAnons.map((e) {
        return AnonsProfileCard(
          e: e,
        );
      }).toList(),
    );
  }

  renderMyAnonsText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultText(data: "#${S.of(context).myanons}"),
        Image.asset(
          ImageList.logo.toImagePng,
          width: 18,
          height: 18,
        )
      ],
    );
  }

  renderRespondersText(BuildContext context) =>
      DefaultText(data: "#${S.of(context).responders}");

  renderResponders(ProfileViewModel viewModel) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: viewModel.answeredUser.map((e) {
          return AvatarWithAdd(
            height: 44,
            width: 44,
            imageUrl: e.url,
            id: e.id,
          );
        }).toList(),
      ),
    );
  }

  renderEditProfile(BuildContext context, ThemeData theme) {
    return Row(
      children: [
        Expanded(
          child: DefaultButtonWithStyle(
            text: S.of(context).editprofile,
            textColor: theme.colorScheme.primaryVariant,
            buttonColor: theme.colorScheme.onPrimary,
            onPressed: () {
              log("edit");
            },
          ),
        ),
      ],
    );
  }

  renderAppBar(BuildContext context, ThemeData theme) {
    return AppBar(
      flexibleSpace: Container(
        height: 56,
        padding: context.paddingNormalHorizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              theme.colorScheme.brightness == Brightness.light
                  ? ImageList.logodark.toImagePng
                  : ImageList.logolight.toImagePng,
              width: context.width * .18,
            )
          ],
        ),
      ),
      elevation: 0,
      backgroundColor: theme.backgroundColor,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
    );
  }

  renderProfileDescription(BuildContext context, ThemeData theme) => Row(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: theme.colorScheme.primary, width: 2)),
            child: const DefaultAvatar(
              photoUrl: 'https://tashteam.com/images/sero.png',
              height: 60,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  data: "Şerefcan Oğuz",
                  style: theme.textTheme.headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Row(children: [
                  Expanded(
                      child: Text(
                    S.of(context).friend,
                    style: theme.textTheme.subtitle1,
                  )),
                  Expanded(
                      child: Text(
                    S.of(context).app_name,
                    style: theme.textTheme.subtitle1,
                  )),
                  Expanded(
                      child: Text(
                    S.of(context).like,
                    style: theme.textTheme.subtitle1,
                  )),
                ]),
                Row(children: [
                  Expanded(
                      child: Text(
                    '120',
                    style: theme.textTheme.subtitle1!
                        .copyWith(color: theme.colorScheme.primary),
                  )),
                  Expanded(
                      child: Text(
                    '23K',
                    style: theme.textTheme.subtitle1!
                        .copyWith(color: theme.colorScheme.primary),
                  )),
                  Expanded(
                      child: Text(
                    '17',
                    style: theme.textTheme.subtitle1!
                        .copyWith(color: theme.colorScheme.primary),
                  )),
                ])
              ],
            ),
          )
        ],
      );
}
