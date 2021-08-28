import 'package:flutter/material.dart';
import 'pages/home_page/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App Design',
      theme: theme(),
      home: HomePage(),
    );
  }
}

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ),
  );
}
