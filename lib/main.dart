// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/login&signup/logosplash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoSplash(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: primaryColor,
          ),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.black,
            fontFamily: 'Sen',
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        scaffoldBackgroundColor: Color(0xFFF0F0EF),
        primaryColor: primaryColor,
        fontFamily: 'Sen',
      ),
    );
  }
}
