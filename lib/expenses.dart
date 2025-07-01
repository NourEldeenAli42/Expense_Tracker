import 'package:expenses/Widgets/expenses_list/expense_item.dart';
import 'package:expenses/Widgets/expenses_list/expenses_list.dart';
import 'package:expenses/Widgets/new_expense.dart';
import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseItem> _registeredExpenses = [
    ExpenseItem(
      Expense(
        category: Category.food,
        title: 'Lunch',
        date: DateTime.now(),
        amount: 12.50,
      ),
    ),
    ExpenseItem(
      Expense(
        category: Category.travel,
        title: 'Some long shitty shitty shit shit',
        date: DateTime.now(),
        amount: 40.00,
      ),
    ),
  ];

  void addExpense(Category c, String s, DateTime d, double a) {
    _registeredExpenses.add(
      ExpenseItem(Expense(title: s, category: c, amount: a, date: d)),
    );
    setState(() {});
    Navigator.of(context).pop();
  }

  void removeExpense(ExpenseItem expense){
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(addExpense: addExpense),
      isScrollControlled: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('The chart!'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses, onDismissed: removeExpense)),
            Text('The total amount!'),
          ],
        ),
      ),
    );
  }
}
