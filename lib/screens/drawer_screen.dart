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
        backgroundColor: Colors.orange,
        title: const Text('My Profile'),
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                'https://static.wixstatic.com/media/9ff327_eb6a41d4fe6148b18aced5eeae35dfd0~mv2.jpg/v1/fill/w_242,h_277,al_c,q_80,usm_0.66_1.00_0.01/Erisvaldo%20Correia_editado.webp'),
          ),
        ),
      ),
      body: Container(
        color: Colors.orange,
      ),
    );
  }
}
