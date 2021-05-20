import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTX;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTX);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Title",
              ),
              controller: titleController,
              //onChanged: (val) {
              // titleInput = val;
              //},
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              controller: amountController,
              //onChanged: (val) => amountInpt = val,
            ),
            TextButton(
              child: Text(
                "Add Transaction",
              ),
              onPressed: () {
                addTX(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
