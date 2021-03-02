import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/demo/tab/tab_dynamic.dart';
import 'package:flutter_demo/pages/demo/tab/tab_simple.dart';
import 'package:flutter_demo/pages/demo/tab/tab_simple_default.dart';

class TabMain extends StatefulWidget {
  @override
  _TabMainState createState() => _TabMainState();
}

class _TabMainState extends State<TabMain> {
  @override
  Widget build(BuildContext context) {
    var tabs = <Tab>[
      Tab(text: 'Simple'),
      Tab(text: 'SimpleDefault'),
      Tab(text: 'Dynamic',)
    ];
    var tabBarViews = [
      TabSimple(),
      TabSimpleDefault(),
      TabDynamic(),
    ];
    var result = DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(title: Text('Tab-Demo'), bottom: TabBar(tabs: tabs)),
        body: TabBarView(children: tabBarViews),
      ),
    );
    return result;
  }
}
