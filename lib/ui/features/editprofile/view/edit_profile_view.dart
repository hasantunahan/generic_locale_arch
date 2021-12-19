import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/constant/navigation/navigation_contant.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/features/editprofile/viewmodel/edit_profile_viewmodel.dart';
import 'package:with_retro_firebase/ui/features/home_nav/view/home_navigation_view.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextEditingController nameController = TextEditingController(
        text: FirebaseUser.instance.getUser()!.displayName);
    return BaseView<EditProfileViewModel>(
        viewModel: EditProfileViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, EditProfileViewModel viewModel) =>
            Scaffold(
              backgroundColor: theme.backgroundColor,
              appBar: AppBar(
                backgroundColor: theme.backgroundColor,
                iconTheme: theme.iconTheme,
                elevation: 0,
                title: DefaultText(
                  data: S.of(context).editprofile,
                  style: theme.textTheme.bodyText2,
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: DefaultAvatar(
                        photoUrl: FirebaseUser.instance.getUser()!.photoURL,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          log("edit profile image");
                        },
                        child: DefaultText(
                          data: S.of(context).changeprofileimage,
                          style: theme.textTheme.bodyText1!
                              .copyWith(color: theme.colorScheme.secondary),
                        )),
                    Divider(
                      color: theme.colorScheme.primaryVariant,
                      thickness: 0.2,
                    ),
                    DefaultTextField(
                      theme: theme,
                      controller: nameController,
                      icon: Icons.person,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DefaultButtonWithStyle(
                          width: context.width * .4,
                          text: S.of(context).iptal,
                          onPressed: () {},
                          buttonColor: Colors.red,
                        ),
                        DefaultButtonWithStyle(
                          width: context.width * .4,
                          text: S.of(context).save,
                          buttonColor: Colors.green,
                          onPressed: () {
                            viewModel.changeProfile(
                                "photoURL", nameController.text);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
