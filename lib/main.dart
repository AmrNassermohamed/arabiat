import 'package:arabiat/screens/DetailPage.dart';
import 'package:arabiat/screens/LandingPage.dart';
import 'package:arabiat/utils/constants.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Episode 1',
      theme: ThemeData(primaryColor: COLOR_WHITE, accentColor: COLOR_DARK_BLUE, textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT, fontFamily: "Montserrat"),
      home: DetailPage(),
    );
  }
}
