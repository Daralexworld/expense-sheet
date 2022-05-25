import 'package:flutter/foundation.dart';

class Transaction {
  late String id;
  late String titile;
  late double amount;
  late DateTime date;

  Transaction(
      {required this.id,
      required this.titile,
      required this.amount,
      required this.date});
}
