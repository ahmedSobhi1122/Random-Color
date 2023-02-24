import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(Random());
}

class Random extends StatefulWidget {
  const Random({Key? key}) : super(key: key);

  @override
  State<Random> createState() => _RandomState();
}

class _RandomState extends State<Random> {
  Color col = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
          onTap: (){
            setState(() {
              col=
                  Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
            });
          },
          child: Container(
            color: col,
            child: Center(
                child: Text(
              'Hey there',
              style: TextStyle(fontSize: 30),
            )),
          ),
        ),
      ),
    );
  }
}
