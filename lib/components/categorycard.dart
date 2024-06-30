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
          width: 165,
          height: 165,
          child: Image.asset(
            imageString,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 19,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
