import 'package:flutter/material.dart';
import 'package:flutter_demo/test_page.dart';

class DemoTab extends StatefulWidget {
  @override
  _DemoTabState createState() => _DemoTabState();
}

class _DemoTabState extends State<DemoTab> with TickerProviderStateMixin {
  TabController tabController;
  int tabNum = 3;

  @override
  Widget build(BuildContext context) {
    int index = tabController?.index ?? 0;
    tabController?.dispose();
    tabController = TabController(length: tabNum, vsync: this, initialIndex: index);
    tabController.animateTo(tabNum-1);
    var tabs = List.generate(
      tabNum,
      (index) => Tab(
        text: 'tab' + index.toString(),
      ),
    );
    var tabPages = List.generate(
      tabNum,
      (index) => Center(
        child: TestPage(index),
      ),
    );

    var tabBar = TabBar(
      tabs: tabs,
      controller: tabController,
    );
    var tabBarView = TabBarView(
      children: tabPages,
      controller: tabController,
    );
    var result = Scaffold(
      appBar: tabBar,
      body: tabBarView,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            tabNum++;
          });
        },
      ),
    );
    return result;
  }
}
