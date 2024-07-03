// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/trackordercard.dart';
import 'package:furni/components/wishlistcard.dart';
import 'package:furni/order/orderstatus.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Track Order",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          TrackOrderCard(
            imageString: "assets/images/nikeairmax.png",
            modelName: "Nike Air Max AP",
            price: "₹6000",
            orderId: "ORDER ID-123ABCD456",
            deliveryDate: "Delivery expected on 04-10-2023",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderStatusPage(),
                  ));
            },
          ),
          TrackOrderCard(
            imageString: "assets/images/nikeimpact.png",
            modelName: "Nike Impact 4V",
            price: "₹6000",
            orderId: "ORDER ID-123ABCD789",
            deliveryDate: "Delivery expected on 04-10-2023",
          ),
        ],
      ),
    );
  }
}
