import 'package:dio/dio.dart';
import 'package:guardiannews/data/response/news.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class NewsApi {
  final Dio _dio;

  NewsApi(this._dio);

  Future<NewsResponse> getNews({int page = 1, int offset = 20}) async {
    var url = "search?page-size=$offset&page=$page";

    var response = await _dio.get<Map<String, dynamic>>(url);
    if (response.statusCode == 200) {
      var actualResponse = response.data['response'] as Map<String, dynamic>;
      return NewsResponse.fromJson(actualResponse);
    } else {
      throw Exception("Failed to load");
    }
  }
}
