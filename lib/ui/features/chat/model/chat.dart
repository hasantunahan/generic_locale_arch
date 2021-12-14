import 'package:json_annotation/json_annotation.dart';
part 'chat.g.dart';

@JsonSerializable()
class ChatModel {
  int? id;
  int? senderid;
  String? senderName;
  String? lastMessageTime;
  String? lastMessage;
  int? unreadCount;
  String? senderPhoto;

  ChatModel({
    this.id,
    this.senderid,
    this.senderName,
    this.lastMessageTime,
    this.lastMessage,
    this.unreadCount,
    this.senderPhoto,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  // factory Map<String, dynamic> User.toJson() => _$UserToJson(this);
}
