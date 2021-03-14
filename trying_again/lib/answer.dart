import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answertext;

  Answer(this.selectHandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white38, // background
          onPrimary: Colors.black, // foreground
        ),
        onPressed: selectHandler,
        child: Text(answertext),
      ),
    );
  }
}
