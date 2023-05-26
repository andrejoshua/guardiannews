import 'package:flutter/material.dart';
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

  @computed
  ObservableList<News> get items => _items;

  @action
  void fetchItems() {
    _repository.getNews().then((value) {
      _items.clear();
      _items.addAll(value);
    });
  }

  @protected
  @observable
  ObservableList<News> _items = ObservableList();
}
