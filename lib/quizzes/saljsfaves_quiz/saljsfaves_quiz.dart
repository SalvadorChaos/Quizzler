import 'package:flutter/material.dart';

import 'saljsfaves_quiz_page.dart';

class SalJsFavesQuiz extends StatelessWidget {
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
          child: SalJsFavesQuizPage(),
        ),
      ),
    );
  }
}
