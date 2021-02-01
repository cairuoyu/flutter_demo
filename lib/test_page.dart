import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  final int n;

  TestPage(this.n);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    print(widget.n.toString() + '--testPage--initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.n.toString() + '--testPage--build');
    var body = Center(child: Text('testPage' + widget.n.toString()));
    return Scaffold(
      body: body,
    );
  }

  @override
  void didChangeDependencies() {
    print(widget.n.toString() + '--testPage--didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(TestPage oldWidget) {
    print(widget.n.toString() + '--testPage--didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print(widget.n.toString() + '--testPage--dispose');
    super.dispose();
  }

// @override
// void deactivate() {
//   print(widget.n.toString() + '--testPage--deactivate');
//   super.deactivate();
// }
}
