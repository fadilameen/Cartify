// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String imageString;
  final String brand;
  final String model;
  final String newPrice;
  final String oldPrice;
  final void Function()? onTap;

  const ProductCard(
      {super.key,
      required this.imageString,
      required this.brand,
      required this.model,
      required this.newPrice,
      required this.oldPrice,
      this.onTap});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
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
        width: 160,
        height: 190,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.imageString,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.brand,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                    Text(
                      widget.model,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          widget.newPrice,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          widget.oldPrice,
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: -4,
            //   right: -4,
            //   child: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         isFavorite = !isFavorite;
            //       });
            //     },
            //     icon: Icon(
            //       size: 22,
            //       isFavorite
            //           ? Icons.favorite_rounded
            //           : Icons.favorite_outline_rounded,
            //       color: isFavorite ? Colors.red : primaryColor,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
