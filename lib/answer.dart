import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function funcHandler;

Answer(this.funcHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: funcHandler,
      ),
    );
  }
}
