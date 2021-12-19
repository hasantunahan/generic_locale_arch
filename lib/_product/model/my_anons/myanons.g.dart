// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myanons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyAnons _$MyAnonsFromJson(Map<String, dynamic> json) => MyAnons(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      sender: json['sender'] as String?,
      status: json['status'] as String?,
      url: json['url'] as String?,
      text: json['text'] as String?,
      location: json['location'] as String?,
      isFavorite: json['isFavorite'] as bool?,
      date: json['date'] as String?,
      comments: json['comments'] as int?,
      likes: json['likes'] as int?,
    );

Map<String, dynamic> _$MyAnonsToJson(MyAnons instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'sender': instance.sender,
      'status': instance.status,
      'url': instance.url,
      'text': instance.text,
      'location': instance.location,
      'isFavorite': instance.isFavorite,
      'date': instance.date,
      'comments': instance.comments,
      'likes': instance.likes,
    };
