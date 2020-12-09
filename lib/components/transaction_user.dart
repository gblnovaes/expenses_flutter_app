import 'package:expenses_flutter_app/components/transaction_form.dart';
import 'package:expenses_flutter_app/components/transaction_list.dart';
import 'package:expenses_flutter_app/models/transactions.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatelessWidget {
  TransactionUser({Key key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TransactionList(
            transactions: _transactions,
          ),
          TransactionForm(),
        ],
      ),
    );
  }
}
