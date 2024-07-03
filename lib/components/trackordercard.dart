// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';

class TrackOrderCard extends StatelessWidget {
  final String imageString;
  final String modelName;
  final String price;
  final String orderId;
  final String deliveryDate;

  final void Function()? onTap;

  TrackOrderCard({
    required this.imageString,
    required this.modelName,
    required this.price,
    required this.orderId,
    required this.deliveryDate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFFECEAEA),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(2, 2),
              blurRadius: 6,
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(imageString),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFECEAEA),
                    ),
                    width: 74,
                    height: 74,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderId,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      modelName,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      deliveryDate,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: CustomButton1(
                onTap: onTap,
                bordercolor: primaryColor,
                fontSize: 18, // Reduced font size
                height: 32,
                title: "Track Product",
                backgroundcolor: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
