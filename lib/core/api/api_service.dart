import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spacex_rockets/models/rocket_model.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(ApiConstants.rocketsEndpoint)
  Future<List<RocketModel>> getRockets();

  @GET("${ApiConstants.rocketsEndpoint}/{id}")
  Future<RocketModel> getRocketDetails(@Path("id") String id);
}
