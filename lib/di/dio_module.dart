import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @preResolve
  Dio get dio {
    var options = new BaseOptions(
        receiveTimeout: 3000,
        connectTimeout: 5000,
        baseUrl: "https://content.guardianapis.com/",
        queryParameters: {
          "api-key": "6780087e-75d8-4e95-aed4-4e7b60aa26b2",
        });
    var dio = new Dio(options);
    return dio;
  }
}
