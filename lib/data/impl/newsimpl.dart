import 'package:guardiannews/data/api/news.dart';
import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/domain/repo/news.dart';
import 'package:intl/intl.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsApi _api;

  NewsRepositoryImpl(this._api);

  @override
  Future<List<News>> getNews({int page = 1, int offset = 20}) async {
    return _api.getNews(page: page, offset: offset).then((value) => value.data
        .map((e) => News(e.webTitle, e.sectionName, e.webUrl,
            new DateFormat("yyyy-MM-ddTHH:mm:ssZ").parse(e.webPublicationDate)))
        .toList());
  }
}
