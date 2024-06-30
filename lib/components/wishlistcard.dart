// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard(
      {super.key,
      required this.imageString,
      required this.modelName,
      required this.price});
  final String imageString;
  final String modelName;
  final String price;

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
        height: 136,
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
                        image: AssetImage(
                          imageString,
                        ),
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
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 12, bottom: 20),
                  child: Icon(
                    Icons.favorite_rounded,
                    color: primaryColor,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 6, right: 6, bottom: 3.5),
              child: CustomButton1(
                fontSize: 22,
                height: 32,
                title: "Add To Cart",
                backgroundcolor: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
