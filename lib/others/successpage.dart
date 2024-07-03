// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/order/trackorder.dart';
import 'package:furni/primary/primary.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2 - 110),
                  child: Icon(
                    color: Colors.white,
                    Icons.check_circle_rounded,
                    size: 110,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ORDER CONFIRMED!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2 - 200,
                ),
                CustomButton1(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackOrderPage(),
                        ));
                  },
                  title: "TRACK ORDER",
                  height: 40,
                  width: 200,
                  fontSize: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton1(
                  title: "HOME",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Primary(),
                        ));
                  },
                  titlecolor: buttonColor,
                  bordercolor: Colors.grey.shade300,
                  height: 40,
                  backgroundcolor: Colors.grey.shade300,
                  width: 200,
                  fontSize: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
