import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Color _color = Colors.amber;

  void _changeColor() {
    setState(() {
      _color = _color != Colors.amber ? Colors.amber : Colors.pink;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: Square(
          onTap: _changeColor,
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  final VoidCallback onTap;

  const Square({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    );
  }
}
