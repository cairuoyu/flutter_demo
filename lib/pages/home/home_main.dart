import 'package:flutter/material.dart';
import 'package:flutter_demo/model/demo.dart';
import 'package:get/get.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  List<Demo> list = <Demo>[
    Demo(id: 'tabs', name: 'Tabs', routeName: '/tab', icon: Icon(Icons.tab)),
    // Demo(id: 'buttons', name: 'Buttons', widget: Center(child: Text('开发中')), icon: Icon(Icons.smart_button)),
  ];

  @override
  Widget build(BuildContext context) {
    var listView = ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        Demo demo = list[index];
        return ListTile(
          leading: demo.icon,
          title: Text(demo.name),
          onTap: () {
            demo.routeName == null
                ? Get.to(demo.widget)
                : Get.toNamed(demo.routeName);
          },
        );
      },
    );
    var result = Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: listView,
    );
    return result;
  }
}
