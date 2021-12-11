import 'package:flutter/material.dart';
import 'package:with_retro_firebase/core/base/view/baseview.dart';
import 'package:with_retro_firebase/ui/features/chat/viewmodel/chat_view_model.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ChatViewModel>(
        viewModel: ChatViewModel(),
        onModelReady: (model) {},
        onPageBuilder: (BuildContext context, ChatViewModel viewModel) =>
            const Center(
              child: Text("Chat"),
            ));
  }
}
