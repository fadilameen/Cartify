// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/orderhistorycard.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order History",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          OrderHistoryCard(
            imageString: "assets/images/nikeairmax.png",
            modelName: "Nike Air Max AP",
            price: "₹6000",
            orderId: "ORDER ID-123ABCD456",
            deliveryDate: "Delivered on 04-10-2023",
          ),
          OrderHistoryCard(
            imageString: "assets/images/nikeimpact.png",
            modelName: "Nike Impact 4V",
            price: "₹6000",
            orderId: "ORDER ID-123ABCD789",
            deliveryDate: "Delivered on 04-10-2023",
          ),
        ],
      ),
    );
  }
}
