import 'package:flutter/material.dart';
import 'package:flutter_5iwj/list.dart';
import 'package:flutter_5iwj/square.dart';
import 'package:flutter_5iwj/user_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const HomeUser(),
    );
  }
}
