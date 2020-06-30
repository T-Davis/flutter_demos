import 'package:flutter/material.dart';

import 'questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int questionNumber = 0;
  bool isGameOver = false;
  String questionText;
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  void checkAnswer(bool userAnswer) {
    if (Questions.getQuestion(questionNumber).answer == userAnswer) {
      scoreKeeper.add(
        Icon(Icons.check, color: Colors.green),
      );
      correctAnswers++;
    } else {
      scoreKeeper.add(
        Icon(Icons.close, color: Colors.red),
      );
      incorrectAnswers++;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (questionNumber >= Questions.getNumberOfQuestions()) {
      isGameOver = true;
      questionText =
          'Finished\nYou got $correctAnswers of $questionNumber correct!';
    } else {
      questionText = Questions.getQuestion(questionNumber).question;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (!isGameOver) {
                    checkAnswer(true);
                    questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (!isGameOver) {
                    checkAnswer(false);
                    questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
