import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'alienufo_quiz_brain.dart';
import 'quizzes_page.dart';

AlienUFOQuizBrain alienUfoQuizBrain = AlienUFOQuizBrain();

class AlienUFOQuizPage extends StatefulWidget {
  @override
  _AlienUFOQuizPageState createState() => _AlienUFOQuizPageState();
}

class _AlienUFOQuizPageState extends State<AlienUFOQuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = alienUfoQuizBrain.getCorrectAnswer();
    setState(() {
      if (alienUfoQuizBrain.isFinished() == true) {
        alienUfoQuizBrain.checkAnswer(userPickedAnswer);
        int sum = alienUfoQuizBrain.getFinalScore();
        int numberOfQuestions = alienUfoQuizBrain.getNumberOfQuestions();
        print(alienUfoQuizBrain.correctScoreKeeper());
        print('User got $sum out of $numberOfQuestions questions correct.');
        Alert(
          context: context,
          title: "Finished!",
          desc: "You got $sum out of $numberOfQuestions questions correct.",
          buttons: [
            DialogButton(
              child: Text(
                "Start Over",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              color: Color.fromRGBO(0, 179, 134, 1.0),
            ),
            DialogButton(
              child: Text(
                "More Quizzes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizzesPage(),
                ),
              ),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(116, 116, 191, 1.0),
                Color.fromRGBO(52, 138, 199, 1.0)
              ]),
            )
          ],
        ).show();
        alienUfoQuizBrain.reset();
        alienUfoQuizBrain.resetFinalScore();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          alienUfoQuizBrain.checkAnswer(userPickedAnswer);
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
          print('User got it wrong.');
        }
        alienUfoQuizBrain.isFinished();
        alienUfoQuizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                alienUfoQuizBrain.getQuestionText(),
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
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                checkAnswer(true);
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
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}