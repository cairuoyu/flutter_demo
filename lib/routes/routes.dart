import 'package:flutter_demo/pages/demo/tab/tab_simple.dart';
import 'package:flutter_demo/pages/demo/tab/tab_dynamic.dart';
import 'package:flutter_demo/pages/demo/tab/tab_main.dart';
import 'package:flutter_demo/pages/demo/tab/tab_simple_default.dart';
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
        GetPage(name: '/tab', page: () => TabMain(), children: [
          GetPage(
            name: '/simple',
            page: () => TabSimple(),
          ),
          GetPage(
            name: '/simpleDefault',
            page: () => TabSimpleDefault(),
          ),
          GetPage(
            name: '/dynamic',
            page: () => TabDynamic(),
          ),
        ]),
      ],
    ),
  ];
}
