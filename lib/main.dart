import 'package:flutter/material.dart';

import 'quiz1_brain.dart';
import 'quiz1_page.dart';

Quiz1Brain quiz1Brain = Quiz1Brain();

void main() {
  runApp(
    MaterialApp(
      title: 'Quizzler',
      initialRoute: '/',
      routes: {
        '/': (context) => QuizzlerQuiz1(),
      },
    ),
  );
}

class QuizzlerQuiz1 extends StatelessWidget {
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
          child: Quiz1Page(),
        ),
      ),
    );
  }
}
