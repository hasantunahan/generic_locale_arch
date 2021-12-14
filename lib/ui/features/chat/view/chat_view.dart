import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/_product/components/chatlist_card/chatlist_card.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/components/textfield/textfield.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/generated/l10n.dart';
import 'package:with_retro_firebase/ui/features/chat/viewmodel/chat_view_model.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextEditingController searchController = TextEditingController();
    return BaseView<ChatViewModel>(
        viewModel: ChatViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, ChatViewModel viewModel) =>
            Scaffold(
              appBar: renderAppBar(theme, context),
              body: Padding(
                padding: context.paddingNormalHorizontal,
                child: Column(
                  children: [
                    DefaultTextField(
                      theme: theme,
                      controller: searchController,
                      hintText: S.of(context).chatsearch,
                      icon: Icons.search,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: viewModel.chatList.length > 0,
                      child: Flexible(
                          child: ListView.builder(
                        itemCount: viewModel.chatList.length,
                        itemBuilder: (context, index) {
                          return ChatListCard(
                            model: viewModel.chatList[index],
                            onPress: (val) => {log(val.senderName ?? "")},
                          );
                        },
                      )),
                    )
                  ],
                ),
              ),
            ));
  }

  renderAppBar(ThemeData theme, BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: theme.backgroundColor,
      title: DefaultText(
        data: S.of(context).chats,
        style: theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
