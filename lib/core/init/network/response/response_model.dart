import 'package:json_annotation/json_annotation.dart';
part 'response_model.g.dart';

@JsonSerializable()
class ResponseData<T> {
  int? code;
  @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson, includeIfNull: true)
  T? data;
  dynamic meta;

  ResponseData({this.code, this.data, this.meta});

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}

T _dataFromJson<T>(Map<String, dynamic> input) => input['value'] as T;

Map<String, dynamic> _dataToJson<T>(T input) => {'value': input};
