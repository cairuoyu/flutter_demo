import 'package:flutter/material.dart';

class DemoItem{
  String id;
  String name;
  String codePath;
  Widget widget;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  DemoItem({
    this.id,
    this.name,
    this.codePath,
    this.widget,
  });

  DemoItem copyWith({
    String id,
    String name,
    String codePath,
    Widget widget,
  }) {
    return new DemoItem(
      id: id ?? this.id,
      name: name ?? this.name,
      codePath: codePath ?? this.codePath,
      widget: widget ?? this.widget,
    );
  }

  @override
  String toString() {
    return 'DemoItem{id: $id, name: $name, codePath: $codePath, widget: $widget}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DemoItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          codePath == other.codePath &&
          widget == other.widget);

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ codePath.hashCode ^ widget.hashCode;

  factory DemoItem.fromMap(Map<String, dynamic> map) {
    return new DemoItem(
      id: map['id'] as String,
      name: map['name'] as String,
      codePath: map['codePath'] as String,
      widget: map['widget'] as Widget,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'name': this.name,
      'codePath': this.codePath,
      'widget': this.widget,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}