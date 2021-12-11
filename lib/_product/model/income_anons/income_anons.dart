import 'package:json_annotation/json_annotation.dart';
part 'income_anons.g.dart';

@JsonSerializable()
class IncomeAnons {
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

  IncomeAnons({
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
  });

  factory IncomeAnons.fromJson(Map<String, dynamic> json) =>
      _$IncomeAnonsFromJson(json);

  // factory Map<String, dynamic> User.toJson() => _$UserToJson(this);
}
