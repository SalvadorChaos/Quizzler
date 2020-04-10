import 'package:flutter/material.dart';

import 'main.dart';

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
              //crossAxisAlignment: CrossAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        color: Colors.green,
                        child: Text(
                          '1.   Original Quiz',
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
                        color: Colors.lightBlueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.lightBlueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.red,
                        child: Text(
                          '2.   Original Quiz 2',
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
                        color: Colors.lightBlueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.lightBlueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '3.   Strangeness Quiz',
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
                        color: Colors.lightBlueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      bottom: BorderSide(
                        width: 0.75,
                        color: Colors.lightBlueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '4.   Alien/UFO Quiz',
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
                        color: Colors.lightBlueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      bottom: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '5.   Rick & Morty Quiz',
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
                        color: Colors.lightBlueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      bottom: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  height: 96.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          '6.   Sal J\'s Faves Quiz',
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
                        color: Colors.lightBlueAccent,
                      ),
                      right: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      bottom: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
                      ),
                      left: BorderSide(
                        width: 1.5,
                        color: Colors.lightBlueAccent,
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
