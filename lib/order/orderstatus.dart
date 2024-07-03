// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/theme.dart';

class OrderStatusPage extends StatelessWidget {
  const OrderStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order Status",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFECE9E9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(2, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/nikeairmax.png",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Nike Air Max AP",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "₹6,000",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Expected Delivery On 07-10-2023",
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Color(0xFFECE9E9),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order Id - #123ABCD456",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Divider(),
                        ],
                      ),
                      _buildOrderStatusRow("Order Placed",
                          "October 5 2023, 8:00pm", Icons.shopping_cart),
                      _buildOrderStatusRow("Shipped", "October 6 2023, 9:00am",
                          Icons.local_shipping),
                      _buildOrderStatusRow("Out For Delivery",
                          "October 7 2023, 9:00am", Icons.delivery_dining),
                      _buildOrderStatusRow("Delivered Successfully",
                          "Not Yet Delivered", Icons.check_circle),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            CustomButton1(
              height: 36,
              fontSize: 21,
              title: "Cancel Order",
              bordercolor: Colors.red,
              backgroundcolor: Colors.red,
            ),
            SizedBox(height: 8),
            CustomButton1(
              height: 36,
              fontSize: 21,
              title: "Continue Shopping",
              bordercolor: primaryColor,
              backgroundcolor: primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderStatusRow(String status, String date, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23,
            child: Icon(icon, color: Colors.teal),
            backgroundColor: Colors.white,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                date,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
