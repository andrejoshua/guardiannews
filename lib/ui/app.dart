import 'package:flutter/material.dart';
import 'package:guardiannews/route/app_router.dart';

// This widget is the root of your application.
class MyApp extends StatelessWidget {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Guardian News',
      color: Colors.white,
      routerConfig: _router.config(),
    );
  }
}
