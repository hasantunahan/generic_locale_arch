import 'package:with_retro_firebase/core/base/model/basemodel.dart';
import 'package:with_retro_firebase/core/init/network/response/response_model.dart';

extension _ParserExtension on ResponseData {
  R? _responseParser<R, T>(BaseModel model, dynamic data) {
    if (data is List) {
      return data.map((e) => model.fromJson(e)).toList().cast<T>() as R;
    } else if (data is Map) {
      return model.fromJson(data as Map<String, Object>) as R;
    }
    return data as R?;
  }
}
