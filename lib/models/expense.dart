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
  late final String id;
  late final Icon icon;
  final String title;
  final DateTime date;
  final double amount;
  final Category category;

  Map<Category, IconData> get categoryIcons {
    return {
      Category.food: Icons.fastfood,
      Category.travel: Icons.directions_car,
      Category.leisure: Icons.movie,
      Category.work: Icons.work,
    };
  }


  Expense({
    required this.category,
    required this.title,
    required this.date,
    required this.amount,
  }){
    id = uuid.v4();
    icon = Icon(categoryIcons[category] ?? Icons.category);
  }

  String get formattedDate{
    return formatter.format(date);
  }
}