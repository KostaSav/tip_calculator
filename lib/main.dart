import 'package:flutter/material.dart';
import 'my_home_page.dart';
import 'config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      print('Changes');
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy theme mode',
      debugShowCheckedModeBanner: false,
      // theme: currentTheme.lightTheme,
      theme: currentTheme.lightTheme,
      darkTheme: currentTheme.darkTheme,
      themeMode: currentTheme.currentTheme(),
      home: MyHomePage(),
    );
  }
}
