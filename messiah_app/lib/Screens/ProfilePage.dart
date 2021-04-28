import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'BackPage.dart';
import 'package:messiah_app/themes/app_color.dart';
import 'package:messiah_app/themes/app_theme.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D2740),
        title: Text("USER'S PROFILE"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(),
        ),
      ),
    );
  }
}
