import 'package:flutter/material.dart';

main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Center(
        child: Text('Despesas Pessoais'),
      ),
    )
  }
}
