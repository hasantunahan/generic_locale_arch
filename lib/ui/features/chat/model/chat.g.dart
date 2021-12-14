// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      id: json['id'] as int?,
      senderid: json['senderid'] as int?,
      senderName: json['senderName'] as String?,
      lastMessageTime: json['lastMessageTime'] as String?,
      lastMessage: json['lastMessage'] as String?,
      unreadCount: json['unreadCount'] as int?,
      senderPhoto: json['senderPhoto'] as String?,
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'id': instance.id,
      'senderid': instance.senderid,
      'senderName': instance.senderName,
      'lastMessageTime': instance.lastMessageTime,
      'lastMessage': instance.lastMessage,
      'unreadCount': instance.unreadCount,
      'senderPhoto': instance.senderPhoto,
    };
