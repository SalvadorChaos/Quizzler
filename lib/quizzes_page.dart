import 'package:flutter/material.dart';

class QuizzesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Card(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                height: 36.0,
              ),
              Center(
                child: Text(
                  'Coming Soon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                  ),
                ),
              ),
              SizedBox(
                height: 72.0,
              ),
              Container(
                child: Center(
                  child: FlatButton(
                    child: Text(
                      'Go Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
