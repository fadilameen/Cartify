// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/primary/primary.dart';
import 'loginorsignup.dart';

class LogoSplash extends StatelessWidget {
  const LogoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Primary(),
                  ),
                );
              },
              child: SizedBox(
                height: 172,
                width: 185,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 250) / 2,
            bottom: 95,
            child: CustomButton1(
              height: 48,
              width: 250,
              title: "GET STARTED",
              titlecolor: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              textShadows: [
                Shadow(
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(2.0, 2.0),
                ),
              ],
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginorsignup(),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
