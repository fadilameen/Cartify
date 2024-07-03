// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/components/circlebutton.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';

class ChangeAddressPage extends StatelessWidget {
  const ChangeAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Address"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
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
                    CircleButton(filled: true),
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
            SizedBox(
              height: 10,
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
                    CircleButton(filled: false),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Office",
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
            SizedBox(
              height: 10,
            ),
            CustomButton1(
              bordercolor: primaryColor,
              backgroundcolor: primaryColor,
              title: "Save",
              height: 39,
              fontSize: 18,
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
                      "Add  New Address",
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
          ],
        ),
      ),
    );
  }
}
