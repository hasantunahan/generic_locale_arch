import 'package:json_annotation/json_annotation.dart';
import 'package:with_retro_firebase/core/base/model/basemodel.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  User({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
  });


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);


  // factory Map<String, dynamic> User.toJson() => _$UserToJson(this);
}
