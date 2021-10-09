import 'package:bank_ui_study/constants/font_styles.dart';
import 'package:bank_ui_study/models/card_model.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final CardModel card;
  const MyCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.84,
      //height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: card.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARD NAME",
                    style: FontStyles.cardTitle,
                  ),
                  Text(
                    card.cardHolderName,
                    style: FontStyles.cardSubTitle,
                  ),
                ],
              ),
              Text(
                card.cardNumber,
                style: FontStyles.cardSubTitle,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXP DATE",
                        style: FontStyles.cardTitle,
                      ),
                      Text(
                        card.cardExpireDate,
                        style: FontStyles.cardSubTitle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVV NUMBER",
                        style: FontStyles.cardTitle,
                      ),
                      Text(
                        card.cardCVV,
                        style: FontStyles.cardSubTitle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.network(
                  'https://marcas-logos.net/wp-content/uploads/2020/03/Mastercard-Logo-1.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
