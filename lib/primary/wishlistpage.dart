// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/wishlistcard.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Wishlist",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          WishlistCard(
            imageString: "assets/images/nikeairmax.png",
            modelName: "Nike Air Max AP ",
            price: "₹6000",
          ),
          WishlistCard(
            imageString: "assets/images/nikeimpact.png",
            modelName: "Nike Impact 4V ",
            price: "₹6000",
          )
        ],
      ),
    );
  }
}
