import 'package:flutter/material.dart';
import 'package:messiah_app/Screens/BackPage.dart';
import 'package:messiah_app/Screens/FrontPage.dart';

class CustomSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          BackPage(),
          FrontPage(),
        ],
      ),
    );
  }
}
