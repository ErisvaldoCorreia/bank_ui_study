import 'package:flutter/material.dart';

class CardModel {
  String cardHolderName;
  String cardNumber;
  String cardExpireDate;
  String cardCVV;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cardExpireDate,
    required this.cardCVV,
    required this.cardColor,
  });
}
