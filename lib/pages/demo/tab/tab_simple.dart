import 'package:flutter/material.dart';

import '../data.dart';

class TabSimple extends StatefulWidget {
  @override
  _TabSimpleState createState() => _TabSimpleState();
}

class _TabSimpleState extends State<TabSimple> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var result = Scaffold(
      appBar: AppBar(
        title: Text('Simple'),
        bottom: TabBar(controller: _tabController, tabs: tabs),
      ),
      body: TabBarView(controller: _tabController, children: tabBarViews),
    );
    return result;
  }
}
