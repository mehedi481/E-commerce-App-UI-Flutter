import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'helpers/size_config/size_config.dart';
import 'helpers/themes/themes.dart';
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
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
  );
}

InputDecoration inputDecoration({String? text, String? hintText, Icon? icon}) {
  return InputDecoration(
    labelText: text,
    hintText: hintText,
    suffixIcon: icon,
    contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      gapPadding: 10,
    ),
  );
}

SizedBox defaultButton({String? text,onPress}) {
  return SizedBox(
    width: ScreenSize.width * 0.9,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          kPrimaryColor,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      onPressed: onPress,
      child: Text("$text"),
    ),
  );
}
