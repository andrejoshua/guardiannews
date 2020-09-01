import 'package:get_it/get_it.dart';
import 'package:guardiannews/di/di.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() => $initGetIt(getIt);
