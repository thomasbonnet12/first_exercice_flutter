import 'package:exercice_part_1/answer.dart';
import 'package:exercice_part_1/list_question_answer.dart';
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
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
        body: questionIndex < questionAnswer.length
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Question(questionIndex: questionIndex),
                    SizedBox(height: 20),
                    ...(questionAnswer[questionIndex]['answer'] as List<String>)
                        .map((a) =>
                            Answer(answer: a, answerFunction: answerQuestion)),
                    ButtonToPageTwo(),
                  ],
                ),
              )
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
