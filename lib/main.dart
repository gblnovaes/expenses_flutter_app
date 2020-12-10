import 'package:expenses_flutter_app/components/transaction_user.dart';
import 'package:flutter/material.dart';

main() => runApp(MyHomeApp());

class ExpensesApp extends StatelessWidget {
  ExpensesApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Despesas Pessoais"),
          actions: [IconButton(icon: Icon(Icons.add), onPressed: () => {})],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text("Gráficos "),
                  elevation: 5,
                ),
              ),
              TransactionUser()
            ],
          ),
        ));
  }
}

class MyHomeApp extends StatelessWidget {
  MyHomeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpensesApp(),
    );
  }
}
