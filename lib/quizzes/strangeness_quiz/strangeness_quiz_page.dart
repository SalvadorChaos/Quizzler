import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../components/button.dart';
import '../../quizzes_page.dart';
import 'strangeness_quiz_brain.dart';

StrangenessQuizBrain strangenessQuizBrain = StrangenessQuizBrain();

class StrangenessQuizPage extends StatefulWidget {
  @override
  _StrangenessQuizPageState createState() => _StrangenessQuizPageState();
}

class _StrangenessQuizPageState extends State<StrangenessQuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = strangenessQuizBrain.getCorrectAnswer();
    setState(() {
      if (strangenessQuizBrain.isFinished() == true) {
        strangenessQuizBrain.checkAnswer(userPickedAnswer);
        int sum = strangenessQuizBrain.getFinalScore();
        int numberOfQuestions = strangenessQuizBrain.getNumberOfQuestions();
        print(strangenessQuizBrain.correctScoreKeeper());
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
              gradient: LinearGradient(colors: [
                Color.fromRGBO(128, 0, 255, 1.0),
                Color.fromRGBO(255, 0, 193, 1.0)
              ]),
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
                Color.fromRGBO(255, 0, 54, 1.0),
                Color.fromRGBO(255, 106, 0, 1.0)
              ]),
            )
          ],
        ).show();
        strangenessQuizBrain.reset();
        strangenessQuizBrain.resetFinalScore();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          strangenessQuizBrain.checkAnswer(userPickedAnswer);
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
          print('User got it wrong.');
        }
        strangenessQuizBrain.isFinished();
        strangenessQuizBrain.nextQuestion();
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
                strangenessQuizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Button(
          color: Colors.green,
          title: 'True',
          onPressed: () {
            //The user picked true.
            checkAnswer(true);
          },
        ),
        Button(
          color: Colors.red,
          title: 'False',
          onPressed: () {
            //The user picked true.
            checkAnswer(false);
          },
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
