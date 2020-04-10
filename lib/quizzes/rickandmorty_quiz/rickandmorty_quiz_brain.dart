import '../../question.dart';

class RickAndMortyQuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'Rick and Morty started out as an animated short, called The Real Animated Adventurres of Doc and Mharti, which was a parody of Back to the Future.',
      true,
    ),
    Question(
      'The pilot episode of Rick and Morty was written in just a few hours.',
      true,
    ),
    Question(
      'Dan Harmon, co-creator of Rick and Morty, describes the duo as an accurate personification of bipolar disorder, with Rick being the manic side of the brain and Morty, the depressive.',
      true,
    ),
    Question(
      'The Rick and Morty we follow throughout the show live in Dimension B-147.',
      false,
    ),
    Question(
      'There\'s a character in Rick and Morty named Mr. Poopybutthole.',
      true,
    ),
    Question(
      'Rick and Morty fans started a petition to make the show an hour long instead of just a half hour.',
      false,
    ),
    Question(
      'You have to have a high IQ to understand some of the jokes in Rick and Morty.',
      false,
    ),
    Question(
      'Bryan Cranston, of Breaking Bad fame, auditioned for the role of Jerry early on in the production of Rick and Morty.',
      true,
    ),
    Question(
      'The cabel network Adult Swim released a Rick and Morty episode, before it actually aired, in the form of 109 15-second long videos on Instagram and was the first Instagram TV show premiere.',
      true,
    ),
    Question(
      'Justin Roiland, Rick and Morty co-creator, does the voices for both Rick and Morty as well as multiple other characters.',
      true,
    ),
    Question(
      'Dan Harmon, Rick and Morty co-creator, does the voice for Jerry Smith, Morty\'s dad.',
      false,
    ),
    Question(
      'Justin Roiland can’t burp on command so in order to properly perform the voice of Rick, he drinks watered down beer during the recording sessions.',
      true,
    ),
    Question(
      'Dan Harmon admits to encouraging Justin Roiland to get really drunk before recording the very drunk Rick scenes.',
      true,
    ),
    Question(
      'There\'s a lot of time travel in the show Rick and Morty.',
      false,
    ),
    Question(
      'Rick and Morty go on crazy scifi adventures together in every episode of Rick and Morty.',
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
