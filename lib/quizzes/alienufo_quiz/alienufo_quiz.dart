import 'package:flutter/material.dart';

import 'alienufo_quiz_page.dart';

class AlienUFOQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Colors.black,
          brightness: Brightness.dark,
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: AlienUFOQuizPage(),
        ),
      ),
    );
  }
}
