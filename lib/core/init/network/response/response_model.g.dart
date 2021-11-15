// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseData<T> _$ResponseDataFromJson<T>(Map<String, dynamic> json) =>
    ResponseData<T>(
      code: json['code'] as int?,
      data: _dataFromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'],
    );

Map<String, dynamic> _$ResponseDataToJson<T>(ResponseData<T> instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': _dataToJson(instance.data),
      'meta': instance.meta,
    };
