import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String lefttext;
  final String righttext;

  const CustomRow({
    super.key,
    required this.lefttext,
    required this.righttext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lefttext,
            style: TextStyle(
                color: Color(0xFF717171),
                fontSize: 21,
                fontWeight: FontWeight.bold),
          ),
          Text(
            righttext,
            style: TextStyle(
                color: Color(0xFF717171),
                fontSize: 21,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
