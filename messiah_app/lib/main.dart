import 'package:flutter/material.dart';
import 'package:messiah_app/Intro_sliderPage.dart';
import 'loginPage.dart';
import 'package:messiah_app/themes/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: AppTheme.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return IntroSliderPage();
  }
}
