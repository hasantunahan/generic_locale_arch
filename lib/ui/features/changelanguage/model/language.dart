import 'package:json_annotation/json_annotation.dart';
part 'language.g.dart';

@JsonSerializable()
class Language {
  int? id;
  bool? active;
  String? name;
  String? url;

  Language({
    this.id,
    this.active,
    this.name,
    this.url,
  });

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  // factory Map<String, dynamic> User.toJson() => _$UserToJson(this);
}
