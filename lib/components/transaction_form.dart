import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            TextButton(
              onPressed: () {
                onSubmit(
                  titleController.text,
                  double.tryParse(valueController.text) ?? 0.0,
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
              ),
              child: const Text('Adicionar Transação'),
            )
          ],
        ),
      ),
    );
  }
}
