import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String percentIndicatorChange;
  String percentageChange;
  Color color;

  TransactionModel({
    required this.avatar,
    required this.name,
    required this.month,
    required this.color,
    required this.currentBalance,
    required this.percentIndicatorChange,
    required this.percentageChange,
  });
}
