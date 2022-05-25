// import 'package:flutter/material.dart';
// import './new_transaction.dart';
// import './transaction_list.dart';
// import '../models/transaction.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   State<UserTransactions> createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   final List<Transaction> _userTransactions = [
//     Transaction(
//       id: '001',
//       titile: 'New system',
//       amount: 1926.55,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '002',
//       titile: 'New phone',
//       amount: 577.97,
//       date: DateTime.now(),
//     ),
//   ];
//   void _addNewTransaction(String txTitle, double txAmount) {
//     final NewTx = Transaction(
//         id: DateTime.now().toString(),
//         titile: txTitle,
//         amount: txAmount,
//         date: DateTime.now());

//     setState(() {
//       _userTransactions.add(NewTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
//         TransactionList(_userTransactions),
//       ],
//     );
//   }
// }
