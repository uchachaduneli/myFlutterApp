import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handlerFunc;
  final String answerText;

  Answer(this.handlerFunc, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50, right: 50),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(this.answerText),
        onPressed: handlerFunc,
      ),
    );
  }
}
