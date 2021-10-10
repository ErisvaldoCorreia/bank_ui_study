import 'package:bank_ui_study/constants/font_styles.dart';
import 'package:bank_ui_study/data/dummy_data_card.dart';
import 'package:bank_ui_study/data/dummy_data_transaction.dart';
import 'package:bank_ui_study/screens/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

import './widgets/my_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return MyCard(card: myCards[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: myCards.length,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Recent Transactions",
              style: FontStyles.bodyText,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return TransactionTile(transaction: myTransactions[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: myTransactions.length,
            ),
          ],
        ),
      ),
    );
  }
}
