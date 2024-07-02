// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/categorycard.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  title: "Footwear",
                  imageString: "assets/images/shoes.png",
                ),
                CategoryCard(
                  title: "T-Shirts",
                  imageString: "assets/images/tshirts.png",
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  title: "Shirts",
                  imageString: "assets/images/shirts.png",
                ),
                CategoryCard(
                  title: "Watches",
                  imageString: "assets/images/watches.png",
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                  title: "Trousers",
                  imageString: "assets/images/trousers.png",
                ),
                CategoryCard(
                  title: "Accessories",
                  imageString: "assets/images/accessories.png",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
