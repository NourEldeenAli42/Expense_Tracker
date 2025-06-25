import 'package:expenses/Widgets/expenses_list/expenses_list.dart';
import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});
  

  @override
  State<Expenses> createState(){
    return _ExpensesState();
  }
}
class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    // Example expenses
    Expense(
      category: Category.food,
      icon: Icon(Icons.fastfood),
      title: 'Lunch',
      date: DateTime.now(),
      amount: 12.50,
    ),
    Expense(
      category: Category.travel,
      icon: Icon(Icons.directions_car),
      title: 'Gas',
      date: DateTime.now(),
      amount: 40.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('The chart!'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
            Text('The total amount!'),
          ],
        ),
      ),
    );
  }
}