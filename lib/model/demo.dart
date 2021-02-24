import 'package:flutter/material.dart';

class Demo{
  String id;
  String name;
  String routeName;
  Widget widget;
  Icon icon;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  Demo({
    this.id,
    this.name,
    this.routeName,
    this.widget,
    this.icon,
  });

  Demo copyWith({
    String id,
    String name,
    String routeName,
    Widget widget,
    Icon icon,
  }) {
    return new Demo(
      id: id ?? this.id,
      name: name ?? this.name,
      routeName: routeName ?? this.routeName,
      widget: widget ?? this.widget,
      icon: icon ?? this.icon,
    );
  }

  @override
  String toString() {
    return 'Demo{id: $id, name: $name, routeName: $routeName, widget: $widget, icon: $icon}';
  }

  @override
  bool operator ==(Object other) => identical(this, other) || (other is Demo && runtimeType == other.runtimeType && id == other.id && name == other.name && routeName == other.routeName && widget == other.widget && icon == other.icon);

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ routeName.hashCode ^ widget.hashCode ^ icon.hashCode;

  factory Demo.fromMap(Map<String, dynamic> map) {
    return new Demo(
      id: map['id'] as String,
      name: map['name'] as String,
      routeName: map['routeName'] as String,
      widget: map['widget'] as Widget,
      icon: map['icon'] as Icon,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'name': this.name,
      'routeName': this.routeName,
      'widget': this.widget,
      'icon': this.icon,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}