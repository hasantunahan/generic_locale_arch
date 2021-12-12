import 'package:json_annotation/json_annotation.dart';
part 'myanons.g.dart';

@JsonSerializable()
class MyAnons {
  int? id;
  String? name;
  String? email;
  String? sender;
  String? status;
  String? url;
  String? text;
  String? location;
  bool? isFavorite;
  String? date;
  int? comments;
  int? likes;

  MyAnons({
    this.id,
    this.name,
    this.email,
    this.sender,
    this.status,
    this.url,
    this.text,
    this.location,
    this.isFavorite,
    this.date,
    this.comments,
    this.likes,
  });

  factory MyAnons.fromJson(Map<String, dynamic> json) =>
      _$MyAnonsFromJson(json);

  // factory Map<String, dynamic> User.toJson() => _$UserToJson(this);
}
