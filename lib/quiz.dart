import 'package:exercice_part_1/button_to_page_two.dart';
import 'package:exercice_part_1/list_question_answer.dart';
import 'package:flutter/material.dart';
import 'package:exercice_part_1/question.dart';
import 'package:exercice_part_1/answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questionAnswer;
  final Function answerQuestion;

  Quiz({
    @required this.questionIndex,
    @required this.questionAnswer,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(questionIndex: questionIndex),
          SizedBox(height: 20),
          ...(questionAnswer[questionIndex]['answer'] as List<String>).map(
            (a) {
              return Answer(
                answer: a,
                answerFunction: answerQuestion,
              );
            },
          ),
          ButtonToPageTwo(),
        ],
      ),
    );
  }
}
