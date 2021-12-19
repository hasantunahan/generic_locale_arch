import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:with_retro_firebase/core/base/model/basemodel.dart';
part 'myanons.g.dart';

@JsonSerializable()
class MyAnons extends BaseModel<MyAnons> {
  String? id;
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

  /* factory MyAnons.fromJson(Map<String, dynamic> json) =>
      _$MyAnonsFromJson(json); */

  // factory Map<String, dynamic> User.toJson() => _$UserToJson(this);

  @override
  MyAnons fromJson(Map<String, Object?> json) {
    return _$MyAnonsFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$MyAnonsToJson(this);
  }
}
