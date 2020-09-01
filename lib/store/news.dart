import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/domain/repo/news.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'news.g.dart';

@injectable
class NewsStore = _NewsStore with _$NewsStore;

abstract class _NewsStore with Store {
  final NewsRepository _repository;

  _NewsStore(this._repository);

  static ObservableFuture<List<News>> emptyItems = ObservableFuture.value(null);

  @observable
  ObservableFuture<List<News>> fetchItemsFuture =
      ObservableFuture<List<News>>(emptyItems);

  @observable
  List<News> items;

  @action
  Future fetchItems() async {
    final future = _repository.getNews();
    fetchItemsFuture = ObservableFuture(future);

    future.then((value) {
      this.items = value;
    });
  }
}
