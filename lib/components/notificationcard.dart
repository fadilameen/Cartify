// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';

class NotificationsCard extends StatelessWidget {
  final String imageString;
  final String title;
  final String description;

  final void Function()? onTap;

  NotificationsCard({
    required this.imageString,
    required this.title,
    required this.description,
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
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
                title: "Shop Now",
                backgroundcolor: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
