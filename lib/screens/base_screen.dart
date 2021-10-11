import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import '../constants/font_styles.dart';

import './card_screen.dart';
import './home_screen.dart';

class BaseScreem extends StatefulWidget {
  const BaseScreem({Key? key}) : super(key: key);

  @override
  _BaseScreemState createState() => _BaseScreemState();
}

class _BaseScreemState extends State<BaseScreem> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    CardScreen(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Bank',
          style: FontStyles.bodyText,
        ),
        leading: const Padding(
          padding: EdgeInsets.all(9.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                'https://static.wixstatic.com/media/9ff327_eb6a41d4fe6148b18aced5eeae35dfd0~mv2.jpg/v1/fill/w_242,h_277,al_c,q_80,usm_0.66_1.00_0.01/Erisvaldo%20Correia_editado.webp'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),

      //Paginations
      body: _widgetOptions.elementAt(_selectedIndex),

      //Navigations
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.creditCard), label: 'Cards'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.chartBar), label: 'Overview'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cog), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
