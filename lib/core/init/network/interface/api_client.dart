import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:with_retro_firebase/core/init/network/api/api_service.dart';
import 'package:with_retro_firebase/core/init/network/response/response_model.dart';
import 'package:with_retro_firebase/ui/splash/model/user.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiService.users)
  Future<ResponseData<List<User>>> getUsers();
}
