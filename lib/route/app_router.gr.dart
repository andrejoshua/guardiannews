// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:guardiannews/ui/detail.dart' as _i2;
import 'package:guardiannews/ui/list.dart' as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NewsListRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.NewsListPage(),
      );
    },
    NewsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.NewsDetailPage(
          args.url,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.NewsListPage]
class NewsListRoute extends _i3.PageRouteInfo<void> {
  const NewsListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          NewsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsListRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NewsDetailPage]
class NewsDetailRoute extends _i3.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({
    required String url,
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          NewsDetailRoute.name,
          args: NewsDetailRouteArgs(
            url: url,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailRoute';

  static const _i3.PageInfo<NewsDetailRouteArgs> page =
      _i3.PageInfo<NewsDetailRouteArgs>(name);
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final _i4.Key? key;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{url: $url, key: $key}';
  }
}
