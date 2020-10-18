import 'package:flutter/material.dart';
import 'package:flutter_form_scratsh_with_max/widget/answer.dart';
import 'package:flutter_form_scratsh_with_max/widget/questionIndex.dart';


class QuizCondition extends StatelessWidget {
  final List<Map<String, Object>> question;

  final int questionIndex;

  final Function answerGuestion;


  QuizCondition({@required this.question, @required this.questionIndex, @required this.answerGuestion,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((question[questionIndex]['question'])),
    // 23 vdieo
    ...((question[questionIndex]['answer']) as List<String>)
        .map((e) {
    return Answer(answerGuestion, e);
    }).toList()
      ],
    );
  }
}
