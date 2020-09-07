import 'package:flutter/material.dart';
import 'package:guardiannews/di/di.dart';
import 'package:guardiannews/ui/app.dart';

void main() {
  configureInjection('dev');
  runApp(MyApp());
}
