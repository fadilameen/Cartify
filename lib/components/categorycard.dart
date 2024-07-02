// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageString;

  const CategoryCard(
      {super.key, required this.title, required this.imageString});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imageString)),
            borderRadius: BorderRadius.circular(12),
            // border: Border.all(),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(2, 2),
                blurRadius: 6,
              ),
            ],
          ),
          width: 165,
          height: 165,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
