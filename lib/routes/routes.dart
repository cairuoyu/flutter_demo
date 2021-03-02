import 'package:flutter_demo/model/demoItem.dart';
import 'package:flutter_demo/pages/demo/demo_browser.dart';
import 'package:flutter_demo/pages/demo/tab/tab_dynamic.dart';
import 'package:flutter_demo/pages/demo/tab/tab_simple.dart';
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
          page: () => DemoBrowser(
            title: 'Demo-Tab',
            demoItems: [
              DemoItem(
                name: 'Simple',
                widget: TabSimple(),
                codePath: 'lib/pages/demo/tab/tab_simple.dart',
              ),
              DemoItem(
                name: 'SimpleDefault',
                widget: TabSimpleDefault(),
                codePath: 'lib/pages/demo/tab/tab_simple_default.dart',
              ),
              DemoItem(
                name: 'Dynamic',
                widget: TabDynamic(),
                codePath: 'lib/pages/demo/tab/tab_dynamic.dart',
              ),
            ],
          ),
        ),
      ],
    ),
  ];
}
