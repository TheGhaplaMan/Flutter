import 'package:flutter/material.dart';
import './newTrans.dart';
import './transaction_list.dart';
import '../model/transaction.dart';

class UserTrans extends StatefulWidget {
  @override
  _UserTransState createState() => _UserTransState();
}

class _UserTransState extends State<UserTrans> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "t1",
      title: 'Biri',
      amount: 15.11,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: 'Chaa',
      amount: 5.11,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
