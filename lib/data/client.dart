import 'package:dio/dio.dart';
import 'package:guardiannews/data/req.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiClient {
  Dio _dio;

  ApiClient(Requirements requirements) {
    var options = new BaseOptions(
        receiveTimeout: 3000,
        connectTimeout: 5000,
        baseUrl: requirements.getBaseUrl(),
        queryParameters: {
          "api-key": "6780087e-75d8-4e95-aed4-4e7b60aa26b2",
        });
    _dio = new Dio(options);
  }

  Dio get dio => _dio;
}
