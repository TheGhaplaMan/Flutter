import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _queIndex = 0;
  void answerQ() {
    setState(() {
      _queIndex = _queIndex + 1;
    });
    print(_queIndex);
  }

  @override
  Widget build(BuildContext context) {
    var que = [
      {
        "queText": "What is your fav color?",
        "answers": ["Red", "Green", "Blue"],
      },
      {
        "queText": "What is your fav animal?",
        "answers": ["Goru", "Khashi", "Vera", "Dumbaa"],
      },
      {
        "queText": "But can Superman beat Goku??",
        "answers": [
          "Bruh",
          "Click here to die of cringe",
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First try lol"),
        ),
        body: Column(
          children: [
            Question(
              que[_queIndex]["queText"],
            ),
            ...(que[_queIndex]["answers"] as List<String>).map((answer) {
              return Answer(answerQ, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
