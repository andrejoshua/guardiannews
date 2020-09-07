import 'package:flutter/cupertino.dart';

class AppConfig extends InheritedWidget {
  final String url;

  AppConfig({this.url, Widget child}) : super(child: child);

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
