import 'package:json_annotation/json_annotation.dart';
part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;
  String? url;

  UserDTO({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
    this.url,
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);
}
