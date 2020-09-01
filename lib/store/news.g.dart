// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsStore on _NewsStore, Store {
  final _$fetchItemsFutureAtom = Atom(name: '_NewsStore.fetchItemsFuture');

  @override
  ObservableFuture<List<News>> get fetchItemsFuture {
    _$fetchItemsFutureAtom.reportRead();
    return super.fetchItemsFuture;
  }

  @override
  set fetchItemsFuture(ObservableFuture<List<News>> value) {
    _$fetchItemsFutureAtom.reportWrite(value, super.fetchItemsFuture, () {
      super.fetchItemsFuture = value;
    });
  }

  final _$itemsAtom = Atom(name: '_NewsStore.items');

  @override
  List<News> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<News> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$fetchItemsAsyncAction = AsyncAction('_NewsStore.fetchItems');

  @override
  Future<dynamic> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
fetchItemsFuture: ${fetchItemsFuture},
items: ${items}
    ''';
  }
}
