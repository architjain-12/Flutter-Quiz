import 'package:flutter/cupertino.dart';

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _score=0;
  List<Question> _questionBank = [
    Question('Someone can be affected for a time of 2 days to 2 weeks and not show symptoms.', true),
    Question('Wearing a mask prevents Coronavirus.', false),
    Question('Is CoronaVirus currently classified by the medical community as "AIRBORNE"? ', false),
    Question('The virus can live on hard surface upto 3 days.', true),
    Question('Hand sanitizers needs to be at least 60% alcohol to be effective against Coronavirus.', true),
    Question('Antibiotics are effective in the treatment of CoronaVirus.', false),
    Question('Eating garlic cures CoronaVirus',
        false),
    Question(
        'Will a pneumonia or flu vaccine help protect against coronavirus?',
        false),
    Question(
        'Can a person have the flu and coronavirus at the same time?',
        true),
    Question(
        'Can mosquitoes transmit coronavirus?',
        false),
    Question('Coronavirus cannot spread through water, like in a pool or hot tub?', true),
    Question(
        'Taking a hot bath prevent the new coronavirus disease',
        false),
    Question(
        'Gargling salt water may help with a sore throat, but not coronavirus',
        true),
    Question('Drinking water every 15 minutes prevents the coronavirus from entering your lungs.' , false),
    Question('Vinegar can kill the coronavirus' , false),
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
  void updateScore(){
    _score++;
  }
  int getScore(){
    return _score;
  }
  // Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished(){
    if (_questionNumber == _questionBank.length - 1)
     { return true;}
    else
     { return false;}
  }

  void resetQuiz(){
    _questionNumber = 0;
    _score=0;
  }
}
