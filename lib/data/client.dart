import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:guardiannews/di/di.dart';

class ApiClient {
  static ApiClient init() {
    final dio = getIt<Dio>();
    return ApiClient._(dio);
  }

  final Dio _dio;

  ApiClient._(this._dio);

  Future<Map<String, dynamic>> get(String path,
      {Map<String, dynamic>? queryParams}) {
    return _dio
        .get<String>(path, queryParameters: queryParams)
        .then((value) => jsonDecode(value.data!) as Map<String, dynamic>);
  }
}
