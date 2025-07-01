import 'package:expenses/Widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';


class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onDismissed});
  final  List<ExpenseItem> expenses;
  final void Function(ExpenseItem) onDismissed;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) =>
          Dismissible(key: ValueKey(expenses[index]), child: expenses[index],onDismissed: (direction){
            onDismissed(expenses[index]);
          },),
    );
  }
}
