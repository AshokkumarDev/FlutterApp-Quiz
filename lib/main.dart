import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      "QuestionText": "What's your favourite color?",
      "AnswerText": [
        {"text": "Blue", "score": 2},
        {"text": "Black", "score": 4},
        {"text": "Red", "score": 6},
        {"text": "Green", "score": 8}
      ],
    },
    {
      "QuestionText": "What's your favourite animal?",
      "AnswerText": [
        {"text": "Cow", "score": 10},
        {"text": "Tiger", "score": 2},
        {"text": "Lion", "score": 3},
        {"text": "Elephant", "score": 4}
      ],
    },
    {
      "QuestionText": "What's your favourite instructor?",
      "AnswerText": [
        {"text": "Max", "score": 12},
        {"text": "Jack", "score": 1},
        {"text": "Ryan", "score": 3},
        {"text": "John", "score": 20}
      ],
    },
  ];

  void _onReserButtonPressed() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _onAnswerButtonPressed(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _onAnswerButtonPressed)
            : Result(_totalScore,_onReserButtonPressed),
      ),
    );
  }
}
