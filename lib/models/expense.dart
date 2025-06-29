import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
final uuid = Uuid();
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
  String get formattedDate{
    return formatter.format(date);
  }
}