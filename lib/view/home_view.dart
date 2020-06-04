import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dynamic_theme/theme/ThemeStateNotifier.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Theme'),
        actions: <Widget>[
          GestureDetector(
            onTap: () => Provider.of<ThemeStateNotifier>(context, listen: false).switchTheme(),
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Provider.of<ThemeStateNotifier>(context, listen: false).currentTheme == 'dark' ? Icon(Icons.wb_sunny) : Icon(Icons.brightness_2),
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('About Me'),
                subtitle: Text('This app is about switching app theme.'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('About Me'),
                subtitle: Text('This app is about switching app theme.'),
              ),
            ),
          ],
        )
      ),
    );
  }
}