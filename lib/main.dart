import 'package:first_app/answer.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'Answertext': [
        {'text': 'Black', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your fav place?',
      'Answertext': [
        {'text': 'Toronto', 'score': 1},
        {'text': 'Scarborough', 'score': 2},
        {'text': 'York', 'score': 3},
        {'text': 'Markham', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your fav number?',
      'Answertext': [
        {'text': '1', 'score': 1},
        {'text': '5', 'score': 2},
        {'text': '7', 'score': 3},
        {'text': '10', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //reruns the build when changed
  void _answerChoice(int score) {
    _totalScore = _totalScore + score;
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dart'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerChoice,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
