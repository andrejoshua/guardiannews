import 'package:flutter/material.dart';
import 'package:guardiannews/ui/list.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardian News',
      color: Colors.white,
      home: NewsListPage(),
    );
  }
}
