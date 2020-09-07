import 'package:guardiannews/data/client.dart';
import 'package:guardiannews/data/response/news.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NewsApi {
  final ApiClient _client;

  NewsApi(this._client);

  Future<NewsResponse> getNews({int page = 1, int offset = 20}) async {
    var url = "search?page-size=$offset&page=$page";

    var response = await _client.dio.get<Map<String, dynamic>>(url);
    if (response.statusCode == 200) {
      var actualResponse = response.data['response'] as Map<String, dynamic>;
      return NewsResponse.fromJson(actualResponse);
    } else {
      throw Exception("Failed to load");
    }
  }
}
