import 'package:flutter_demo/pages/demo/tab/tab_main.dart';
import 'package:flutter_demo/pages/home/home_main.dart';
import 'package:get/get.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => HomeMain(),
      children: [
        GetPage(
          name: '/tab',
          page: () => TabMain(),
        ),
      ],
    ),
  ];
}
