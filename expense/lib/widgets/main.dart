import 'package:expense/widgets/userTransactions.dart';
import 'package:flutter/material.dart';
import './userTransactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput; String amountInpt;
  final titlecontroller = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Expense Check'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              //the whole card will depend on the child's size
              width: double.infinity,
              child: Card(
                color: Colors.redAccent,
                child: Text(
                  'CHART!',
                  textAlign: TextAlign.center,
                ),
                elevation: 5,
              ),
            ),
            UserTrans()
          ],
        ));
  }
}
