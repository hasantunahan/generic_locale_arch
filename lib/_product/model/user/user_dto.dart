import 'package:json_annotation/json_annotation.dart';
import 'package:with_retro_firebase/core/base/model/basemodel.dart';
part 'user_dto.g.dart';

@JsonSerializable()
class UserDTO extends BaseModel<UserDTO> {
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

  @override
  UserDTO fromJson(Map<String, Object?> json) {
    return _$UserDTOFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$UserDTOToJson(this);
  }
}
