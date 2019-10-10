import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function funcHandler;
final String answertext;

Answer(this.funcHandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answertext),
        onPressed: funcHandler,
      ),
    );
  }
}
