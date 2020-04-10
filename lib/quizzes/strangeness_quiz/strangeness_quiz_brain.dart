import '../../question.dart';

class StrangenessQuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'A group of crows is called a murder.',
      true,
    ),
    Question(
      'Dead people cannot get goosebumps.',
      false,
    ),
    Question(
      'Canada developed a "gaydar" machine in the 1960s.',
      true,
    ),
    Question(
      'People can sneeze while sleeping.',
      false,
    ),
    Question(
      'The CIA developed a gun that shot a disintegrating dart that could cause fatal heart attacks and could not be detected in an autopsy.',
      true,
    ),
    Question(
      'A virus can be killed.',
      false,
    ),
    Question(
      'The ancient civilization of the Mayans were practically making runways that could only be seen from the sky. Some people agree that "Gods" came from the sky to give Earth technology. The Mayans\' petroglyphs/hieroglyphics show the same.',
      true,
    ),
    Question(
      'The Dalai Lama was a CIA agent.',
      true,
    ),
    Question(
      'Your third eye is not actually an eye.',
      false,
    ),
    Question(
      'Humans have admitted to making some Crop Circles as hoaxes, but some of them are impossible to recreate and remain unexplained.',
      true,
    ),
    Question(
      'Recently, scientists have finally confirmed that dreams don\'t really mean anything.',
      false,
    ),
    Question(
      'Project MK-Ultra was a mind control program where The CIA conducted hundreds of experiments on human beings, some of which were illegal.',
      true,
    ),
    Question(
      'Not only does the layout of the three pyramids of Giza match the three stars of Orion\'s belt with uncanny precision but using astronomical computer programs we know that Orion\'s belt was once directly above the pyrimids around 10500BC, suggesting the pyrimids are a lot older than what history books say (2500BC).',
      true,
    ),
    Question(
      '299792 are the first six digits of The Speed of Light. 299792 are also the first six digits of the coordinates of The Great Pyramid of Giza.',
      true,
    ),
    Question(
      'The CIA conducted an autopsy on an alien recovered from the 1947 UFO crash near Roswell.',
      false,
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
