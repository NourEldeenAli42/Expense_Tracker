import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget{
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        'Hello - \$${expense.amount.toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
    );
  }
}