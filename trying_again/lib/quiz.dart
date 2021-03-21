import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> que;
  final int queIndex;
  final Function answerQ;

  Quiz({@required this.que, @required this.answerQ, @required this.queIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          que[queIndex]["queText"],
        ),
        ...(que[queIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQ(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
