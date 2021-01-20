import 'package:exercice_part_1/list_question_answer.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    Key key,
    @required this.questionIndex,
  }) : super(key: key);

  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      questionAnswer[questionIndex],
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
