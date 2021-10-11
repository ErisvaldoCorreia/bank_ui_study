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

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawOpen = false;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CardScreen(),
    CardScreen(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: const Duration(microseconds: 350),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              offset: Offset(-30, 30),
              blurRadius: 20,
            ),
          ],
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'My Bank',
              style: FontStyles.bodyText,
            ),
            leading: Padding(
              padding: const EdgeInsets.all(9.0),
              child: !isDrawOpen
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          xOffset = MediaQuery.of(context).size.height * 0.28;
                          yOffset = MediaQuery.of(context).size.height * 0.20;
                          scaleFactor = 0.6;
                          isDrawOpen = true;
                        });
                      },
                      icon: const Icon(
                        FontAwesomeIcons.bars,
                        color: Colors.black,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawOpen = false;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
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
        ),
      ),
    );
  }
}
