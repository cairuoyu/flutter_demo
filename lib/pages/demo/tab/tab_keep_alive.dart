import 'package:flutter/material.dart';

import 'data.dart';

class TabKeepAlive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var result = DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: [
          KeepAlivePage(
            title: 'page1',
          ),
          KeepAlivePage(
            title: 'page2',
          ),
        ]),
      ),
    );
    return result;
  }
}

class KeepAlivePage extends StatefulWidget {
  final String title;

  const KeepAlivePage({Key key, this.title}) : super(key: key);

  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('init--' + widget.title);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('build--' + widget.title);
    var result = TextField(
      decoration: InputDecoration(hintText: '请输入' + widget.title),
    );
    return result;
  }

  @override
  bool get wantKeepAlive => true;
}
