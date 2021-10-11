import 'package:bank_ui_study/constants/colors.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('My Profile'),
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
              'https://www.pngall.com/wp-content/uploads/5/Profile-Avatar-PNG.png',
            ),
          ),
        ),
      ),
      body: Container(
        color: kPrimaryColor,
      ),
    );
  }
}
