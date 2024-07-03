// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furni/components/notificationcard.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          NotificationsCard(
            imageString: 'assets/images/silverwatch.png',
            title: 'Flash Sale Alert - Watches:',
            description:
                'Limited Time Offer! Get up to 50% off on luxury watches. Don\'t miss out! **New**',
            onTap: () {
              // Add your onTap functionality here
            },
          ),
          NotificationsCard(
            imageString: 'assets/images/tshirts.png',
            title: 'New Arrival - T-Shirts:',
            description:
                'Explore our latest collection of trendy t-shirts. Shop now for fresh styles!',
            onTap: () {
              // Add your onTap functionality here
            },
          ),
          NotificationsCard(
            imageString: 'assets/images/glass2.png',
            title: 'Buy One, Get One Sunglasses Special:',
            description:
                'Buy one, Get one! Shop for one pair of sunglasses and get the second pair at half price. Share the style!',
            onTap: () {
              // Add your onTap functionality here
            },
          ),
        ],
      ),
    );
  }
}
