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
        primaryColor: primaryColor,
        fontFamily: 'Sen',
      ),
    );
  }
}
