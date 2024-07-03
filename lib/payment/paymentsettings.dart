// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/circlebutton.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/customtextfield.dart';
import 'package:furni/components/paymentmethodtile.dart';
import 'package:furni/components/paymentoption.dart';
import 'package:furni/components/theme.dart';

class PaymentSettings extends StatelessWidget {
  const PaymentSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              PaymentMethodTile(
                filled: true,
                title: "UPI",
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  PaymentOption(
                    imageString: 'assets/images/phonepe.png',
                    title: "PhonePe",
                  ),
                  PaymentOption(
                    imageString: 'assets/images/gpay.png',
                    title: "Google Pay",
                  ),
                  PaymentOption(
                    imageString: 'assets/images/paytm.png',
                    title: "Paytm",
                  ),
                  PaymentOption(
                    imageString: 'assets/images/amazonpay.png',
                    title: "Amazon Pay",
                  )
                ],
              ),
              SizedBox(height: 20),
              PaymentMethodTile(
                filled: false,
                title: "Credit Card/ Debit Card",
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(15),
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
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            hintText: "Name On Card",
                            hintStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            hintText: "Card Number",
                            hintStyle: TextStyle(fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 12.0),
                            hintText: "Expiry Date (mm/yy)",
                            hintStyle: TextStyle(fontSize: 20),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomButton1(
                            backgroundcolor: primaryColor,
                            bordercolor: primaryColor,
                            title: "Save Card",
                            height: 40,
                            fontSize: 22,
                            width: 180,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              PaymentMethodTile(
                filled: false,
                title: "Net Banking",
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  PaymentOption(
                    imageString: 'assets/images/sbi.png',
                    title: "SBI",
                  ),
                  PaymentOption(
                    imageString: 'assets/images/hdfc.png',
                    title: "HDFC BANK",
                  ),
                  PaymentOption(
                    imageString: 'assets/images/axis.png',
                    title: "AXIS BANK",
                  ),
                  PaymentOption(
                    imageString: 'assets/images/icici.png',
                    title: "ICICI",
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 65,
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
                      Text(
                        "Cash On Delivery",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomButton1(
                title: "Save",
                fontSize: 24,
                height: 40,
                backgroundcolor: primaryColor,
                bordercolor: primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
