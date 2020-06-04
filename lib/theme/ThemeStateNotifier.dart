import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/theme/AppTheme.dart';

enum Themes { light, dark }

class ThemeStateNotifier with ChangeNotifier {
  ThemeData _currentThemeData = AppTheme.light;
  bool isDarkTheme = false;

  void switchTheme() => isDarkTheme
      ? currentTheme = 'light'
      : currentTheme = 'dark';

  set currentTheme(theme) {
    if (theme != null) {
      isDarkTheme = theme == 'light' ? false : true;
      _currentThemeData = isDarkTheme ? AppTheme.dark : AppTheme.light;
      notifyListeners();
    }
  }

  get currentTheme => isDarkTheme ? 'dark' : 'light';
  get currentThemeData => _currentThemeData;
}