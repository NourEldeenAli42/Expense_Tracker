import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
enum Category {
  food,
  travel,
  leisure,
  work,
}

class Expense{
  final String id;
  final Icon icon;
  final String title;
  final DateTime date;
  final double amount;
  final Category category;

  Expense({
    required this.category,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
  }) : id = uuid.v4();
}