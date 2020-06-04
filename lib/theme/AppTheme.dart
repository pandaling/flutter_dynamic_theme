import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    accentColor: Colors.lightGreenAccent,
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    accentColor: Colors.blueGrey,
  );
}