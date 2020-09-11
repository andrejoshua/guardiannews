import 'package:auto_route/auto_route_annotations.dart';
import 'package:guardiannews/ui/detail.dart';
import 'package:guardiannews/ui/list.dart';

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: NewsListPage,
      initial: true,
    ),
    AdaptiveRoute(
      path: '/list',
      name: 'toNewsDetail',
      page: NewsDetailPage,
    ),
  ],
)
class $Router {}
