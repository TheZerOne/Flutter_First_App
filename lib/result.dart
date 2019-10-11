import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = "you are awesome";
    } else if (resultScore <= 8) {
      resultText = "you are okay";
    } else {
      resultText = "you are bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
