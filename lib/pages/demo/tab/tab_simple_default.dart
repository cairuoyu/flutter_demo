import 'package:flutter/material.dart';

import '../data.dart';

class TabSimpleDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('SimpleDefault'),
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: tabBarViews),
      ),
    );
    return result;
  }
}
