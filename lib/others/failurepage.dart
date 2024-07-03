// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/order/trackorder.dart';
import 'package:furni/payment/paymentsettings.dart';
import 'package:furni/primary/primary.dart';

class FailurePage extends StatefulWidget {
  const FailurePage({super.key});

  @override
  State<FailurePage> createState() => _FailurePageState();
}

class _FailurePageState extends State<FailurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2 - 110),
                  child: Icon(
                    color: Colors.red,
                    Icons.cancel_rounded,
                    size: 110,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ORDER FAILED!',
                  style: TextStyle(
                      color: buttonColor,
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
                          builder: (context) => PaymentSettings(),
                        ));
                  },
                  title: "RETRY",
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
