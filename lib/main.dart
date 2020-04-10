import 'package:flutter/material.dart';

import 'alienufo_quiz_brain.dart';
import 'alienufo_quiz_page.dart';
import 'quiz1_brain.dart';
import 'quiz1_page.dart';
import 'quiz2_brain.dart';
import 'quiz2_page.dart';
import 'rickandmorty_quiz_brain.dart';
import 'rickandmorty_quiz_page.dart';
import 'saljsfaves_quiz_brain.dart';
import 'saljsfaves_quiz_page.dart';
import 'strangeness_quiz_brain.dart';
import 'strangeness_quiz_page.dart';

Quiz1Brain quiz1Brain = Quiz1Brain();

Quiz2Brain quiz2Brain = Quiz2Brain();

StrangenessQuizBrain strangenessQuizBrain = StrangenessQuizBrain();

AlienUFOQuizBrain alienUfoQuizBrain = AlienUFOQuizBrain();

RickAndMortyQuizBrain rickAndMoryQuizBrain = RickAndMortyQuizBrain();

SalJsFavesQuizBrain salJsFavesQuizBrain = SalJsFavesQuizBrain();

void main() {
  runApp(
    MaterialApp(
      title: 'Quizzler',
      initialRoute: '/',
      routes: {
        '/': (context) => Quiz1(),
        '/OriginalQuiz2': (context) => Quiz2(),
        '/AlienUFOQuiz': (context) => AlienUFOQuiz(),
      },
    ),
  );
}

class Quiz1 extends StatelessWidget {
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

class Quiz2 extends StatelessWidget {
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
          child: Quiz2Page(),
        ),
      ),
    );
  }
}

class StrangenessQuiz extends StatelessWidget {
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
          child: StrangenessQuizPage(),
        ),
      ),
    );
  }
}

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

class RickAndMortyQuiz extends StatelessWidget {
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
          child: RickAndMortyQuizPage(),
        ),
      ),
    );
  }
}

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
