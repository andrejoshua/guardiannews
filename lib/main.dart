import 'package:flutter/material.dart';
import 'package:guardiannews/di/di.dart';
import 'package:guardiannews/ui/list.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian News',
      home: NewsListPage(),
    );
  }
}
