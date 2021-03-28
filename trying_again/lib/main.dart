import 'package:flutter/material.dart';
import 'package:trying_again/result.dart';
import './quiz.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _que = const [
    {
      "queText": "What is your fav color?",
      "answers": [
        {'text': "Red", 'score': 10},
        {'text': "Blue", 'score': 7},
        {'text': "Green", 'score': 5}
      ],
    },
    {
      "queText": "What is your fav animal?",
      "answers": [
        {'text': "Goru", 'score': 10},
        {'text': "Dumba", 'score': 8},
        {'text': "Vera", 'score': 6},
        {'text': "Khaashi", 'score': 4},
      ],
    },
    {
      "queText": "Katappa ne Bahubali ko kyu mara???",
      "answers": [
        {'text': "Bruh", 'score': 10},
        {'text': "Just let me die of cringe", 'score': 6},
      ],
    },
  ];
  var _queIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _queIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQ(int score) {
    _totalScore += score;
    setState(() {
      _queIndex = _queIndex + 1;
    });
    print(_queIndex);

    if (_queIndex < _que.length) {
      print("got more que");
    } else
      print("no more que");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First try lol"),
        ),
        body: _queIndex < _que.length
            ? Quiz(
                answerQ: _answerQ,
                queIndex: _queIndex,
                que: _que,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
