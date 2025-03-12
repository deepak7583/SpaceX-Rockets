import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_constants.dart';

class DioClient {
  final Dio dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl));

  DioClient() {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      compact: false,
      maxWidth: 90,
    ));
  }
}
