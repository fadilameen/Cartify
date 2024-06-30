import 'package:flutter/material.dart';
import 'package:furni/components/theme.dart';

class ProductCard extends StatefulWidget {
  final String imageString;
  final String brand;
  final String model;
  final String newPrice;
  final String oldPrice;

  const ProductCard(
      {super.key,
      required this.imageString,
      required this.brand,
      required this.model,
      required this.newPrice,
      required this.oldPrice});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2, 2),
            blurRadius: 6,
          ),
        ],
      ),
      width: 160,
      height: 190,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset(
            widget.imageString,
            fit: BoxFit.cover,
            width: 160,
            height: 135,
          ),
          Positioned(
            left: 10,
            bottom: 35,
            child: Text(
              widget.brand,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 19,
            child: Text(
              widget.model,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 3,
            child: Row(
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
          ),
          Positioned(
            top: -4,
            right: -4,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                size: 22,
                isFavorite
                    ? Icons.favorite_rounded
                    : Icons.favorite_outline_rounded,
                color: isFavorite ? Colors.red : primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
