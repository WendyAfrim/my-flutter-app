import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Color _color = Colors.red;

  void _changeColor() {
    print('changeColor');
    setState(() => _color = _color == Colors.red ? Colors.blue : Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Square(color: _color),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class Square extends StatelessWidget {
  final Color color;

  const Square({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
    );
  }
}
