import '../constants/colors.dart';
import '../models/card_model.dart';

List<CardModel> myCards = [
  CardModel(
    cardHolderName: 'John Doe',
    cardNumber: '**** **** **** 1234',
    cardExpireDate: '12/21',
    cardCVV: '**4',
    cardColor: kPrimaryColor,
  ),
  CardModel(
    cardHolderName: 'John Doe',
    cardNumber: '**** **** **** 4321',
    cardExpireDate: '12/23',
    cardCVV: '**7',
    cardColor: kSecondaryColor,
  ),
];
