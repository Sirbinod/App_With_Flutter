import 'Question.dart';

class QuizZoon {
  int qNumber = 0;

  List<Question> questionBank = [
    Question(q: 'Are you full stack programmer?', a: true),
    Question(q: 'flutter is the mobile app framework', a: true),
    Question(q: 'fullter is use the javascript languege', a: false),
    Question(q: 'fullter can use backend for server', a: false)
  ];

  void nextQuestion() {
    if (qNumber < questionBank.length - 1) {
      qNumber++;
    }
  }

  String getQuestion() {
    return questionBank[qNumber].questionText;
  }

  bool getAnswer() {
    return questionBank[qNumber].answer;
  }

  bool isFinished() {
    if (qNumber >= questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    qNumber = 0;
  }
}
