import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../components/button.dart';
import '../../quizzes_page.dart';
import 'rickandmorty_quiz_brain.dart';

RickAndMortyQuizBrain rickAndMortyQuizBrain = RickAndMortyQuizBrain();

class RickAndMortyQuizPage extends StatefulWidget {
  @override
  _RickAndMortyQuizPageState createState() => _RickAndMortyQuizPageState();
}

class _RickAndMortyQuizPageState extends State<RickAndMortyQuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = rickAndMortyQuizBrain.getCorrectAnswer();
    setState(() {
      if (rickAndMortyQuizBrain.isFinished() == true) {
        rickAndMortyQuizBrain.checkAnswer(userPickedAnswer);
        int sum = rickAndMortyQuizBrain.getFinalScore();
        int numberOfQuestions = rickAndMortyQuizBrain.getNumberOfQuestions();
        print(rickAndMortyQuizBrain.correctScoreKeeper());
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
        rickAndMortyQuizBrain.reset();
        rickAndMortyQuizBrain.resetFinalScore();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          rickAndMortyQuizBrain.checkAnswer(userPickedAnswer);
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
          print('User got it wrong.');
        }
        rickAndMortyQuizBrain.isFinished();
        rickAndMortyQuizBrain.nextQuestion();
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
                rickAndMortyQuizBrain.getQuestionText(),
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
