import '../../question.dart';

class Quiz2Brain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'Donkey Kong got his name because his creator believed ‘donkey’ meant ‘stupid’ in English and wanted to convey the impression that the character was a “Stupid Ape”',
      true,
    ),
    Question(
      'There\'s a real psychological disorder that makes people believe that they are a cow.',
      true,
    ),
    Question(
      'Mr. Potato Head was the first toy to be advertised on TV.',
      true,
    ),
    Question(
      'Admiral Ackbar from Star Wars Episode VI: Return of the Jedi just was a man in a suit.',
      false,
    ),
    Question(
      'A duel between three people is actually called a truel.',
      true,
    ),
    Question(
      'The television was invented only two years after the invention of sliced bread.',
      true,
    ),
    Question(
      'Sonic the Hedgehog\'s full name is actually Ogilvie Maurice Hedgehog.',
      true,
    ),
    Question(
      'Iguanas only have two eyes.',
      false,
    ),
    Question(
      'The ocean takes up about 71% of Earth\'s space.',
      true,
    ),
    Question(
      'A whopping 95% of that ocean is completely unexplored.',
      true,
    ),
    Question(
      'Alligators will NOT give manatees the right of way if they are swimming near each other.',
      false,
    ),
    Question(
      'There are no cat breeds that are bred specifically to exhibit dog-like behavior.',
      false,
    ),
    Question(
      'Sunsets on Mars are blue.',
      true,
    ),
    Question(
      'In 2014, a missing woman on a vacation in Iceland was found when it was discovered that she was in the search party looking for herself.',
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
