import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Magicball());
}

class Magicball extends StatelessWidget {
  const Magicball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[100],
          title: Text('Ask me anything'),
        ),
        body: ball(),
      ),
    );
  }
}

class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    void changestate() {
      number = Random().nextInt(4) + 1;
    }

    return Center(
      child: Container(
        child: TextButton(
          child: Image.asset('images/ball$number.png'),
          onPressed: () {
            setState(() {
              changestate();
            });
          },
        ),
      ),
    );
  }
}
