import 'package:guardiannews/domain/model/news.dart';

mixin NewsRepository {
  Future<List<News>> getNews({int page = 1, int offset = 20});
}
