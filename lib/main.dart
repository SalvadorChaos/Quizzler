import 'package:flutter/material.dart';

import 'quizzes/alienufo_quiz/alienufo_quiz.dart';
import 'quizzes/quiz_1/quiz1.dart';
import 'quizzes/quiz_2/quiz2.dart';
import 'quizzes/rickandmorty_quiz/rickandmorty_quiz.dart';
import 'quizzes/saljsfaves_quiz/saljsfaves_quiz.dart';
import 'quizzes/strangeness_quiz/strangeness_quiz.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Quizzler',
      initialRoute: '/',
      routes: {
        '/': (context) => Quiz1(),
        '/OriginalQuiz2': (context) => Quiz2(),
        '/StrangenessQuiz': (context) => StrangenessQuiz(),
        '/AlienUFOQuiz': (context) => AlienUFOQuiz(),
        '/RickAndMortyQuiz': (context) => RickAndMortyQuiz(),
        '/SalJsFavesQuiz': (context) => SalJsFavesQuiz(),
      },
    ),
  );
}
