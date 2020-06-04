import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/theme/ThemeStateNotifier.dart';
import 'package:flutter_dynamic_theme/view/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeStateNotifier>(
    create: (BuildContext context) => ThemeStateNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dynamic Theme Demo',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeStateNotifier>(context).currentThemeData,
      home: HomePage(),
    );
  }
}

