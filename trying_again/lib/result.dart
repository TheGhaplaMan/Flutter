import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = "Niceeeee";
    if (resultScore >= 11)
      resultText = "Understandable, Have a noice day";
    else if (resultScore >= 14)
      resultText = "Alright. ";
    else
      resultText = "Dude! really?";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          TextButton(
              onPressed: resetHandler,
              child: Text("Restart Quiz"),
              style: TextButton.styleFrom(
                primary: Colors.blue, // background
                //onPrimary: Colors.blue, // PS: onPrimary does not work on Textbutton smh
              )),
        ],
      ),
    );
  } 
}
