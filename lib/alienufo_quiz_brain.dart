import 'question.dart';

class AlienUFOQuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'UFO stands for Unidentified Flying Object.',
      true,
    ),
    Question(
      'The first (well-known) UFO sighting occurred in 1947, when a pilot witnessed a group of nine high-speed objects while flying his small plane.',
      true,
    ),
    Question(
      'The U.S. Government had an official study of UFOs undertaken by the U.S. Air Force in 1948 called Project Sign.',
      true,
    ),
    Question(
      'Project Sign gathered enough evidence to deem some UFOs as Extraterrestrial in Origin.',
      false,
    ),
    Question(
      'Project Sign was succeeded by Project Grudge, which in 1952 was itself replaced by Project Blue Book which was the longest-lived of the official inquiries into UFOs.',
      true,
    ),
    Question(
      'The planet Venus is one of the objects most commonly mistaken for a UFO.',
      true,
    ),
    Question(
      'Scientists say that there are TEN TIMES more stars in our universe than there are grains of sand on the Earth.',
      true,
    ),
    Question(
      'Roswell, New Mexico, NEVER experienced sightings of a so-called flying saucer that enthralled the town.',
      false,
    ),
    Question(
      'The U.S. Government has declassified three UFO videos captured by U.S. Fighter Pilots.',
      true,
    ),
    Question(
      'Former Blink-182 singer and guitarist, Tom DeLonge, founded a UFO research organization, called To the Stars Academy of Arts and Sciences, to broaden awareness of the topic and persuade Governments to reveal what they know about UFOs.',
      true,
    ),
    Question(
      'During the presidential campaign of 1976, future President Jimmy Carter was forthcoming about his belief that he had seen an alien.',
      false,
    ),
    Question(
      'Both Ronald Reagan and Jimmy Carter have witnessed a UFO.',
      true,
    ),
    Question(
      'The mass UFO sighting that occurred on March 13,1997, known as The Phoenix Lights, was reported to the control tower at Phoenix Sky Harbor International Airport by licensed pilot and actor Kurt Russell.',
      true,
    ),
    Question(
      'In the 1990s THOUSANDS of individuals claimed that their UFO sighting had resulted in an abduction by aliens.',
      true,
    ),
    Question(
      'The Government prefers to use the term Unidentified Aerial Phenomena (UAP) because mainstream media is always linking UFOs with aliens.',
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
