import 'package:dio/dio.dart';
import 'package:guardiannews/data/req.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataPreModule {
  @injectable
  Dio getDio(Requirements requirements) {
    final options = new BaseOptions(
      baseUrl: requirements.getBaseUrl(),
      contentType: "application/json; charset=utf-8",
      validateStatus: (status) =>
          status != null && (status >= 200 && status < 300),
      receiveTimeout: Duration(milliseconds: 3000),
      connectTimeout: Duration(milliseconds: 5000),
      queryParameters: {
        "api-key": "6780087e-75d8-4e95-aed4-4e7b60aa26b2",
      },
    );
    return Dio(options);
  }
}
