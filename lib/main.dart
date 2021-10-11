import 'package:flutter/material.dart';

import './screens/drawer_screen.dart';
import './screens/base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank UI Study',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: Stack(
        children: const [
          DrawerScreen(),
          BaseScreem(),
        ],
      ),
    );
  }
}
