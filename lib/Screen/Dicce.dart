import 'dart:math';

import 'package:flutter/material.dart';

class Dicce extends StatefulWidget {
  @override
  _DicceState createState() => _DicceState();
}

class _DicceState extends State<Dicce> {
  int lDiceNumber = 1;
  int rDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      lDiceNumber = Random().nextInt(6) + 1;
      rDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dicce'),
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDiceFace();
                  print('left button click');
                },
                child: Image.asset('images/dice$lDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDiceFace();
                  print('Right buttton click');
                },
                child: Image.asset('images/dice$rDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
