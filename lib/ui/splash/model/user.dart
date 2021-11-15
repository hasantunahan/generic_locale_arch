import 'package:json_annotation/json_annotation.dart';
import 'package:with_retro_firebase/core/base/model/basemodel.dart';
part 'user.g.dart';

@JsonSerializable()
class User extends BaseModel<User> {
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

  @override
  User fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
