import 'package:guardiannews/domain/model/news.dart';

abstract class NewsRepository {
  Future<List<News>> getNews({int page = 1, int offset = 20});
}
