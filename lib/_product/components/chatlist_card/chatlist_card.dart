import 'package:flutter/material.dart';
import 'package:with_retro_firebase/_product/components/avatar/avatar.dart';
import 'package:with_retro_firebase/core/components/autosizetext/text.dart';
import 'package:with_retro_firebase/core/extension/context_extension.dart';
import 'package:with_retro_firebase/core/extension/image/image_extension.dart';
import 'package:with_retro_firebase/ui/features/chat/model/chat.dart';

class ChatListCard extends StatelessWidget {
  final ChatModel model;
  final Function(ChatModel model) onPress;
  const ChatListCard({Key? key, required this.model, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        onPress(model);
      },
      child: Padding(
        padding: context.paddingNormal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultAvatar(
                  height: 45,
                  width: 45,
                  photoUrl: model.senderPhoto ?? "",
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      data: model.senderName ?? "",
                      style: theme.textTheme.bodyText2!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    DefaultText(
                        data: model.lastMessage ?? "",
                        style: theme.textTheme.bodyText1),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                DefaultText(
                    data: model.lastMessageTime ?? "",
                    style: theme.textTheme.bodyText1),
                const SizedBox(
                  height: 5,
                ),
                Visibility(
                    visible: model.unreadCount != 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: theme.colorScheme.secondary,
                      child: Center(
                        child: DefaultText(
                          data: model.unreadCount.toString(),
                          style: theme.textTheme.bodyText1!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
