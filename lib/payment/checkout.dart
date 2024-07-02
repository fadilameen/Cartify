// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/customrow.dart';
import 'package:furni/components/theme.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Address",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              // height: 62,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.circle_outlined,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Oxford,Oxford Towers",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade800,
                          ),
                        ),
                        Text(
                          "560017,Bangalore",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade800,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              child: GestureDetector(
                child: Container(
                  height: 39,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Payment",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Payment",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "*******9385",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_right_rounded,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  "Price Details",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  " (2 items)",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            CustomRow(
              lefttext: 'Price',
              righttext: "₹12,000.00",
            ),
            CustomRow(
              lefttext: 'Discount',
              righttext: "₹0",
            ),
            CustomRow(
              lefttext: 'Shipping',
              righttext: "₹100.00",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "₹12,100.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton1(
              title: "Pay Now",
              height: 36,
              backgroundcolor: primaryColor,
              bordercolor: primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
