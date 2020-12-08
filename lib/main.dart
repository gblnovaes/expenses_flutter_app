import 'package:flutter/material.dart';

main() => runApp(MyHomeApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Despesas Pessoais"),
      ),
      body: Center(
        child: Text("Despesas Iniciais"),
      ),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpensesApp(),
    );
  }
}
