import 'package:flutter/material.dart';

class ListSimple extends StatefulWidget {
  @override
  _ListSimpleState createState() => _ListSimpleState();
}

class _ListSimpleState extends State<ListSimple> {
  @override
  Widget build(BuildContext context) {
    var result = ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('title--$index'),
          trailing: Icon(Icons.add),
        );
      },
    );
    return result;
  }
}
