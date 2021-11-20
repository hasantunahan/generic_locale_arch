import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../api/api_service.dart';
import '../response/response_model.dart';
import '../../../../ui/splash/model/user.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiService.users)
  Future<ResponseData<List<User>>> getUsers();
}
