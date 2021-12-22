import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/button/button.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/utils/permission/camera.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/_partial/loading/loading.dart';
import 'package:with_retro_firebase/ui/features/editprofile/viewmodel/edit_profile_viewmodel.dart';

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
            Stack(
              children: [
                renderBody(theme, context, nameController, viewModel),
                Observer(builder: (_) {
                  return LoadingWidget(
                    visible: viewModel.isLoading,
                  );
                })
              ],
            ));
  }

  renderBody(ThemeData theme, BuildContext context,
      TextEditingController nameController, EditProfileViewModel viewModel) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      appBar: renderAppbart(theme, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Observer(builder: (_) {
              return viewModel.imagePath.isEmpty ||
                      viewModel.imagePath == 'path'
                  ? renderAvatar(viewModel)
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.file(
                        File(viewModel.imagePath),
                        width: 66,
                        height: 66,
                        fit: BoxFit.fill,
                      ),
                    );
            }),
            const SizedBox(
              height: 15,
            ),
            renderPopUpMenu(context, theme, viewModel),
            Divider(
              color: theme.colorScheme.primaryVariant,
              thickness: 0.2,
            ),
            renderDisplayName(theme, nameController),
            const SizedBox(
              height: 15,
            ),
            renderActionsButton(context, viewModel, nameController)
          ],
        ),
      ),
    );
  }

  renderPopUpMenu(
      BuildContext context, ThemeData theme, EditProfileViewModel viewModel) {
    return PopupMenuButton(
      onSelected: (value) async {
        if (value == 'take') {
          bool perm = await CameraPermission.instance.getCameraPermission();
          if (perm) {
            XFile? image = await ImagePicker()
                .pickImage(source: ImageSource.camera, imageQuality: 50);
            viewModel.takeAPhoto(image ?? XFile('path'));
          } else {
            CameraPermission.instance.requestPermission();
          }
        } else {
          XFile? image =
              await ImagePicker().pickImage(source: ImageSource.gallery);
          viewModel.takeAPhoto(image ?? XFile('path'));
        }
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      elevation: 2,
      child: DefaultText(
        data: S.of(context).changeprofileimage,
        style: theme.textTheme.bodyText1!
            .copyWith(color: theme.colorScheme.secondary),
      ),
      color: theme.backgroundColor,
      itemBuilder: (context) => [
        PopupMenuItem(
            value: 'take',
            child: Row(
              children: [
                Icon(
                  Icons.camera,
                  color: theme.colorScheme.secondary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  S.of(context).takeaphoto,
                  style: theme.textTheme.bodyText1,
                ),
              ],
            )),
        PopupMenuItem(
            value: 'select',
            child: Row(
              children: [
                Icon(
                  Icons.document_scanner,
                  color: theme.colorScheme.secondary,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  S.of(context).selectgallery,
                  style: theme.textTheme.bodyText1,
                ),
              ],
            )),
      ],
    );
  }

  renderActionsButton(BuildContext context, EditProfileViewModel viewModel,
      TextEditingController nameController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DefaultButtonWithStyle(
          width: context.width * .4,
          text: S.of(context).iptal,
          onPressed: () {
            viewModel.takeAPhoto(XFile('path'));
            nameController.clear();
            nameController.text =
                FirebaseAuth.instance.currentUser!.displayName.toString();
          },
          buttonColor: Colors.red,
        ),
        DefaultButtonWithStyle(
          width: context.width * .4,
          text: S.of(context).save,
          buttonColor: Colors.green,
          onPressed: () {
            viewModel.changeProfile('', nameController.text);
          },
        ),
      ],
    );
  }

  renderDisplayName(ThemeData theme, TextEditingController nameController) {
    return DefaultTextField(
      theme: theme,
      controller: nameController,
      icon: Icons.person,
    );
  }

  renderAvatar(EditProfileViewModel viewModel) {
    return Center(
      child: DefaultAvatar(
        photoUrl: viewModel.user.photoURL,
      ),
    );
  }

  renderAppbart(ThemeData theme, BuildContext context) {
    return AppBar(
      backgroundColor: theme.backgroundColor,
      iconTheme: theme.iconTheme,
      elevation: 0,
      title: DefaultText(
        data: S.of(context).editprofile,
        style: theme.textTheme.bodyText2,
      ),
    );
  }
}
