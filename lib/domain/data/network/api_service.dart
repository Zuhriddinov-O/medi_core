import 'dart:async';
import 'package:dio/dio.dart' hide Headers;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import "package:retrofit/retrofit.dart";
import '../model/doctors_model.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;

  @GET("doctors")
  Future<List<Doctors>> getDoctors();

  @GET("users")
  Future<HttpResponse> getUsers();
}

Dio buildDioClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);
  dio.interceptors.addAll([
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
      compact: true,
      request: true,
      responseHeader: true,
      maxWidth: 90,
    )
  ]);
  return dio;
}
