import 'package:flutter/material.dart';

import 'quizzes/alienufo_quiz/alienufo_quiz.dart';
import 'quizzes/quiz_1/quiz1.dart';
import 'quizzes/quiz_2/quiz2.dart';
import 'quizzes/rickandmorty_quiz/rickandmorty_quiz.dart';
import 'quizzes/saljsfaves_quiz/saljsfaves_quiz.dart';
import 'quizzes/strangeness_quiz/strangeness_quiz.dart';

class QuizzesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: SafeArea(
          child: Card(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      'Quizzler Quizzes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 72.0,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '1.   Regular Quiz                              ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Quiz1(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '2.   Regular Quiz 2                              ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Quiz2(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '3.   Strangeness Quiz                              ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StrangenessQuiz(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '4.   Alien/UFO Quiz                              ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlienUFOQuiz(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '5.   Rick & Morty Quiz                              ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RickAndMortyQuiz(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '6.   Sal J\'s Faves Quiz                              ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          ),
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SalJsFavesQuiz(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 0.75,
                        color: Colors.blueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      bottom: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
