import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ExampleState();
}

class _ExampleState extends State<List> {
  Color _color = Colors.amber;

  void _changeColor() {
    setState(() {
      _color = _color != Colors.amber ? Colors.amber : Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                title: Text('Firstname $index', style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                )),
                subtitle: Text('$index rue du Faubourg saint Antoine', style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18
                )),
              );
            }
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {

  const Square({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class RedCircle extends StatelessWidget {

  const RedCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.red,
      ),
    );
  }
}