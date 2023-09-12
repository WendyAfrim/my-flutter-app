import 'package:flutter/material.dart';

class Toto extends InheritedWidget {
  static Toto? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: Toto);
  }

  final data = 'this is a string';
  final title;

  const Toto({super.key, required super.child, required this.title});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
