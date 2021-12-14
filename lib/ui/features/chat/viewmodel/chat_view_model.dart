import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:with_retro_firebase/core/base/model/baseviewmodel.dart';
import 'package:with_retro_firebase/ui/features/chat/model/chat.dart';
part 'chat_view_model.g.dart';

class ChatViewModel = _ChatViewModelBase with _$ChatViewModel;

abstract class _ChatViewModelBase with Store, BaseViewModel {
  @observable
  List<ChatModel> chatList = <ChatModel>[];

  @action
  setDummy() {
    chatList.add(ChatModel(
        id: 1,
        lastMessageTime: '19:02',
        senderName: "Şerefcan Oğuz",
        lastMessage: 'Hello broooo',
        senderPhoto: 'https://tashteam.com/images/sero.png',
        unreadCount: 0,
        senderid: 2424));
    chatList.add(ChatModel(
        id: 2,
        lastMessageTime: '19:03',
        senderName: "Aşkın Esen",
        lastMessage: 'Hello broooo',
        senderPhoto: 'https://tashteam.com/images/askins.jpeg',
        unreadCount: 1,
        senderid: 2424));
    chatList.add(ChatModel(
        id: 3,
        lastMessageTime: '19:04',
        lastMessage: 'Hello broooo',
        senderName: "Tarık Umutlu",
        senderPhoto: 'https://tashteam.com/images/tarik.png',
        unreadCount: 5,
        senderid: 2424));
    chatList.add(ChatModel(
        id: 4,
        lastMessageTime: '19:05',
        senderName: "Şerooocan",
        lastMessage: 'Hello broooo',
        senderPhoto:
            'https://www.indyturk.com/sites/default/files/styles/800x600/public/article/main_image/2021/02/26/596911-804349323.jpg?itok=DAz8EGGl',
        unreadCount: 0,
        senderid: 2424));
    chatList.add(ChatModel(
        id: 5,
        lastMessageTime: '19:06',
        senderPhoto:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Emma_Watson_2013.jpg/447px-Emma_Watson_2013.jpg',
        lastMessage: 'Hello broooo',
        senderName: "Bebitomm",
        unreadCount: 0,
        senderid: 2424));
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() async {
    setDummy();
  }
}
