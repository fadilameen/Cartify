// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/cartitem.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/customrow.dart';
import 'package:furni/components/theme.dart';
import 'package:furni/payment/checkout.dart';

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
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 20,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(25, (index) {
                return Text(
                  "-",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black54), // Customize the dash color
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Container(
              height: 62,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      decoration: InputDecoration(
                        hintText: "Promo code",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(
                            color: Color(0xFF717070),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: GestureDetector(
                      child: CustomButton1(
                        fontSize: 20,
                        width: 110,
                        title: "Apply",
                        backgroundcolor: primaryColor,
                        bordercolor: primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomRow(
            lefttext: 'Price',
            righttext: "₹12,000.00",
          ),
          CustomRow(
            lefttext: 'Discount',
            righttext: "₹0",
          ),
          CustomRow(
            lefttext: 'Shipping',
            righttext: "₹100.00",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "₹12,100.00",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              top: 8,
              bottom: 8,
            ),
            child: GestureDetector(
              child: CustomButton1(
                title: "Proceed To Payment",
                backgroundcolor: primaryColor,
                bordercolor: primaryColor,
                height: 36,
                fontSize: 21,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Checkout(),
                      ));
                },
              ),
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
