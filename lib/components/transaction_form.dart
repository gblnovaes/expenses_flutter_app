import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Titulo'),
                ),
                TextField(
                  controller: valueController,
                  decoration: InputDecoration(labelText: 'Valor (R\$)'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlatButton(
                      onPressed: () {
                        String title = titleController.text;
                        double value =
                            double.tryParse(valueController.text) ?? 0.0;
                        onSubmit(title, value);
                      },
                      child: Text("Nova Transação",
                          style: TextStyle(color: Colors.purple)),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
