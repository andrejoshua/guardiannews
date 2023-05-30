import 'package:flutter/material.dart';
import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/domain/usecase/get_news.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'news.g.dart';

@injectable
class NewsStore = _NewsStore with _$NewsStore;

abstract class _NewsStore with Store {
  final GetNewsUseCase _getNews;

  _NewsStore(this._getNews);

  @computed
  ObservableList<News> get items => _items;

  @action
  void fetchItems() {
    _getNews.execute().then((value) {
      _items.clear();
      _items.addAll(value);
    });
  }

  @protected
  @observable
  ObservableList<News> _items = ObservableList();
}
