import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: Routes.routes,
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
