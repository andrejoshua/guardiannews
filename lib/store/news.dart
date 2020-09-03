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

  @observable
  ObservableList<News> items = ObservableList();

  @action
  Future<void> fetchItems() async {
    _repository.getNews().then((value) {
      items.clear();
      items.addAll(value);
    });
  }
}
