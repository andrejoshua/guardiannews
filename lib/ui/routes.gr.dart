// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'list.dart';

class Routes {
  static const String newsListPage = '/';
  static const String toNewsDetail = '/list';
  static const all = <String>{
    newsListPage,
    toNewsDetail,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.newsListPage, page: NewsListPage),
    RouteDef(Routes.toNewsDetail, page: NewsDetailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    NewsListPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NewsListPage(),
        settings: data,
      );
    },
    NewsDetailPage: (data) {
      final args = data.getArgs<NewsDetailPageArguments>(
        orElse: () => NewsDetailPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NewsDetailPage(
          key: args.key,
          url: args.url,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushNewsListPage() => push<dynamic>(Routes.newsListPage);

  Future<dynamic> pushToNewsDetail({
    Key key,
    String url,
  }) =>
      push<dynamic>(
        Routes.toNewsDetail,
        arguments: NewsDetailPageArguments(key: key, url: url),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NewsDetailPage arguments holder class
class NewsDetailPageArguments {
  final Key key;
  final String url;
  NewsDetailPageArguments({this.key, this.url});
}
