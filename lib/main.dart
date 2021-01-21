import 'package:exercice_part_1/answer.dart';
import 'package:exercice_part_1/list_question_answer.dart';
import 'package:exercice_part_1/quiz.dart';
import 'package:flutter/material.dart';
import 'button_to_page_two.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'First exercice',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        body: _questionIndex < questionAnswer.length
            ? Quiz(
                questionIndex: _questionIndex,
                questionAnswer: questionAnswer,
                answerQuestion: _answerQuestion)
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have answered all the questions'),
                    SizedBox(height: 20),
                    ButtonToPageTwo(),
                  ],
                ),
              ),
      ),
    );
  }
}
