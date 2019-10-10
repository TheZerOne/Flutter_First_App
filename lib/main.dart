import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import 'question.dart';

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
  var questionIndex = 0;
  //reruns the build when changed
  void answerChoice() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your fav color?',
        'Answertext': ['Black', 'Blue', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s your fav place?',
        'Answertext': ['Toronto', 'Scarborough', 'York', 'Markham'],
      },
      {
        'questionText': 'What\'s your fav number?',
        'Answertext': ['1', '10', '7'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dart'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['Answertext'] as List<String>)
                .map((answer) {
              return Answer(answerChoice, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
