import 'package:flutter/material.dart';
import 'package:flutter_demo/test_page.dart';

class TabDynamic extends StatefulWidget {
  @override
  _TabDynamicState createState() => _TabDynamicState();
}

class _TabDynamicState extends State<TabDynamic> with TickerProviderStateMixin {
  TabController tabController;
  int tabNum = 3;

  @override
  Widget build(BuildContext context) {
    int index = tabController?.index ?? 0;
    index = tabNum > index ? index : tabNum - 1;
    tabController?.dispose();
    tabController =
        TabController(length: tabNum, vsync: this, initialIndex: index);
    tabController.animateTo(tabNum - 1);
    var tabs = List.generate(
      tabNum,
      (index) => Tab(
        child: Row(
          children: [
            Text('tab' + index.toString()),
            IconButton(
              splashRadius: 10,
              iconSize: 10,
              icon: Icon(Icons.close_outlined),
              onPressed: () {
                setState(() {
                  tabNum--;
                });
              },
            )
          ],
        ),
        // icon: Icon(Icons.add),
      ),
    );
    var tabPages = List.generate(
      tabNum,
      (index) => Center(
        child: TestPage(index),
      ),
    );

    var tabBar = TabBar(
      isScrollable: true,
      tabs: tabs,
      controller: tabController,
    );
    var tabBarView = TabBarView(
      children: tabPages,
      controller: tabController,
    );
    var result = Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, bottom: tabBar),
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
