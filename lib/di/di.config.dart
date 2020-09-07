// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data/client.dart';
import '../data/api/news.dart';
import '../domain/repo/news.dart';
import '../data/impl/news.dart';
import '../store/news.dart';
import '../data/req.dart';

/// Environment names
const _dev = 'dev';
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<Requirements>(() => DevRequirements(), registerFor: {_dev});
  gh.lazySingleton<Requirements>(() => ProdRequirements(),
      registerFor: {_prod});
  gh.lazySingleton<ApiClient>(() => ApiClient(get<Requirements>()));
  gh.lazySingleton<NewsApi>(() => NewsApi(get<ApiClient>()));
  gh.factory<NewsRepository>(() => NewsRepositoryImpl(get<NewsApi>()));
  gh.factory<NewsStore>(() => NewsStore(get<NewsRepository>()));
  return get;
}
