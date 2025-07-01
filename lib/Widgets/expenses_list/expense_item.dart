import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: SizedBox(
              width: 140,
              child: Text(
                '${expense.title} - \$${expense.amount.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Icon(expense.icon.icon),
              SizedBox(width: 5),
              Text(
                expense.formattedDate,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(width: 5),
              Icon(Icons.arrow_forward_ios, size: 24),
            ],
          ),
        ],
      ),
    );
  }
}
