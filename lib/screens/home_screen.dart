import 'package:bank_ui_study/data/dummy_data_card.dart';
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
          children: [
            // ignore: sized_box_for_whitespace
            Container(
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
          ],
        ),
      ),
    );
  }
}
