import 'package:flutter/material.dart';
import 'package:flutter_application/Screen/Detail.dart';
import 'package:flutter_application/Screen/Dicce.dart';
import 'package:flutter_application/Screen/RainMusic.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MultiFeature'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.yellow,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                },
                child: Text('Profile',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20.0))),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.yellow,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dicce()));
                },
                child: Text('Dicce',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 20.0))),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
                padding: EdgeInsets.all(20.0),
                color: Colors.yellow,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RainMusic()));
                },
                child: Text(
                  'RainMusic',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }
}
