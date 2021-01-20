import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerFunction;

  const Answer({Key key, @required this.answer, @required this.answerFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(answer),
      onPressed: answerFunction,
    );
  }
}
