import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/domain/repo/news.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNewsUseCase {
  GetNewsUseCase(this._repository);

  NewsRepository _repository;

  Future<List<News>> execute({int page = 1, int offset = 20}) {
    return _repository.getNews(page: page, offset: offset);
  }
}
