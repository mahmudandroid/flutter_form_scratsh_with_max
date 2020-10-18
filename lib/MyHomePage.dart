import 'package:flutter/material.dart';
import 'package:flutter_form_scratsh_with_max/widget/answer.dart';
import 'package:flutter_form_scratsh_with_max/widget/answer_condition.dart';
import 'package:flutter_form_scratsh_with_max/widget/questionIndex.dart';
import 'package:flutter_form_scratsh_with_max/widget/quiz_condition.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  static const _question = [
    {
      'question': 'what\'s your name ?',
      'answer': ['mahmoud', 'ali', 'khaled'],
    },
    {
      'question': 'what\'s your favtoite colot ??',
      'answer': ['red', 'blue', 'white'],
    },
    {
      'question': 'what\'s your village ? ?',
      'answer': ['elkomor', 'sal alshaef', 'haj elnor'],
    },
  ];

  void _changeQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
//    print(_questionIndex);
//    if(_questionIndex < question.length){
//      print("more index");
//    }else{
//      _questionIndex = 0 ;
//      print("last index");
//    }
//    print(_questionIndex);

//    setState(() {
//      _questionIndex = _questionIndex + 1;
//      (_questionIndex == 3) ? _questionIndex = 0 : null;
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frist APP"),
      ),
      body: _questionIndex < _question.length
          ? QuizCondition(
              answerGuestion: _changeQuestion,
              question: _question,
              questionIndex: _questionIndex,
            )
          : AnswerCondition(questionIndex: _questionIndex,)
    );
  }
}
