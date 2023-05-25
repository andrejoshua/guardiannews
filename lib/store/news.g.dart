// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsStore on _NewsStore, Store {
  Computed<ObservableList<News>>? _$itemsComputed;

  @override
  ObservableList<News> get items =>
      (_$itemsComputed ??= Computed<ObservableList<News>>(() => super.items,
              name: '_NewsStore.items'))
          .value;

  late final _$_itemsAtom = Atom(name: '_NewsStore._items', context: context);

  @override
  ObservableList<News> get _items {
    _$_itemsAtom.reportRead();
    return super._items;
  }

  @override
  set _items(ObservableList<News> value) {
    _$_itemsAtom.reportWrite(value, super._items, () {
      super._items = value;
    });
  }

  late final _$_NewsStoreActionController =
      ActionController(name: '_NewsStore', context: context);

  @override
  void fetchItems() {
    final _$actionInfo =
        _$_NewsStoreActionController.startAction(name: '_NewsStore.fetchItems');
    try {
      return super.fetchItems();
    } finally {
      _$_NewsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
