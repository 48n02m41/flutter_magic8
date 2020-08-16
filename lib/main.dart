import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Text('Ask A Question'),
            backgroundColor: Colors.blue[800],
          ),
          body: Center(child: Magic8())),
    );
  }
}

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  var random = new Random();
  int choice = 1;

  void _randomiseAnswer() {
    setState(() {
      choice = random.nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlatButton(
            onPressed: () {
              _randomiseAnswer();
            },
            child: Image.asset('images/ball$choice.png')));
  }
}
