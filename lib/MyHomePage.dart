import 'package:flutter/material.dart';
import './answer.dart';
import './questionIndex.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  static const question = [
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
      body: _questionIndex < question.length
          ? Column(
              children: [
                Question(question[_questionIndex]['question']),
                // 23 vdieo
                ...((question[_questionIndex]['answer']) as List<String>)
                    .map((e) {
                  return Answer(_changeQuestion, e);
                }).toList()
              ],
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _questionIndex = 0;
                    });
                  },
                  child: Icon(
                    Icons.done_outline,
                    color: Colors.green,
                  ),
                ),
              ],
            )),
    );
  }
}
