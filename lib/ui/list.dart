import 'package:flutter/material.dart';
import 'package:guardiannews/di/di.dart';
import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/store/news.dart';

class NewsListPage extends StatefulWidget {
  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  final NewsStore store = getIt<NewsStore>();

  @override
  void initState() {
    store.fetchItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return NewsListItem(
              item: store.items[index],
            );
          },
          itemCount: store.items.length,
        ),
      ),
    );
  }
}

class NewsListItem extends StatelessWidget {
  final News item;

  const NewsListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  bottom: 4.0,
                ),
                child: Text(item.headline),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: Text(item.section),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(item.headline),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
