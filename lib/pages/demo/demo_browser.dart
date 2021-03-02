import 'package:flutter/material.dart';
import 'package:flutter_demo/model/demoItem.dart';

class DemoBrowser extends StatefulWidget {
  final String title;
  final List<DemoItem> demoItems;

  const DemoBrowser({
    Key key,
    this.demoItems,
    this.title,
  }) : super(key: key);

  @override
  _DemoBrowserState createState() => _DemoBrowserState();
}

class _DemoBrowserState extends State<DemoBrowser> {
  bool showCode = false;

  @override
  Widget build(BuildContext context) {
    var tabs = widget.demoItems
        .map((e) => Tab(
              text: e.name,
            ))
        .toList();
    var tabBarViews = widget.demoItems.map((e) => e.widget).toList();
    var tabBarViewsCode = widget.demoItems
        .map((e) => Center(
              child: Text('Code...')
            ))
        .toList();

    var result = DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(tabs: tabs),
          actions: [
            IconButton(
              icon: Icon(showCode ? Icons.view_quilt : Icons.code),
              onPressed: () {
                showCode = !showCode;
                setState(() {});
              },
            )
          ],
        ),
        body: TabBarView(children: showCode ? tabBarViewsCode : tabBarViews),
      ),
    );
    return result;
  }
}
