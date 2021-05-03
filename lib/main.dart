import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    RainMusic(),
  );
}

class RainMusic extends StatelessWidget {
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Text('ath'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

// class Dicce extends StatefulWidget {
//   @override
//   _DicceState createState() => _DicceState();
// }

// class _DicceState extends State<Dicce> {
//   int lDiceNumber = 1;
//   int rDiceNumber = 1;
//   void changeDiceFace() {
//     setState(() {
//       lDiceNumber = Random().nextInt(6) + 1;
//       rDiceNumber = Random().nextInt(6) + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 changeDiceFace();
//                 print('left button click');
//               },
//               child: Image.asset('images/dice$lDiceNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 changeDiceFace();
//                 print('Right buttton click');
//               },
//               child: Image.asset('images/dice$rDiceNumber.png'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//               CircleAvatar(
//                 radius: 50.0,
//                 backgroundImage: AssetImage('images/profile.JPG'),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               Text(
//                 'Binod Shrestha',
//                 style: TextStyle(
//                     fontSize: 34.0,
//                     fontFamily: 'Pacifico',
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'I am Full Stack Developer',
//                 style: TextStyle(fontSize: 22.0, color: Colors.tealAccent[200]),
//               ),
//               SizedBox(
//                 height: 30.0,
//                 width: 240.0,
//                 child: Divider(
//                   color: Colors.teal[100],
//                 ),
//               ),
//               Card(
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     children: <Widget>[
//                       Icon(
//                         Icons.phone,
//                         color: Colors.teal,
//                       ),
//                       SizedBox(
//                         width: 20.0,
//                       ),
//                       Text(
//                         '+977-9860536317',
//                         style:
//                             TextStyle(fontSize: 18.0, color: Colors.teal[600]),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Card(
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(children: <Widget>[
//                     Icon(
//                       Icons.mail,
//                       color: Colors.teal[600],
//                     ),
//                     SizedBox(
//                       width: 20.0,
//                     ),
//                     Text(
//                       '00np10@gmail.com',
//                       style: TextStyle(fontSize: 18.0, color: Colors.teal[600]),
//                     )
//                   ]),
//                 ),
//               )
//             ])),
//       ),
//     );
//   }
// }
