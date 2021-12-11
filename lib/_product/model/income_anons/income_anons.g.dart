// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_anons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeAnons _$IncomeAnonsFromJson(Map<String, dynamic> json) => IncomeAnons(
      id: json['id'] as int?,
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
    );

Map<String, dynamic> _$IncomeAnonsToJson(IncomeAnons instance) =>
    <String, dynamic>{
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
    };
