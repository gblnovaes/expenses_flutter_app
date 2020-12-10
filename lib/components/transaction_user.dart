import 'dart:math';

import 'package:expenses_flutter_app/components/transaction_form.dart';
import 'package:expenses_flutter_app/components/transaction_list.dart';
import 'package:expenses_flutter_app/models/transactions.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  TransactionUser({Key key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tenis de Corrida',
      value: 310.20,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 215.40,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() => {_transactions.add(newTransaction)});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TransactionForm(_addTransaction),
          TransactionList(
            transactions: _transactions,
          ),
        ],
      ),
    );
  }
}
