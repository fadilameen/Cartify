// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/cartitem.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          CartItem(
            imageString: "assets/images/nikeimpact.png",
            modelName: "Nike Impact 4V",
            price: "₹6000",
          ),
          CartItem(
            imageString: "assets/images/nikeairmax.png",
            modelName: 'Nike Impact 4v',
            price: "₹6000",
          ),
        ],
      ),
    );
  }
}
