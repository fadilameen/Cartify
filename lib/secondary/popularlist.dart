// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/popularlistitems.dart';
import 'package:furni/components/productcard.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PopularListitems(
                item1: ProductCard(
                    imageString: "assets/images/nikeairmax.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
                item2: ProductCard(
                    imageString: "assets/images/navislimfitshirt.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
              ),
              SizedBox(
                height: 3,
              ),
              PopularListitems(
                item1: ProductCard(
                    imageString: "assets/images/blueslimfittshirt.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
                item2: ProductCard(
                    imageString: "assets/images/blackcasualtrousers.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
              ),
              SizedBox(
                height: 3,
              ),
              PopularListitems(
                item1: ProductCard(
                    imageString: "assets/images/nikeimpact.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
                item2: ProductCard(
                    imageString: "assets/images/gshock.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
              ),
              SizedBox(
                height: 3,
              ),
              PopularListitems(
                item1: ProductCard(
                    imageString: "assets/images/silverwatch.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
                item2: ProductCard(
                    imageString: "assets/images/glass2.png",
                    brand: 'Nike',
                    model: 'Jordan 23 Engineered',
                    newPrice: "₹2000",
                    oldPrice: '₹4000'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
