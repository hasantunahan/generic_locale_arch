import 'package:json_annotation/json_annotation.dart';
import 'package:with_retro_firebase/core/base/model/basemodel.dart';
part 'test.g.dart';

@JsonSerializable()
class Test extends BaseModel<Test> {
  String? name;

  Test({
    this.name,
  });

  @override
  Test fromJson(Map<String, Object?> json) {
    return _$TestFromJson(json);
  }

  @override
  Map<String, Object?> toJson() {
    return _$TestToJson(this);
  }
}
