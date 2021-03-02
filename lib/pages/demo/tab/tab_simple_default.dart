import 'package:flutter/material.dart';

import 'data.dart';

class TabSimpleDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: tabBarViews),
      ),
    );
    return result;
  }
}
