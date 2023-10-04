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
      body: Column(
        children:<Widget> [
          Expanded(child:
              Column(children: [
                Expanded(flex: 2,child:Container(color: Colors.pink),),
                Expanded(child: Stack(
                  children: [
                    Container(color: Colors.orange,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                        RedCircle(),
                      ],),
                    )
                  ],
                ))
        ],)
          ),
          Expanded(child:
            Stack(
              children: [
                Row(children: [
                  Expanded(child: Stack(
                    children: [
                      Container(color: Colors.yellow),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            RedCircle(),
                            RedCircle(),
                            SizedBox(),
                            RedCircle(),
                          ],
                        ),
                      ),
                    ],
                  )),
                  Expanded(child: Container(color: Colors.blue))
                ],
                ),
                const Center(child: Square())
              ],
            )
          )
        ],
      )
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