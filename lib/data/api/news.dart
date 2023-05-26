import 'package:guardiannews/data/client.dart';
import 'package:guardiannews/data/response/base.dart';
import 'package:guardiannews/data/response/news.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsApi {
  Future<BaseResponse<List<NewsResponse>>> getNews(
      {int page = 1, int offset = 20}) {
    return ApiClient.init().get("/search", queryParams: {
      "page-size": offset,
      "page": page,
    }).then((value) => BaseResponse.fromJson(
        value,
        (json) => (json! as List<dynamic>)
            .map((item) => NewsResponse.fromJson(item as Map<String, dynamic>))
            .toList(growable: false)));
  }
}
