import 'package:bank_ui_study/constants/colors.dart';
import 'package:bank_ui_study/models/transaction_model.dart';

List<TransactionModel> myTransactions = [
  TransactionModel(
    avatar:
        'https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png',
    name: 'John Doe',
    month: 'Jan',
    color: kSecondaryColor,
    currentBalance: '5842',
    percentIndicatorChange: 'down',
    percentageChange: '0,41%',
  ),
  TransactionModel(
    avatar:
        'https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png',
    name: 'John Doe',
    month: 'Apr',
    color: kPrimaryColor,
    currentBalance: '1242',
    percentIndicatorChange: 'up',
    percentageChange: '0,22%',
  ),
  TransactionModel(
    avatar:
        'https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png',
    name: 'John Doe',
    month: 'Mar',
    color: kPrimaryColor,
    currentBalance: '6000',
    percentIndicatorChange: 'up',
    percentageChange: '0,45%',
  ),
];
