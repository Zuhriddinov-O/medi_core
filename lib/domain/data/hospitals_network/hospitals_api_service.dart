import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import '../model/hospitals_model.dart';
part "hospitals_api_service.g.dart";
@RestApi()
abstract class HospitalsApiService {
  factory HospitalsApiService(Dio dio, {String baseUrl}) = _HospitalsApiService;

  @GET("get_hospitals.php/")
  Future<List<Hospitals>> getHospitals();
}

Dio buildDioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);
  dio.interceptors.addAll([
    PrettyDioLogger(
      error: true,
      responseHeader: true,
      responseBody: true,
      requestHeader: true,
      requestBody: true,
      request: true,
      compact: true,
      maxWidth: 90,
    )
  ]);
  return dio;
}
