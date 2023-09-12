import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  const Square({super.key});

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  Color color = Colors.red;

  void _changeColor() {
    print('changeColor');
    setState(() => color = color == Colors.red ? Colors.blue : Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: GestureDetector(
          onTap: _changeColor,
          child: Container(
            width: 100,
            height: 100,
            color: color,
          ),
        ),
      ),
    );
  }
}
