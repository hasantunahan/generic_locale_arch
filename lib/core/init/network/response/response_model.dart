import 'package:json_annotation/json_annotation.dart';
part 'response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseData<T> {
  int? code;
  // @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson, includeIfNull: true)
  T? data;
  dynamic meta;

  ResponseData({this.code, this.data, this.meta});

  factory ResponseData.fromJson(
      dynamic json, T Function(Object? json) fromJsonT)  =>
      _$ResponseDataFromJson(json as Map<String, dynamic>, (json) {
        return fromJsonT(json);
      });
}
