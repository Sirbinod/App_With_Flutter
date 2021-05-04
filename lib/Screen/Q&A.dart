import 'package:flutter/material.dart';
import '../QuizZoon.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizZoon quizZoon = QuizZoon();

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Icon> score = [];

  void checkAns(bool userAnswer) {
    bool corrAns = quizZoon.getAnswer();
    setState(() {
      if (quizZoon.isFinished() == true) {
        Alert(context: context, title: 'Finished!', desc: 'you have finished')
            .show();

        quizZoon.reset();
        score = [];
      } else {
        if (userAnswer == corrAns) {
          score.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          score.add(Icon(Icons.close, color: Colors.red));
        }
        quizZoon.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: score,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizZoon.getQuestion(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  checkAns(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  checkAns(false);
                },
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[400],
    );
  }
}
