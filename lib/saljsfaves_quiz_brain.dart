import 'question.dart';

class SalJsFavesQuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'Sal J\'s favorite colors are green and black.',
      true,
    ),
    Question(
      'Sal J\'s favorite type of food is italian food.',
      true,
    ),
    Question(
      'Sal J\'s favorite show is Rick and Morty.',
      false,
    ),
    Question(
      'Sal J\'s favorite movie is a tie between Vanilla Sky and Inception.',
      true,
    ),
    Question(
      'Sal J\'s favorite musical artist is Slipknot.',
      false,
    ),
    Question(
      'Sal J prefers DC comics over Marvel comics.',
      true,
    ),
    Question(
      'Sal J doesn\'t know how to whistle.',
      true,
    ),
    Question(
      'Sal J doesn\'t know how to snap his fingers.',
      false,
    ),
    Question(
      'Sal J\'s favorite show is Lost.',
      true,
    ),
    Question(
      'Sal J\'s favorite passtime is to consume stories (books, movies, shows, etc).',
      true,
    ),
    Question(
      'Sal J\'s favorite superhero/antihero is Deadpool.',
      false,
    ),
    Question(
      'Sal J\'s favorite superhero/antihero is Lobo.',
      true,
    ),
    Question(
      'Sal J\'s favorite social media is Twitter.',
      true,
    ),
    Question(
      'Sal J believes The Ancient Astronaut Hypothesis to be true.',
      true,
    ),
    Question(
      'Sal J believes The Simulation Hypothesis to be true.',
      true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      print('User is finished');
      return true;
    } else {
      print('User is not finished');
      return false;
    }
  }

  int reset() {
    _questionNumber = 0;
  }

  int getNumberOfQuestions() {
    return _questionBank.length;
  }

  List<int> _correctScoreKeeper = [];

  List<int> correctScoreKeeper() {
    return _correctScoreKeeper;
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = getCorrectAnswer();
    if (userPickedAnswer == correctAnswer) {
      print('User got it right!');
      return _correctScoreKeeper.add(1);
    }
  }

  int getFinalScore() {
    return _correctScoreKeeper.length;
  }

  int resetFinalScore() {
    _correctScoreKeeper = [];
  }
}
