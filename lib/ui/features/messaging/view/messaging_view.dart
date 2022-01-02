import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/core/extension/image/svg_extension.dart';
import 'package:with_retro_firebase/ui/features/messaging/viewmodel/messaging_viewmodel.dart';

class MessagingView extends StatelessWidget {
  final args;
  MessagingView({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseView<MessagingViewModel>(
        viewModel: MessagingViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, MessagingViewModel viewModel) =>
            Scaffold(
              appBar: AppBar(
                toolbarHeight: 0,
                elevation: 0,
                backgroundColor: theme.backgroundColor,
              ),
              backgroundColor: theme.backgroundColor,
              body: Column(
                children: [
                  Padding(
                    padding: context.paddingNormal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: theme.colorScheme.primaryVariant,
                            size: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        DefaultAvatar(
                          photoUrl: args['photo'],
                          width: 36,
                          height: 36,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(args['name'].toString()),
                            Text(
                              "Çevrimiçi",
                              style: theme.textTheme.bodyText1!
                                  .copyWith(fontSize: 9),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
