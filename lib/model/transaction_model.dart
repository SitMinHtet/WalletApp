import 'package:flutter/material.dart';

class Transaction {
  final String name;
  final String date;
  final String amount;

  Transaction(this.name, this.date, this.amount);
}

final transactions = [
  Transaction("John Williams", "20 March 2020", "200.88"),
  Transaction("Asian Bank", "1 March 2020", "1000.88"),
  Transaction("John Petrucci", "20 March 2020", "90.88"),
  Transaction("Andy James", "20 March 2020", "30.88"),
  Transaction("Aung Aung", "20 March 2020", "50.88"),
  Transaction("Thaw Thaw", "20 March 2020", "60.88"),
  Transaction("Adam Smith", "20 March 2020", "20.88"),
  Transaction("Aung Kyaw Oo", "20 March 2020", "90.88"),
];
