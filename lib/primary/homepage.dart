// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/categorycard.dart';
import 'package:furni/components/productcard.dart';
import 'package:furni/components/sectionheader.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/primary/searchpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
            "assets/images/logosmall.png",
            height: 23,
            width: 23,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Searchpage(),
                    ));
              },
              icon: Icon(
                Icons.search_outlined,
                color: primaryColor,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SectionHeader(title: "New Arrivals"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductCard(
                    imageString: "assets/images/jordan23.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
                ProductCard(
                    imageString: "assets/images/crewneckshirt.png",
                    brand: 'Nike',
                    model: 'Crew-Neck Sweatshirt',
                    newPrice: "₹2000",
                    oldPrice: '₹4000')
              ],
            ),
            SectionHeader(title: "Category "),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryCard(
                  title: "Shoes",
                  imageString: "assets/images/shoes.png",
                ),
                CategoryCard(
                  title: "T-Shirts",
                  imageString: "assets/images/shirts.png",
                )
              ],
            ),
            SectionHeader(title: "Popular"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductCard(
                    imageString: "assets/images/nikeairmax.png",
                    brand: 'Nike',
                    model: 'Nike Air Max AP',
                    newPrice: "₹6000",
                    oldPrice: '₹7000'),
                ProductCard(
                    imageString: "assets/images/nikeimpact.png",
                    brand: 'Nike',
                    model: 'Nike Impact 4v',
                    newPrice: "₹6000",
                    oldPrice: '₹7000')
              ],
            )
          ],
        ),
      ),
    );
  }
}
