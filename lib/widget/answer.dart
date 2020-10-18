import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String ansText;

  Answer(this.selectHandler, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal,
        onPressed: selectHandler,
        child: Text(ansText,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
