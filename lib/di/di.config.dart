// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api/news.dart' as _i3;
import '../data/impl/news.dart' as _i5;
import '../data/module.dart' as _i9;
import '../data/req.dart' as _i7;
import '../domain/repo/news.dart' as _i4;
import '../store/news.dart' as _i6;

const String _dev = 'dev';
const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataPreModule = _$DataPreModule();
  gh.factory<_i3.NewsApi>(() => _i3.NewsApi());
  gh.factory<_i4.NewsRepository>(
      () => _i5.NewsRepositoryImpl(gh<_i3.NewsApi>()));
  gh.factory<_i6.NewsStore>(() => _i6.NewsStore(gh<_i4.NewsRepository>()));
  gh.singleton<_i7.Requirements>(
    _i7.DevRequirements(),
    registerFor: {_dev},
  );
  gh.singleton<_i7.Requirements>(
    _i7.ProdRequirements(),
    registerFor: {_prod},
  );
  gh.factory<_i8.Dio>(() => dataPreModule.getDio(gh<_i7.Requirements>()));
  return getIt;
}

class _$DataPreModule extends _i9.DataPreModule {}
