import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

   NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  void submitdata(){
    final enteredTitle = titlecontroller.text;
    final enteredAmount = double.parse(amountcontroller.text);

    if(enteredTitle.isEmpty || enteredAmount <=0){
      return;
    }

    widget.addTx(
                  enteredTitle,
                  enteredAmount,
                );
      Navigator.of(context).pop(); 
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titlecontroller,
              onSubmitted: (_) => submitdata,
              // onChanged: (val) {titleInput= val;},
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountcontroller,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitdata,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: const Text('Add Transaction'),
              textColor: Theme.of(context).primaryColorDark,
              onPressed: submitdata,
            ),
          ],
        ),
      ),
    );
  }
}
