import 'package:flutter/material.dart';
import './question.dart';

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
      "What is your fav color?",
      "What is your fav animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First try lol"),
        ),
        body: Column(
          children: [
            Question(
              que[_queIndex],
            ),
            ElevatedButton(
              child: Text("RED"),
              onPressed: answerQ,
            ),
            ElevatedButton(
              child: Text("GREEN"),
              onPressed: answerQ,
            ),
            ElevatedButton(
              child: Text("BLUE"),
              onPressed: () {
                //print
                print("Answer 3 chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
