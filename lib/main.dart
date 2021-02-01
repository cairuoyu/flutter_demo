import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/demo_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getThemeData(Colors.blue),
      home: DemoTab(),
    );
  }
}

getThemeData(Color themeColor) {
  return ThemeData(
    primaryColor: themeColor,
    iconTheme: IconThemeData(color: themeColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: themeColor,
    ),
    buttonTheme: ButtonThemeData(buttonColor: themeColor),
    tabBarTheme: TabBarTheme(labelColor: themeColor,),
  );
}
