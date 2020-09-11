import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:guardiannews/di/di.dart';
import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/store/news.dart';
import 'package:guardiannews/ui/routes.gr.dart';

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
    final cities = store.items;

    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (_) => ListView.separated(
            itemBuilder: (context, index) => NewsListItem(
              item: cities[index],
            ),
            itemCount: cities.length,
            separatorBuilder: (context, index) => Divider(
              color: Colors.white,
              height: 8.0,
            ),
          ),
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
    return InkWell(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.toNewsDetail,
            arguments: NewsDetailPageArguments(
              url: item.url,
            ));
      },
      child: Container(
        color: Colors.grey,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  bottom: 4.0,
                ),
                child: Text(
                  item.headline,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: Text(
                  item.section,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    item.publicationDateString,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
