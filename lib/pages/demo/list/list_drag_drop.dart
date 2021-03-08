import 'package:flutter/material.dart';

class ListDragDrop extends StatefulWidget {
  @override
  _ListDragDropState createState() => _ListDragDropState();
}

class _ListDragDropState extends State<ListDragDrop> {
  List<String> _list = List.generate(50, (i) => 'title--${i}');

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: [
        for (var i = 0; i < _list.length; i++)
          ListTile(
            key: Key('key$i'),
            title: Text(_list[i]),
            trailing: Icon(Icons.drag_handle),
          ),
      ],
      onReorder: (oldIndex, newIndex) {
        print(oldIndex);
        print(newIndex);
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final element = _list.removeAt(oldIndex);
          _list.insert(newIndex, element);
        });
      },
    );
  }
}
