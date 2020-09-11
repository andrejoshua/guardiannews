import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guardiannews/ui/routes.gr.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian News',
      color: Colors.white,
      builder: ExtendedNavigator.builder(router: Router(), initialRoute: '/'),
    );
  }
}
