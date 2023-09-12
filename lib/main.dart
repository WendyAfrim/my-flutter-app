import 'package:flutter/material.dart';
import 'package:flutter_5iwj/toto.dart';

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
            color: Colors.amber,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const Toto(
        title: 'There is a title',
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Toto(
          title: 'Bonjour',
          child: Builder(
            builder: (context) {
              return Text(
                Toto.of(context)?.title ?? 'No title',
                style: Theme.of(context).textTheme.displayLarge,
              );
            }
          ),
        ),
      ),
    );
  }
}
