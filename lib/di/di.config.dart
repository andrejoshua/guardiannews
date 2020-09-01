// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dio_module.dart';
import '../data/api/news.dart';
import '../domain/repo/news.dart';
import '../data/impl/news.dart';
import '../store/news.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.factory<Dio>(() => networkModule.dio);
  gh.factory<NewsRepository>(() => NewsRepositoryImpl(get<NewsApi>()));
  gh.factory<NewsStore>(() => NewsStore(get<NewsRepository>()));

  // Eager singletons must be registered in the right order
  gh.singleton<NewsApi>(NewsApi(get<Dio>()));
  return get;
}

class _$NetworkModule extends NetworkModule {}
