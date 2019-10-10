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
      'color?',
      'animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dart'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(answerChoice),
            Answer(answerChoice),
            Answer(answerChoice),
          ],
        ),
      ),
    );
  }
}
