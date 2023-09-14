import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Color _color = Colors.yellow;

  void _changeColor() {
    print('changeColor');
    setState(
        () => _color = _color == Colors.yellow ? Colors.green : Colors.yellow);
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

class Square extends StatefulWidget {
  final Color color;

  const Square({super.key, required this.color});

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  Color _color = Colors.red;

  void _changeColor() {
    print('changeColor');
    setState(() => _color = _color == Colors.red ? Colors.blue : Colors.red);
  }

  @override
  void initState() {
    super.initState();
    _color = widget.color;
  }

  @override
  void didUpdateWidget(Square oldWidget) {
    super.didUpdateWidget(oldWidget);
    _color = widget.color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _color,
        ),
      ),
    );
  }
}
